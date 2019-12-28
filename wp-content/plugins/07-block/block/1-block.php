<?php

class block extends data_creator {
    var $block_data;
    private $block_obj;
    static $prevent_loop;

    function __construct( $block_id, $force_prevent_loop = array() ) {
		parent::__construct();

        $this->prevent_loop = $force_prevent_loop;
        $this->get_block_object( $block_id );
        $this->block_data = $this->create_block_structure( $block_id );
		//krm( $this->block_data);
        //krm( $this->block_data );
        //krm($this->block_data);

        // $this->create_fieldsets();
    }
    /*
     */
    function create_fieldsets( $fielset_ids_str ) {
        $fieldset_block_id_cause_forever_loop = array();
        $all_fieldsets = array();

        $fieldset_ids = $this->get_ids( $fielset_ids_str );
        foreach ( $fieldset_ids as $fieldset_id ) {
            $fieldset_obj = $this->get_by_id( $fieldset_id, $GLOBALS[ 'sst_tables' ][ 'fieldset' ] );
            $fieldset_block_ids = $this->get_ids( $fieldset_obj->block_ids );
            foreach ( $fieldset_block_ids as $fieldset_block_id ) {
                if ( in_array( $fieldset_block_id, $this->prevent_loop ) == true ) {
                    $fieldset_block_id_cause_forever_loop[] = $fieldset_block_id;
                    $this->error_log( 'the block_id of ' . $this->block_obj->id . ' has his a fieldset_id which cause forever loop . the fieldset_id ' . $fieldset_id . ' which is triggered by block has block id in fieldset definition which in block previously created and again block trigger fieldset and fieldset trigger block which is a loop forever.' );
                }
            }
            $fielset = new fieldset( $fieldset_id, $fieldset_block_id_cause_forever_loop );
            $all_fieldsets[] = $fielset->fieldset_data;
        }
        return $all_fieldsets;
    }

    function create_block_structure( $block_id, $parent_block = NULL ) {
        $block_obj = $this->get_block_object( $block_id );
        $all_blocks[ $block_id ] = $this->create_inputs( $block_obj ); //$block_id;
        //this part change unique_ids and names of fields and javascript extra handle add and remove
        if ( $this->block_obj->extra > 0 ) {
            $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_block[ 'extra' ][ 'unique_id_suffix_repeat' ] + 1;
        } else {
            $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_block[ 'extra' ][ 'unique_id_suffix_repeat' ];
        }
		$all_blocks[ $block_id ] = $this->create_show_order_data($all_blocks[ $block_id ],$block_obj,'block');
		//$all_blocks[ $block_id ] = $this->set_show_order($all_blocks[ $block_id ]);
        $all_blocks[ $block_id ][ 'extra' ][ 'max' ] = $this->block_obj->extra;
        $all_blocks[ $block_id ][ 'unique_id' ] = $all_blocks[ $block_id ][ 'unique_id' ] . str_repeat( '≪0≫', $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
        foreach ( $all_blocks[ $block_id ][ 'inputs_data' ] as $l => $input ) {
            $all_blocks[ $block_id ][ 'inputs_data' ][ $l ][ 'attrs' ][ 'name' ] = $input[ 'attrs' ][ 'name' ] . str_repeat( '[0]', $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
            $all_blocks[ $block_id ][ 'inputs_data' ][ $l ][ 'unique_id' ] = $input[ 'unique_id' ] . str_repeat( '≪0≫', $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
        }
        $this->prevent_loop[ $block_id ] = $block_id;
        $all_blocks[ $block_id ][ 'fieldsets_data' ] = $this->create_fieldsets( $this->block_obj->fieldset_ids );

        if ( !empty( $this->block_obj->block_ids ) ) {
            $child_block_ids = $this->get_ids( $this->block_obj->block_ids );
            foreach ( $child_block_ids as $k => $child_block_id ) {
                if ( in_array( $child_block_id, $this->prevent_loop ) == false ) {
                    $this->prevent_loop[ $child_block_id ] = $child_block_id;
                    $all_blocks[ $block_id ][ 'childern' ][ $k ] = $this->create_block_structure( $child_block_id, $all_blocks[ $block_id ] );
                    unset( $this->prevent_loop[ $child_block_id ] );
                } else {
                    //dbg('the block_ids of '.$block_id. ' has his parent id which cause a forever loop . The parent id which make problem :'.$child_block_id);
                    $this->error_log( 'the block_ids of ' . $block_id . ' has his parent id which cause a forever loop . The parent id which make problem :' . $child_block_id . '. So we skip creating it and continue the others' );
                    unset( $this->prevent_loop[ $child_block_id ] );
                }
            }

        }
        return $all_blocks[ $block_id ];
    }

    function get_block_object( $block_id ) {
        $block_id = $this->get_ids( $block_id, true );
        if ( $this->is_positive_number( $block_id ) ) {
            $this->block_obj = $this->get_by_id( $block_id, $GLOBALS[ 'sst_tables' ][ 'block' ] );
        } else {
            $this->error_log( 'block id is empty or is not positive int.' );
            return NULL;
        }
    }

    function create_inputs( $block_obj = NULL ) {
        if ( $block_obj == NULL ) {
            $block_obj = $this->block_obj;
        }
        $this->block_data = array();
        if ( !empty( $block_obj ) ) {
            $this->block_data[ 'id' ] = $block_obj->id;
            $this->block_data[ 'input_ids' ] = $this->get_ids( $block_obj->input_ids );
            if ( !empty( $this->block_data[ 'input_ids' ] ) ) {
				$this->block_data = $this->create_unique_id_data($this->block_data);
                foreach ( $this->block_data[ 'input_ids' ] as $k => $input_id ) {
                    $input_obj = new input( $input_id );
                    $this->block_data[ 'inputs_data' ][] = $input_obj->input_data;
                }
				$this->block_data = $this->create_access_data($this->block_data,$block_obj);
				$this->block_data = $this->create_tag_data($this->block_data,$block_obj);

            } else {
                $this->error_log( 'no input ids after processing input ids of your block.' );
                return NULL;
            }
        } else {
            $this->error_log( 'block id is empty or after processing is empty.' );
            return NULL;
        }
        return $this->block_data;
    }

    function render( $block_data = NULL ) {
        return $this->render_block( $block_data );

    }

}

define( 'INPUT_PRIORITY', 1 );
define( 'BLOCK_PRIORITY', 2 );
define( 'FIELDSET_PRIORITY', 3 );