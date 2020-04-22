<?php
interface attribute_input_common_generator_interface {
    function create_attr_input_common();
}
class attribute_input_common_generator extends attribute_custom_generator
implements attribute_input_common_generator_interface {
    var $input_id;
    var $input_obj;
    var $common_attr;
    var $input_type_obj;
    var $input_type_id;
    var $input_html_type;
    var $input_type;

    function __construct( string $input_id = NULL ) {
        parent::__construct();

        $this->input_id = $this->get_ids( $input_id, true );
        if ( !empty( $this->input_id ) ) {
            $this->input_obj = $this->get_by_id( $this->input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
            if ( !empty( $this->input_obj ) ) {
                $this->input_type_id = $this->get_ids( $this->input_obj->type_id, true );
                if ( !empty( $this->input_type_id ) ) {
                    $this->input_type_obj = $this->get_by_id( $this->input_type_id, $GLOBALS[ 'sst_tables' ][ 'input_type' ] );
                    if ( !empty( $this->input_type_obj ) ) {
                        if ( !empty( $this->input_type_obj->html_type )and!empty( $this->input_type_obj->type ) ) {
                            $this->input_type = $this->input_type_obj->type;
                            $this->input_html_type = $this->input_type_obj->html_type;
                            $this->common_attr = $this->create_attr_input_common();
                            return $this->common_attr;
                        } else {
                            $this->error_log( 'in type object html_type ot type is empty.' );
                            return NULL;
                        }

                    } else {
                        $this->error_log( 'type object cant be retrieved.' );
                        return NULL;
                    }
                } else {
                    $this->error_log( 'type id of input cant be empty. its empty initially or after processing.' );
                    return NULL;
                }
            } else {
                $this->error_log( 'cant retrieve input, may input id is invalid.' );
                return NULL;
            }
        } else {
			//krumo($this->input_id);
            $this->error_log( 'input id is empty.:');
            return NULL;
        }
    }



    function create_attr_input_common() {
		//krumo($this->input_obj);
        $attr_input_common_arr = array();
        if ( $this->input_html_type != 'select'
            and $this->input_html_type != 'textarea' ) {
            $this->create_multiple_attrs( array(
                'disabled' => $this->input_obj->disabled,
                'form' => $this->input_obj->form,
                'name' => $this->input_obj->name,
                'type' => $this->input_html_type,
            ) );
        } else {
            $this->create_multiple_attrs( array(
                'disabled' => $this->input_obj->disabled,
                'form' => $this->input_obj->form,
                'name' => $this->input_obj->name,
            ) );
        }
    }

}