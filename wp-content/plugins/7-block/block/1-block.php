<?php

class block extends render {
    var $block_data;
    private $block_obj;
	static $prevent_loop;
    function __construct( $block_id ) {
		$this->prevent_loop = array();
        $this->get_block_object( $block_id );
       	$this->block_data = $this->create_block_structure( $block_id );
		krm($this->block_data);
		
        // $this->create_fieldsets();
    }
    /*
     */
    function create_block_structure( $block_id, $parent_block = NULL ) {
        $block_obj = $this->get_block_object( $block_id );
        $all_blocks[ $block_id ] = $this->create_inputs( $block_obj ); //$block_id;
		//this part change unique_ids and names of fields and javascript extra handle add and remove
        if ( $this->block_obj->extra > 0 ) {
            $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_block[ 'extra' ][ 'unique_id_suffix_repeat' ] + 1;
		}else{
            $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_block[ 'extra' ][ 'unique_id_suffix_repeat' ];
		}
            $all_blocks[ $block_id ][ 'extra' ][ 'max' ] = $this->block_obj->extra;
            $all_blocks[ $block_id ][ 'unique_id' ] = $all_blocks[ $block_id ][ 'unique_id' ] . str_repeat( '≪0≫', $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
            foreach ( $all_blocks[ $block_id ][ 'inputs_data' ] as $l => $input ) {
                $all_blocks[ $block_id ][ 'inputs_data' ][ $l ][ 'attrs' ][ 'name' ] = $input[ 'attrs' ][ 'name' ] . str_repeat( '[0]', $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
                $all_blocks[ $block_id ][ 'inputs_data' ][ $l ][ 'unique_id' ] = $input[ 'unique_id' ] . str_repeat( '≪0≫', $all_blocks[ $block_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
            }
        
		$this->prevent_loop[$block_id]= $block_id ;
        if ( !empty( $this->block_obj->block_ids ) ) {
            $child_block_ids = $this->get_ids( $this->block_obj->block_ids );
            foreach ( $child_block_ids as $k => $child_block_id ) {
				if(in_array($child_block_id,$this->prevent_loop)==false){
					$this->prevent_loop[$child_block_id] = $child_block_id ;
					$all_blocks[ $block_id ][ 'childern' ][ $k ] = $this->create_block_structure( $child_block_id, $all_blocks[ $block_id ] );
					unset($this->prevent_loop[$child_block_id]);
				}else{
					//dbg('the block_ids of '.$block_id. ' has his parent id which cause a forever loop . The parent id which make problem :'.$child_block_id);
					$this->error_log( 'the block_ids of '.$block_id. ' has his parent id which cause a forever loop . The parent id which make problem :'.$child_block_id.'. So we skip creating it and continue the others' );
					unset($this->prevent_loop[$child_block_id]);
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
                $this->block_data[ 'unique_id' ] = $this->random_string( 12 );
                foreach ( $this->block_data[ 'input_ids' ] as $k => $input_id ) {
                    $input_obj = new input( $input_id );
                    $this->block_data[ 'inputs_data' ][] = $input_obj->input_data;
                }
                if ( class_exists( 'access' ) ) {
                    $access = new access( $block_obj->access_id );
                    $this->block_data[ 'access' ][ 'visbile' ] = $access->visible;
                    $this->block_data[ 'access' ][ 'editable' ] = $access->editable;
                    $this->block_data[ 'access' ][ 'addable' ] = $access->addable;
                }
                $this->block_data[ 'tag' ][ 'tag_id' ] = $block_obj->tag_id;
                $tags = $this->render_tag( $this->block_data[ 'tag' ][ 'tag_id' ] );
                $this->block_data[ 'tag' ][ 'before' ] = $tags[ 'before' ];
                $this->block_data[ 'tag' ][ 'after' ] = $tags[ 'after' ];
                //dbg( $this->block_data[ 'tag' ]);
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