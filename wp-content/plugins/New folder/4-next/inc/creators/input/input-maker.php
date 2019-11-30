<?php

class global_attr extends attr {
    var $global_obj;
    var $global_attr;

    function __construct( $attr_html_global_id ) {
        if ( !empty( $attr_html_global_id ) ) {
            $attr_html_global_id = $this->get_ids( $attr_html_global_id, true );
            if ( !empty( $attr_html_global_id ) ) { //after trying to extract id from string eg eval code or complex string id
                $this->global_obj = $this->get_by_id( $attr_html_global_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global' ] );
                $this->global_attr = $this->create_attr_html_global();
            } else {
                $this->error_log( 'global attrs ids string after processing provid any id.' );
                $this->global_obj = NULL;
            }
        } else {
            $this->error_log( 'global attrs id provided is empty string.' );
            $this->global_obj = NULL;
            $this->input_data[ 'attrs' ] = array();
            return $this->input_data[ 'attrs' ];
        }
    }

    /**************************************************
     *version 1.0.0
     *these for styling and adding title/style/class these are styling global attribute ones which will not included in standard
     **************************************************/
    function create_attr_html_global() {
        $attr_html_global_arr = array();
        if ( $this->global_obj ) {
            $global = $this->create_multiple_attrs( array(
                'accesskey' => $this->global_obj->accesskey,
                'autocapitalize' => $this->global_obj->autocapitalize,
                'class' => $this->create_attr_html_global_classes( $this->global_obj->class_ids ), //space seperated values
                'contenteditable' => $this->global_obj->contenteditable,
                'contextmenu' => $this->global_obj->contextmenu,
                'dir' => $this->global_obj->dir,
                'draggable' => $this->global_obj->draggable,
                'dropzone' => $this->global_obj->dropzone,
                'hidden' => $this->global_obj->hidden,
                'inputmode' => $this->global_obj->inputmode,
                'id' => $this->global_obj->the_id,
                'is' => $this->global_obj->is,
                'itemid' => $this->global_obj->itemid,
                'itemprop' => $this->create_attr_html_global_itemprops( $this->global_obj->itemprop_ids ), //space seperated values
                'itemref' => $this->create_attr_html_global_itemrefs( $this->global_obj->itemref_ids ), //space seperated values
                'itemscope' => $this->global_obj->itemscope,
                'itemtype' => $this->global_obj->itemtype,
                'lang' => $this->global_obj->lang,
                'slot' => $this->global_obj->slot,
                'spellcheck' => $this->global_obj->spellcheck,
                'style' => $this->create_attr_html_global_styles( $this->global_obj->style_ids ), //; seperated values
                'tabindex' => $this->global_obj->tabindex,
                'title' => $this->global_obj->title,
                'translate' => $this->global_obj->translate,
            ) );
            if ( !empty( $global ) ) {
                $attr_html_global_arr[] = $global;
            }
            $event = $this->create_attr_html_global_events( $this->global_obj->onevent_ids );
            if ( !empty( $event ) ) {
                $attr_html_global_arr[] = $event;
            }
            $data = $this->create_attr_html_global_data( $this->global_obj->data_ids );
            if ( !empty( $data ) ) {
                $attr_html_global_arr[] = $data;
            }
            if ( !empty( $attr_html_global_arr ) ) {
                $this->global_attr = implode( ' ', $attr_html_global_arr );
                return $this->global_attr;
            } else {
                return NULL;
            }
        } else {
            $this->error_log( 'cant retrieve global input attr row.' );
            return NULL;
        }


    }
    /**************************************************
     *version 1.0.0
     *these for getting itemrefs from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_itemprops( $itemprop_ids ) {
        if ( !empty( $itemprop_ids ) ) {
            $itemprops = array();
            $itemprop_ids_arr = array();
            $itemprop_ids_arr = $this->get_ids( $itemprop_ids );
            if ( !empty( $itemprop_ids_arr ) ) {
                foreach ( $itemprop_ids_arr as $itemprop_id ) {
                    $itemprop_obj = $this->get_by_id( $itemprop_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemprop' ] );
                    if ( !empty( $itemprop_obj->itemprop ) ) {
                        $itemprops[] = htmlentities( $this->is_eval_run( $itemprop_obj->itemprop ) );
                    }
                }
                if ( !empty( $itemprops ) ) {
                    return implode( ' ', $itemprops );
                } else { //class ids is ok but all the $itemprops rows are empty.
                    return NULL;
                }
            } else { //$itemprop ids means empty eg. 1-3,-1,-2,-3

                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }
    /**************************************************
     *version 1.0.0
     *these for getting itemrefs from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_itemrefs( $itemref_ids ) {
        if ( !empty( $itemref_ids ) ) {
            $itemrefs = array();
            $itemref_ids_arr = array();
            $itemref_ids_arr = $this->get_ids( $itemref_ids );
            if ( !empty( $itemref_ids_arr ) ) {
                foreach ( $itemref_ids_arr as $itemref_id ) {
                    $itemref_obj = $this->get_by_id( $itemref_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemref' ] );
                    if ( !empty( $itemref_obj->itemref ) ) {
                        $itemrefs[] = htmlentities( $this->is_eval_run( $itemref_obj->itemref ) );
                    }
                }
                if ( !empty( $itemrefs ) ) {
                    return implode( ' ', $itemrefs );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }

    }
    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_classes( $class_ids ) {
        if ( !empty( $class_ids ) ) {
            $classes = array();
            $class_ids_arr = array();
            $class_ids_arr = $this->get_ids( $class_ids );
            if ( !empty( $class_ids_arr ) ) {
                foreach ( $class_ids_arr as $class_id ) {
                    $class_obj = $this->get_by_id( $class_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_class' ] );
                    if ( !empty( $class_obj->class ) ) {
                        $classes[] = htmlentities( $this->is_eval_run( $class_obj->class ) );
                    }
                }
                if ( !empty( $classes ) ) {
                    return implode( ' ', $classes );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }
    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_styles( $style_ids ) {
        if ( !empty( $style_ids ) ) {
            $styles = array();
            $style_ids_arr = array();
            $style_ids_arr = $this->get_ids( $style_ids );
            if ( !empty( $style_ids_arr ) ) {
                foreach ( $style_ids_arr as $style_id ) {
                    $style = NULL;
                    $style_obj = $this->get_by_id( $style_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_style' ] );
                    if ( !empty( $style_obj->css_attribute ) && !empty( $style_obj->css_value ) ) {
                        $css_attribute_result = $this->is_eval_run( $style_obj->css_attribute );
                        $style = htmlentities( $css_attribute_result ) . ':' . htmlentities( $this->is_eval_run( $style_obj->css_value ) );
                        $important_result = $this->is_eval_run( $style_obj->important );
                        if ( $important_result ) {
                            $style .= ' !important';
                        }
                    }
                    if ( $style != NULL ) {
                        $styles[] = $style;
                    }
                }
                if ( !empty( $styles ) ) {
                    return implode( ';', $styles ) . ';';
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_events( $onevent_ids ) {

        if ( !empty( $onevent_ids ) ) {
            $onevents = array();
            $onevent_ids_arr = array();
            $onevent_ids_arr = $this->get_ids( $onevent_ids );
            if ( !empty( $onevent_ids_arr ) ) {
                foreach ( $onevent_ids_arr as $onevent_id ) {
                    $onevent_obj = $this->get_by_id( $onevent_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_event' ] );
                    $onevent_result = strtolower( $this->is_eval_run( $onevent_obj->event ) );
                    if ( $this->starts_with( $onevent_result, 'on' ) && !empty( $onevent_obj->jsfunction_ids ) ) {
                        $jsfunction_ids_arr = $this->get_ids( $onevent_obj->jsfunction_ids );
                        foreach ( $jsfunction_ids_arr as $jsfunction_id ) {
                            $jsfunction = $this->create_attr_html_global_jsfunction( $jsfunction_id );
                            if ( !empty( $jsfunction ) ) {
                                $onevents[ htmlentities( $onevent_result ) ][] = $jsfunction;
                            }
                        }
                    }
                }

                if ( !empty( $onevents ) ) {
                    foreach ( $onevents as $onevent_name => $onevent_js_array ) {
                        $all_events_arr[] = $onevent_name . '="' . implode( ";", $onevent_js_array ) . '"';
                    }
                    return implode( ' ', $all_events_arr );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_jsfunction( $jsfunction_id ) {
        $jsfunction_obj = $this->get_by_id( $jsfunction_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_event_jsfunction' ] );
        if ( !empty( $jsfunction_obj->jsfunction ) ) {
            return htmlentities( $this->is_eval_run( $jsfunction_obj->jsfunction ) );
        } else {
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting data-* from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_data( $data_ids ) {
        if ( !empty( $data_ids ) ) {
            $data = array();
            $data_arr = array();
            $data_ids_arr = $this->get_ids( $data_ids );
            if ( !empty( $data_ids_arr ) ) {
                foreach ( $data_ids_arr as $single_data_id ) {
                    $single_data_obj = $this->get_by_id( $single_data_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_data' ] );
                    if ( !empty( $single_data_obj->data_attribute ) && !empty( $single_data_obj->data_value ) ) {
                        $data_attribute_result = $this->is_eval_run( $single_data_obj->data_attribute );
                        $data_value_result = $this->is_eval_run( $single_data_obj->data_value );
                        if ( $this->is_valid_custom_attr_name( $data_attribute_result ) ) {
                            $data[] = 'data-' . $data_attribute_result . '="' . htmlentities( $data_value_result ) . '"';
                        } else { //data-* is not valid name
                            return NULL;
                        }
                    }
                }
                if ( !empty( $data ) ) {
                    return implode( ' ', $data );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }
}
class common_attr extends attr {
    var $input_id;
    var $input_obj;
    var $commom_attr;
    var $input_type_obj;

    var $input_type_id;
    var $input_html_type;
    var $input_type;

    function __construct( $input_id = NULL ) {
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

    function create_attr_input_common() {
        $attr_input_common_arr = array();
        if ( $this->input_html_type != 'select'
            and $this->input_html_type != 'textarea' ) {
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
class specific_attr extends attr {
    var $input_html_type;
    var $attr_input_specific_id;
    var $specific_obj;
    var $specific_attr;
    var $text;
    var $option_data;

    function __construct( $attr_input_specific_id = NULL, $input_html_type = NULL ) {
        $this->input_html_type = $input_html_type;
        $this->attr_input_specific_id = $this->get_ids( $attr_input_specific_id, true );
        if ( !empty( $this->attr_input_specific_id ) ) {
            if ( !empty( $this->input_html_type ) ) {
                switch ( $this->input_html_type ) {
                    case "text":
                    case "search":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] );
                        break;
                    case "tel":
                    case "url":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_tel_url' ] );
                        break;
                    case "submit":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_submit' ] );
                        break;
                    case "range":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_range' ] );
                        break;
                    case "password":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_password' ] );
                        break;
                    case "number":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_number' ] );
                        break;
                    case "image":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_image' ] );
                        break;
                    case "file":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_file' ] );
                        break;
                    case "email":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_email' ] );
                        break;
                    case "date":
                    case "datetime-local":
                    case "month":
                    case "time":
                    case "week":
                    case "datetime":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_date_time_related' ] );
                        break;
                    case "color":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_color' ] );
                        break;
                    case "checkbox":
                    case "radio":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_checkbox_radio' ] );
                        break;
                    case "select":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select' ] );
                        break;
                    case "textarea":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_textarea' ] );
                        break;
                    default:
                        $this->specific_obj = NULL;
                        $this->error_log( 'input_type arguments is invalid.' );
                        return NULL;
                        break;
                }
                if ( !empty( $this->specific_obj ) ) {
                    $this->create_attr_input_specific();
                } else {
                    $this->specific_obj = NULL;
                    $this->error_log( 'cant find specific id in the table ' . $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] . '.' );
                    return NULL;
                }
            } else {
                $this->specific_obj = NULL;
                $this->error_log( 'input_type arguments the second argument is empty.' );
                return NULL;
            }
        } else {
            $this->specific_obj = NULL;
            $this->error_log( 'input_specific_id arguments the first argument is empty.' );
            return NULL;
        }
    }

    function create_attr_input_specific() {
        if ( !empty( $this->attr_input_specific_id ) ) {
            $attr_input_specific_arr = array();
            switch ( $this->input_html_type ) {
                case "text":
                case "search":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'dirname' => $this->specific_obj->dirname,
                        'list' => $this->specific_obj->list,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "tel":
                case "url":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "submit":
                    $specific = $this->create_multiple_attrs( array(
                        'autofocus' => $this->specific_obj->autofocus,
                        'formaction' => $this->specific_obj->formaction,
                        'formenctype' => $this->specific_obj->formenctype,
                        'formmethod' => $this->specific_obj->formmethod,
                        'formnovalidate' => $this->specific_obj->formnovalidate,
                        'formtarget' => $this->specific_obj->formtarget,
                    ), $this->input_html_type );
                    break;
                case "range":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'max' => $this->specific_obj->max,
                        'min' => $this->specific_obj->min,
                        'multiple' => $this->specific_obj->multiple,
                        'step' => $this->specific_obj->step,
                    ), $this->input_html_type );
                    $this->list_elements = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "password":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    break;
                case "number":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'max' => $this->specific_obj->max,
                        'min' => $this->specific_obj->min,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'step' => $this->specific_obj->step,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "image":
                    $specific = $this->create_multiple_attrs( array(
                        'alt' => $this->specific_obj->alt,
                        'autofocus' => $this->specific_obj->autofocus,
                        'formaction' => $this->specific_obj->formaction,
                        'formenctype' => $this->specific_obj->formenctype,
                        'formmethod' => $this->specific_obj->formmethod,
                        'formnovalidate' => $this->specific_obj->formnovalidate,
                        'formtarget' => $this->specific_obj->formtarget,
                        'height' => $this->specific_obj->height,
                        'src' => $this->specific_obj->src,
                        'width' => $this->specific_obj->width,
                    ), $this->input_html_type );
                    break;
                case "file":
                    $specific = $this->create_multiple_attrs( array(
                        //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/file#Unique_file_type_specifiers
                        'accept' => $this->specific_obj->accept_ids,
                        'autofocus' => $this->specific_obj->autofocus,
                        'capture' => $this->specific_obj->capture,
                        'multiple' => $this->specific_obj->multiple,
                        'required' => $this->specific_obj->required,
                    ), $this->input_html_type );
                    break;
                case "email":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'multiple' => $this->specific_obj->multiple,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "date":
                case "datetime-local":
                case "month":
                case "time":
                case "week":
                case "datetime":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'max' => $this->specific_obj->max,
                        'min' => $this->specific_obj->min,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'step' => $this->specific_obj->step,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "color":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "checkbox":
                case "radio":
                    $specific = $this->create_multiple_attrs( array(
                        'autofocus' => $this->specific_obj->autofocus,
                        'checked' => $this->specific_obj->checked,
                        'required' => $this->specific_obj->required,
                    ), $this->input_html_type );
                    break;
                case "select":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'multiple' => $this->specific_obj->multiple,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    $this->unselected_text = $this->specific_obj->unselected_text;
                    $this->create_all_options( $this->specific_obj );
                    $this->show_first = $this->specific_obj->show_first;
                    break;
                case "textarea":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'cols' => $this->specific_obj->cols,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'rows' => $this->specific_obj->rows,
                        'wrap' => $this->specific_obj->wrap,
                    ), $this->input_html_type );
                    $this->text = $this->specific_obj->text;
                    break;
            }
        } else {
            $this->error_log( 'specific attrs id provided is empty string.' );
            return NULL;
        }
    }

    function create_all_options( $specific_obj ) {
        $original_input_data = $this->input_data;
        if ( !empty( $specific_obj->optgroup_ids ) ) {
            $this->create_optgroups( $this->is_eval_run( $specific_obj->optgroup_ids ) );
        }
        if ( !empty( $specific_obj->option_ids ) ) {
            $this->option_data = $this->get_list_values( $specific_obj->option_ids );
        }
        $this->input_data = $original_input_data;

    }
    var $optgroup_data;

    function create_optgroups( $optgroup_ids ) {
        $optgroup_ids = $this->get_ids( $optgroup_ids );
        foreach ( $optgroup_ids as $i => $optgroup_id ) {
            $optgroup_obj = $this->get_by_id( $optgroup_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select_optgroup' ] );
            if ( $optgroup_obj ) {
                $optgroup_global_attr_obj = new global_attr( $this->is_eval_run( $optgroup_obj->attr_html_global_id ) );
                $this->input_data = array();
                $optgroup_attrs[] = $this->create_attribute( 'label', $optgroup_obj->label );
                $optgroup_data[ $i ][ 'attrs' ] = array_merge( $optgroup_global_attr_obj->input_data[ 'attrs' ], $this->input_data[ 'attrs' ] );
                $optgroup_data[ $i ][ 'options' ] = $this->get_list_values( $optgroup_obj->option_ids );
            } else {
                $this->error_log( 'optgroup id provided can not find in optgroup table' );
            }
        }
        $this->optgroup_data = $optgroup_data;
    }


    function get_list_values( $list_ids ) {
        if ( $this->input_html_type != 'select' ) {
            $original_input_data = $this->input_data;
        }
        $list_ids = $this->get_ids( $list_ids );
        $i = 0;
        if ( !empty( $list_ids ) ) {
            foreach ( $list_ids as $list_id ) {
                $this->input_data = array();
                $opt_attrs = array( 'specific' => array(), 'global' => array() );
                if ( $this->input_html_type == 'select' ) {
                    $list_obj = $this->get_by_id( $list_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select_options' ] );
                    $specific_attr = $this->create_multiple_attrs( array(
                        'disabled' => $list_obj->disabled,
                        'selected' => $list_obj->selected,
                    ), 'option' );
                } else {
                    $list_obj = $this->get_by_id( $list_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_attr_list' ] );
                    $specific_attr = $this->create_multiple_attrs( array(
                        'disabled' => $list_obj->disabled,
                    ), 'option' );
                }
                if ( $this->input_data[ 'attrs' ] == NULL ) {
                    $this->input_data[ 'attrs' ] = array();
                }
                $opt_attrs[ 'specific' ] = $this->input_data[ 'attrs' ];
                if ( !empty( $list_obj->attr_html_global_id ) ) {
                    $global_obj = new global_attr( $this->is_eval_run( $list_obj->attr_html_global_id ) );
                    if ( $this->input_data[ 'attrs' ] == NULL ) {
                        $this->input_data[ 'attrs' ] = array();
                    }

                    $opt_attrs[ 'global' ] = $global_obj->input_data[ 'attrs' ];
                }
                if ( in_array( $list_obj->source_type, array( 'json', 'query', 'value' ) ) ) {
                    switch ( $list_obj->source_type ) {
                        case 'value':

                            $val = $this->is_eval_run( $list_obj->value );
                            if ( $val ) {
                                if ( $this->input_html_type == 'select' ) {
                                    $this->input_data = array();
                                    $this->create_attribute( 'value', $val );
                                    $this->create_attribute( 'label', $this->is_eval_run( $list_obj->label ) );
                                    $options[ $i ][ 'text' ] = $this->is_eval_run( $list_obj->text );

                                } else {
                                    $this->create_attribute( 'value', $val );
                                    $this->create_attribute( 'label', $this->is_eval_run( $list_obj->label ) );

                                }
                                $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                $i++;
                            } else {
                                $this->error_log( 'list | option VALUE is empty.' );
                            }
                            break;
                        case 'query':
                            global $wpdb;
                            $results = $wpdb->get_results( $list_obj->query );
                            if ( !empty( $results )and!empty( $list_obj->query_value_function ) ) {
                                if ( $this->input_html_type == 'select' ) {

                                    foreach ( $results as $result ) {
                                        $this->input_data = array();
                                        $this->create_attribute( 'value', $this->run_eval( $list_obj->query_value_function, $result ) );
                                        $this->create_attribute( 'label', $this->run_eval( $list_obj->query_label_function, $result ) );
                                        $options[ $i ][ 'text' ] = $this->run_eval( $list_obj->query_text_function, $result );
                                        $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                        $i++;
                                    }
                                } else {
                                    foreach ( $results as $result ) {
                                        $this->input_data = array();
                                        $this->create_attribute( 'value', $this->run_eval( $list_obj->query_value_function, $result ) );
                                        $this->create_attribute( 'label', $this->run_eval( $list_obj->query_label_function, $result ) );
                                        $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                        $i++;
                                    }
                                }

                            } else {
                                $this->error_log( 'list | option values as query return nothing or may query_value_function is empty.' );
                            }
                            break;
                        case 'json':
                            $json = json_decode( @ file_get_contents( $list_obj->json_url ) );
                            if ( $json ) {
                                $array_of_lists_labels = array();
                                $array_of_lists_texts = array();
                                $array_of_lists_values = $this->looper( $json, $list_obj->json_value_pointer );
                                if ( !empty( $array_of_lists_values ) ) {
                                    $array_of_lists_labels = $this->looper( $json, $list_obj->json_label_pointer );
                                    if ( $this->input_html_type == 'select' ) {
                                        $array_of_lists_texts = $this->looper( $json, $list_obj->json_text_pointer );
                                        foreach ( $array_of_lists_values as $k => $array_of_lists_value ) {
                                            $array_of_lists[ $k ][ 'value' ] = $array_of_lists_value;
                                            $array_of_lists[ $k ][ 'label' ] = $array_of_lists_labels[ $k ];
                                            $array_of_lists[ $k ][ 'text' ] = $array_of_lists_texts[ $k ];
                                        }
                                        foreach ( $array_of_lists as $array_of_list ) {
                                            $this->input_data = array();
                                            $this->create_attribute( 'value', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'value' ] . ';', $json ) );
                                            $this->create_attribute( 'label', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'label' ] . ';', $json ) );
                                            $options[ $i ][ 'text' ] = $this->run_eval( 'return $eval_var->' . $array_of_list[ 'text' ] . ';', $json );
                                            $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                            $i++;
                                        }
                                    } else {
                                        foreach ( $array_of_lists_values as $k => $array_of_lists_value ) {
                                            $array_of_lists[ $k ][ 'value' ] = $array_of_lists_value;
                                            $array_of_lists[ $k ][ 'label' ] = $array_of_lists_labels[ $k ];
                                        }
                                        foreach ( $array_of_lists as $array_of_list ) {
                                            $this->create_attribute( 'value', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'value' ] . ';', $json ) );
                                            $this->create_attribute( 'label', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'label' ] . ';', $json ) );
                                            $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                            $i++;
                                        }

                                    }
                                } else {
                                    $this->error_log( 'list values as json_value_pointer return nothing.' );
                                    //return false;
                                }
                            } else {
                                $this->error_log( 'json url provided is not accessible or cant be parsed as json may  malformatted.' );
                                //return false;
                            }
                            break;
                        default:
                            $this->error_log( 'mistyped source_type' );
                            //return false;
                            break;
                    }
                } else {
                    $this->error_log( 'list provided should only be query or json or value in source_type.' );
                    //return false;
                }
            }
            if ( $this->input_html_type != 'select' ) {
                $this->input_data = $original_input_data;
            }
            //return $all_attrs;
            return $options;

        } else {
            //list ids is empty;
            return NULL;
        }
    }

    /*****
    	
    	this is used for json decoded iritatror pointer
    	we dont check the correctness todo this but its hard and im lazy
    ******/
    function looper( $json, $json_pointer ) {
        // echo debug_backtrace()[ 1 ][ 'function' ];
        //save all final data in $po without any $i
        static $po;
        if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
            $po = array();
        }
        $strlen = strlen( $json_pointer );
        //this function is recursive it call himself untill finding occur $i become false 
        $occur = strpos( $json_pointer, '$i' );
        /** yet there is $i so loop **/
        if ( $occur !== false ) {
            //remove arry signs to get obj name
            $obj_name = substr( $json_pointer, 0, $occur - 1 );
            // check is obj name yet array according to php limit which will not allow to use array sing in var and get val or count so we extract its num to use later so use eval to persaud php take it account
            $count = $this->run_eval( 'return count($eval_var->' . $obj_name . ');', $json );
            //create possible vars by counted
            for ( $x = 0; $x < $count; $x++ ) {
                $new_pointer = $this->str_replace_first( '$i', $x, $json_pointer );
                $this->looper( $json, $new_pointer );
            }
        } else {
            $po[] = $json_pointer;
        }
        return $po;
    }
}
class custom_attr extends attr {
    function __construct( $custom_attr_ids = NULL ) {
        $custom_attr_ids_arr = $this->get_ids( $custom_attr_ids );
        if ( !empty( $custom_attr_ids_arr ) ) {
            foreach ( $custom_attr_ids_arr as $custom_id ) {
                $custom_obj = $this->get_by_id( $custom_id, $GLOBALS[ 'sst_tables' ][ 'attr_custom' ] );
                if ( !empty( $custom_obj ) ) {
                    $custom_attr_arr[ $custom_obj->attr_name ] = $custom_obj->attr_value;
                } else {
                    $this->error_log( 'custom attr object cant retrieve.' );
                }
            }
            $this->create_multiple_attrs( $custom_attr_arr );
        } else {
            $this->input_data[ 'attrs' ] = array();
            return $this->input_data[ 'attrs' ];
        }

    }
}
class render extends attr {
    #todo : validate html tags
    function create_tag_data( $tag_id ) {
        $tag_id = $this->get_ids( $tag_id, true );
        if ( !empty( $tag_id ) ) {
            $tag_obj = $this->get_by_id( $tag_id, $GLOBALS[ 'sst_tables' ][ 'tags' ] );
            if ( !empty( $tag_obj ) ) {
                return array( 'before' => $tag_obj->tag_before, 'after' => $tag_obj->tag_after );
            }
        }
    }

