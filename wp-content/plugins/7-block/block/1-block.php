<?php

class block extends render {
    var $block_data;
    private $block_obj;

    function __construct( $block_id ) {
        $this->get_block_object( $block_id );
        //$this->create_inputs();
        dbg($this->create_block( $block_id ));
        //dbg($this->bd);
        // $this->create_fieldsets();
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

    function create_block( $block_id ) {
        $this->get_block_object( $block_id );
        $bds[] = $block_id;

        if ( !empty( $this->block_obj->block_ids ) ) {
            $child_block_ids = $this->get_ids( $this->block_obj->block_ids );
            foreach ( $child_block_ids as $k => $child_block_id ) {
                $children[] = $child_block_id;
				$bds['children'][] =  $this->create_block( $child_block_id );

            }
        }else{
			
		}
		;
		return $bds;

    }

    function create_inputs() {
        if ( !empty( $this->block_obj ) ) {
            $this->block_data[ 'input_ids' ] = $this->get_ids( $this->block_obj->input_ids );
            if ( !empty( $this->block_data[ 'input_ids' ] ) ) {
                $this->block_data[ 'unique_id' ] = $this->random_string( 12 );
                if ( class_exists( 'extra' ) ) {
                    if ( $this->block_obj->extra > 0 ) {
                        $this->block_data[ 'unique_id' ] = $this->block_data[ 'unique_id' ] . '≪0≫';
                        $this->block_data[ 'extra' ][ 'max' ] = $this->block_obj->extra;
                    }
                    foreach ( $this->block_data[ 'input_ids' ] as $k => $input_id ) {
                        $input_obj = new input( $input_id );
                        $this->block_data[ 'inputs_data' ][] = $input_obj->input_data;

                        if ( $this->block_obj->extra > 0 ) {
                            $this->block_data[ 'inputs_data' ][ $k ][ 'unique_id' ] = $this->block_data[ 'inputs_data' ][ $k ][ 'unique_id' ] . '≪0≫';
                            $this->block_data[ 'inputs_data' ][ $k ][ 'attrs' ][ 'name' ] = $this->block_data[ 'inputs_data' ][ $k ][ 'attrs' ][ 'name' ] . '[0]';
                        }
                    }
                }
                if ( class_exists( 'access' ) ) {
                    $access = new access( $this->block_obj->access_id );
                    $this->block_data[ 'access' ][ 'visbile' ] = $access->visible;
                    $this->block_data[ 'access' ][ 'editable' ] = $access->editable;
                    $this->block_data[ 'access' ][ 'addable' ] = $access->addable;
                }
                $this->block_data[ 'tag' ][ 'tag_id' ] = $this->block_obj->tag_id;
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

    }

    function render( $block_data = NULL ) {

        return $this->render_block( $block_data );

    }

}