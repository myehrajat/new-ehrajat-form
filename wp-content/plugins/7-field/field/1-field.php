<?php

class field extends render {
    var $field_data;
    var $field_obj;

    function __construct( $field_id ) {
        $this->get_field_object( $field_id );
        $this->create_inputs();
    }

    function get_field_object( $field_id ) {
        $field_id = $this->get_ids( $field_id, true );
        if ( !empty( $field_id ) ) {
            $this->field_obj = $this->get_by_id( $field_id, $GLOBALS[ 'sst_tables' ][ 'field' ] );
        } else {
            $this->error_log( 'field id is empty or is not positive int.' );
            return NULL;
        }
    }

    function create_inputs() {
        if ( !empty( $this->field_obj ) ) {
            $input_ids = $this->get_ids( $this->field_obj->input_ids );
            if ( !empty( $input_ids ) ) {
                foreach ( $input_ids as $k => $input_id ) {
                    $input_obj = new input( $input_id );
                    $this->field_data[ 'inputs_data' ][] = $input_obj;
                    if ( class_exists( 'access' ) ) {
                        $access = new access( $this->field_obj->access_id );
                        $this->field_data[ 'access' ][ 'visbile' ] = $access->visible;
                        $this->field_data[ 'access' ][ 'editable' ] = $access->editable;
                        $this->field_data[ 'access' ][ 'addable' ] = $access->addable;
                    }
                    $this->field_data[ 'unique_id' ] = $this->random_string( 12 );
                    if ( class_exists( 'extra' ) ) {
                        if ( $this->field_obj->extra > 0 ) {
                            $this->field_data[ 'unique_id' ] = $this->field_data[ 'unique_id' ] . '≪0≫';
                            $this->field_data[ 'inputs_data' ][ $k ]->input_data[ 'unique_id' ] = $input_obj->input_data[ 'unique_id' ] . '≪0≫';
                            $this->field_data[ 'inputs_data' ][ $k ]->input_data[ 'attrs' ]['name'] = $input_obj->input_data[ 'attrs' ]['name'] . '[0]';
							//dbg($this->field_data[ 'inputs_data' ][ $k ]->input_data[ 'unique_id' ]);
                        }
                        $this->field_data[ 'extra_max' ] = $this->field_obj->extra;
                    }
                }
            } else {
                $this->error_log( 'no input ids after processing input ids of your field.' );
                return NULL;
            }
        } else {
            $this->error_log( 'field id is empty or after processing is empty.' );
            return NULL;
        }

    }

    function render() {
                        $extra = new extra( 'sst-field', $this->field_obj->extra, $this->field_data[ 'unique_id' ] );
                        $this->field_data[ 'extra_add_controller' ] = $extra->extra_add_controller;
                        $this->field_data[ 'extra_remove_controller' ] = $extra->extra_remove_controller;
        if ( $this->field_data[ 'access' ][ 'visbile' ] == 'no'
            and $_REQUEST[ 'mode' ] == 'view' ) {
            return '';
        }
        if ( $this->field_data[ 'access' ][ 'editable' ] == 'no'
            and $_REQUEST[ 'mode' ] == 'edit' ) {

            $this->field_data[ 'disabled' ] = 'disabled';
        }
        if ( $this->field_data[ 'access' ][ 'addable' ] == 'no'
            and $_REQUEST[ 'mode' ] == 'add' ) {
            return '';
        }
        //$this->field_data['inputs_data'][]
        foreach ( $this->field_data[ 'inputs_data' ] as $input ) {
            $inputs .= $input->render();
        }
        $field = $this->render_tag( $inputs, $this->field_obj->tag_id );
        if ( EXTRA_CONTROLLER_POSITION == 'before' ) {
            $field = $this->field_data[ 'extra_add_controller' ] . /*$this->field_data[ 'extra_remove_controller' ].*/ $field;
        } elseif ( EXTRA_CONTROLLER_POSITION == 'after' ) {
            $field = $field . $this->field_data[ 'extra_add_controller' ] /*$this->field_data[ 'extra_remove_controller' ].*/ ;
        } else {
            $field = $field . $this->field_data[ 'extra_add_controller' ] /*$this->field_data[ 'extra_remove_controller' ].*/ ;
        }

        $field = '<sst-field id="' . $this->field_data[ 'unique_id' ] . '">' . $field . '</sst-field>';
        //dbg($field);
        return $field;

    }

}