    function render_tag( $before, $element, $after ) {
        $before = str_replace( '{{id}}', $this->input_data[ 'attrs' ][ 'id' ], $before );
        $after = str_replace( '{{id}}', $this->input_data[ 'attrs' ][ 'id' ], $after );
        return $before . $element . $after;
    }

    function render_datalist() {
        if ( !empty( $this->input_data[ 'option_data' ] ) ) {
            if ( empty( $this->input_data[ 'attrs' ][ 'list' ] ) ) {
                $this->input_data[ 'attrs' ][ 'list' ] = 'random_id_' . $this->random_string();
            }
            $datalist = '<datalist id="' . $this->input_data[ 'attrs' ][ 'list' ] . '">';
            foreach ( $this->input_data[ 'option_data' ] as $option ) {
                $datalist .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>';
            }
            $datalist .= '</datalist>';
            return $datalist;
        }
    }

    function render_select_list() {
        if ( empty( $this->input_data[ 'multiple' ] )and!empty( $this->input_data[ 'unselected_text' ] )and $this->input_data[ 'size' ] <= 1 ) {
            $select_list .= '<option disabled="disabled" label="' . $this->input_data[ 'unselected_text' ] . '">' . $this->input_data[ 'unselected_text' ] . '</option>';
        }
        if ( $this->input_data[ 'show_first' ] == 'option' ) {
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
        } elseif ( $this->input_data[ 'show_first' ] == 'optgroup' ) {
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
        } else {
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
        }
        return $select_list;
    }

