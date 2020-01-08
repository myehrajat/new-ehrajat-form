<?php
interface attribute_input_common_generator_interface {
    function create_attr_input_common();
}
class attribute_input_common_generator extends attribute_custom_generator
implements attribute_input_common_generator_interface {
    var $input_id;
    var $input_obj;
    var $commom_attr;
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
            $this->error_log( 'input id is empty.' );
            return NULL;
        }
    }

    function change_value_by_vals() {
        if ( isset( $GLOBALS[ 'vals' ][ $this->input_obj->name ] ) ) {
            switch ( $this->input_html_type ) {
                case "text":
                case "search":
                case "tel":
                case "url":
                case "submit":
                case "range":
                case "number":
                case "image":
                case "email":
                case "date":
                case "datetime-local":
                case "month":
                case "time":
                case "week":
                case "datetime":
                case "color":
                case "hidden":
					$this->input_obj->value = $GLOBALS[ 'vals' ][ $this->input_obj->name ];
                    break;
                case "password":
					if(strtolower(ATTRIBUTE_PASSWORD_VALUE) == 'yes' ){
						$this->input_obj->value = $GLOBALS[ 'vals' ][ $this->input_obj->name ];
					}
                    break;
                case "file":
						$this->input_obj->value = $GLOBALS[ 'vals' ][ $this->input_obj->name ];
                    break;
                case "checkbox":
                    break;
                case "radio":
                    break;
                case "select":
                    break;
                case "textarea":
                    break;
            }
        }
    }

    function create_attr_input_common() {
        $attr_input_common_arr = array();
        $this->change_value_by_vals();
        if ( $this->input_html_type != 'select'
            and $this->input_html_type != 'textarea' ) {
            if ( isset( $GLOBALS[ 'vals' ][ $this->input_obj->name ] ) ) {
                $this->input_obj->value = $GLOBALS[ 'vals' ][ $this->input_obj->name ];
            }
            $common = $this->create_multiple_attrs( array(
                'disabled' => $this->input_obj->disabled,
                'form' => $this->input_obj->form,
                'name' => $this->input_obj->name,
                'type' => $this->input_html_type,
                'value' => $this->input_obj->value,
            ) );
        } else {
            $common = $this->create_multiple_attrs( array(
                'disabled' => $this->input_obj->disabled,
                'form' => $this->input_obj->form,
                'name' => $this->input_obj->name,
            ) );
        }
        if ( !empty( $common ) ) {
            //sometimes even name attribute is not needed eg using js in the same page and accessing its value by id. however its rare but we respect it
            $attr_input_common_arr[] = $common;
        }
        if ( !empty( $attr_input_common_arr ) ) {
            return implode( ' ', $attr_input_common_arr );
        } else {
            return NULL;
        }
    }

}