    function render_optgrops( $optgrops ) {
        if ( !empty( $optgrops ) ) {
            foreach ( $optgrops as $optgroup ) {
                $select_list .= '<optgroup' . $this->render_attrs( $optgroup[ 'attrs' ] ) . '>';
                $select_list .= $this->render_options( $optgroup[ 'options' ] );
                $select_list .= '</optgroup>';
            }
        }
        return $select_list;
    }

    function render_options( $options_data ) {
        if ( !empty( $options_data ) ) {
            foreach ( $options_data as $option ) {
                $options .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>' . $option[ 'text' ] . '</option>';
            }
            return $options;
        }
    }
}
class input extends render {
    var $input_type;
    var $input_html_type;

    function __construct( $input_id = NULL ) {

        $input_id = $this->get_ids( $input_id, true );
        if ( !empty( $input_id ) ) {

            $input_obj = $this->get_by_id( $input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
            if ( !empty( $input_obj ) ) {

                $all_attr = array();
                $common_attr_obj = new common_attr( $input_id );
                $input_type_id = $input_obj->type_id;
                $this->input_type = $common_attr_obj->input_type;
                $this->input_html_type = $common_attr_obj->input_html_type;
                $this->input_data[ 'input_type' ] = $common_attr_obj->input_type;
                $this->input_data[ 'input_html_type' ] = $common_attr_obj->input_html_type;
                $global_attr_obj = new global_attr( $this->get_ids( $input_obj->attr_html_global_id, true ) );

                if ( $this->input_html_type !== 'hidden' ) {
                    $specific_id = $this->get_ids( $input_obj->attr_input_specific_id, true );
                    if ( !empty( $specific_id ) ) {
                        $specific_attr_obj = new specific_attr( $specific_id, $this->input_html_type );
                        if ( !empty( $specific_attr_obj ) ) {
                            /***********
                            following input can use list
                            /text,search,tel,url,range,number,email,date,datetime-local,month,time,week,datetime,color,select
                            **************/
                            $this->input_data[ 'option_data' ] = $specific_attr_obj->option_data;
                            $this->input_data[ 'optgroup_data' ] = $specific_attr_obj->optgroup_data;
                            $this->input_data[ 'unselected_text' ] = $specific_attr_obj->unselected_text;
                            $this->input_data[ 'text' ] = $specific_attr_obj->text;
                            $this->input_data[ 'show_first' ] = $specific_attr_obj->show_first;
                        } else {
                            $this->error_log( 'input specific id is incorrect.' );
                            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
                            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
                            return NULL;
                        }
                    } else {
                        $this->error_log( 'input specific id is empty.' );
                        return NULL;
                    }
                } else {
                    $specific_attr_obj->input_data[ 'attrs' ] = array();
                }
                $custom_attr_obj = new custom_attr( $input_obj->attr_custom_ids );
                $this->input_data[ 'attrs' ] = array_merge(
                    $global_attr_obj->input_data[ 'attrs' ],
                    $common_attr_obj->input_data[ 'attrs' ],
                    $custom_attr_obj->input_data[ 'attrs' ],
                    $specific_attr_obj->input_data[ 'attrs' ]
                );
                $this->input_data[ 'tag' ] = $this->create_tag_data( $input_obj->tag_id );
            } else {
                $this->error_log( 'input object cant retrieve.' );
                return NULL;
            }
        } else {
            $this->error_log( 'input id is empty or after processing is empty.' );
            return NULL;
        }
    }

    function render() {

        switch ( $this->input_data[ 'input_html_type' ] ) {

            case "hidden":
                $this->input = '<input' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>';
                break;
            case "submit":
            case "password":
            case "image":
            case "file":
            case "checkbox":
            case "radio":
                $this->input = '<input' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>';
                break;
            case "text":
            case "search":
            case "tel":
            case "url":
            case "range":
            case "number":
            case "email":
            case "date":
            case "datetime-local":
            case "month":
            case "time":
            case "week":
            case "datetime":
            case "color":
                $datalist = $this->render_datalist();
                $this->input = '<input' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>' . $this->input_data[ 'tag' ][ 'after' ] . $datalist;
                break;
            case "select":
                $select_list = $this->render_select_list();
                $this->input = '<select' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>' . $select_list . '</select>';
                break;
            case "textarea":
                $this->input = '<textarea' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>';
                $this->input .= $this->text;
                $this->input .= '</textarea>';
                break;
        }
        $this->input = $this->render_tag( $this->input_data[ 'tag' ][ 'before' ], $this->input, $this->input_data[ 'tag' ][ 'after' ] );
        return $this->input;

    }

    function render_attrs( array $attrs ) {
        foreach ( $attrs as $attr_name => $attr_value ) {
            $all_attrs .= ' ' . $attr_name . '="' . $attr_value . '"';
        }
        return $all_attrs;
    }

}

class field {
    protected $common;
    var $field_obj;
	var $tag_obj;
    var $inputs_data;
    var $inputs;
    var $field;
	var $user_access_obj;
	var $show_or_hide;
	var $enable_or_disable;
	function __construct( $field_id ) {
        $this->common = new common();
		$this->get_field_object($field_id);
		$this->restrict_access();
		$this->create_inputs();
    }
	function get_field_object($field_id){
        $field_id = $this->common->get_ids( $field_id, true );
		if ( !empty( $field_id ) ) {
            $this->field_obj = $this->common->get_by_id( $field_id, $GLOBALS[ 'sst_tables' ][ 'field' ] );
        } else {
            $this->error_log( 'field id is empty or is now positive int.' );
            return NULL;
        }
	}
    function create_inputs() {
            if ( !empty( $this->field_obj ) ) {
                $input_ids = $this->common->get_ids( $this->field_obj->input_ids);
                if ( !empty( $input_ids ) ) {
                    foreach ( $input_ids as $input_id ) {
						$input_obj = new input( $input_id );
						if($this->enable_or_disable == 'disable'){
							$input_obj->input_data['attrs']['disabled'] = 'disabled';
						}
                        $this->inputs_data[] = $input_obj;
                        $this->inputs[] = $input_obj->render();
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
       $tag_id =  $this->common->get_ids( $this->field_obj->tag_id,true );
		if(!empty($tag_id)){
            $this->tag_obj = $this->common->get_by_id( $tag_id , $GLOBALS[ 'sst_tables' ][ 'tags' ] );
			if(!empty( $this->tag_obj )){
				if($this->show_or_hide == 'show'){

					$this->field = $this->tag_obj->tag_before.implode('',$this->inputs).$this->tag_obj->tag_after;
					return $this->field;
				}
			}else{
            $this->error_log( 'tag id provided for field can retireve object.' );
            return NULL;
			}
		}else{
            return NULL;
		}
    }
	function restrict_access(){
       $user_access_id =  $this->common->get_ids( $this->field_obj->user_access_id,true );
		if(!empty($user_access_id)){
            $this->user_access_obj = $this->common->get_by_id( $user_access_id , $GLOBALS[ 'sst_tables' ][ 'user_access' ] );
			if(!empty($this->user_access_obj)){
				$default_show_or_hide = strtolower($this->user_access_obj->default_show_or_hide);
				$except_show_or_hide =  $this->common->get_ids( $this->user_access_obj->except_show_or_hide );
				if($default_show_or_hide!='show' and $default_show_or_hide!='hide'){
					//dbg('gggggggggggggg');
					$default_show_or_hide = DEFAULT_SHOW_OR_HIDE;
				}
				//dbg($default_show_or_hide);
				//dbg($except_show_or_hide);
				//dbg($this->common->user_id);
				switch($default_show_or_hide){
					case 'show':
						if(in_array($this->common->user_id,$except_show_or_hide)){
							$this->show_or_hide = 'hide';
						}else{
							$this->show_or_hide = 'show';
						}
						break;
					case 'hide':
						if(in_array($this->common->user_id,$except_show_or_hide)){
							$this->show_or_hide = 'show';
						}else{
							$this->show_or_hide = 'hide';
						}
						break;
					default:
						$this->error_log( 'default_show_or_hide is incorect even DEFAULT_SHOW_OR_HIDE in config is incorect.' );
						$this->show_or_hide = 'hide';
						break;
				}
				$default_enable_or_disable = strtolower($this->user_access_obj->default_enable_or_disable);
				$except_enable_or_disable =  $this->common->get_ids( $this->user_access_obj->except_enable_or_disable);
				if($default_enable_or_disable!='enable' and $default_enable_or_disable!='disable'){
					$default_show_or_hide = DEFAULT_ENABLE_OR_DISABLE;
				}
				switch($default_enable_or_disable){
					case 'enable':
						if(in_array($this->common->user_id,$except_enable_or_disable)){
							$this->enable_or_disable = 'disable';
						}else{
							$this->enable_or_disable = 'enable';
						}
						break;
					case 'disable':
						if(in_array($this->common->user_id,$except_enable_or_disable)){
							$this->enable_or_disable = 'enable';
						}else{
							$this->enable_or_disable = 'disable';
						}
						break;
					default:
						$this->error_log( 'default_enable_or_disable is incorect even DEFAULT_ENABLE_OR_DISABLE in config is incorect.' );
						$this->enable_or_disable = 'hide';
						break;
				}
			}else{
				$this->error_log( 'user_access_id cant fitnd its obj.' );
				return NULL;
			}
		}else{
            $this->error_log( 'user_access_id after proceesing return enpty id.' );
            return NULL;
		}
		
	}
}



/*
$f = new field( 1 );
//dbg($f );
//die;
echo $f->render();
die;
*/