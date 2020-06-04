<?php
interface attribute_input_validator_interface {

    function attr_alt( $attr_value );

    function attr_accept( $attr_value );

    function attr_autocomplete( $attr_value );

    function attr_autofocus( $attr_value );

    function attr_capture( $attr_value );

    function attr_checked( $attr_value );

    function attr_cols( $attr_value );

    function attr_dirname( $attr_value );

    function attr_formaction( $attr_value );

    function attr_formenctype( $attr_value );

    function attr_formmethod( $attr_value );

    function attr_formnovalidate( $attr_value );

    function attr_formtarget( $attr_value );

    function attr_height( $attr_value );

    function attr_label( $attr_value );

    function attr_list( $attr_value );

    function attr_max( $attr_value, $html_input_type );

    function attr_maxlength( $attr_value );

    function attr_min( $attr_value, $html_input_type );

    function attr_minlength( $attr_value );

    function attr_multiple( $attr_value );

    function attr_pattern( $attr_value );

    function attr_placeholder( $attr_value );

    function attr_readonly( $attr_value );

    function attr_required( $attr_value );

    function attr_rows( $attr_value );

    function attr_selected( $attr_value );

    function attr_size( $attr_value );

    function attr_step( $attr_value, $html_input_type );

    function attr_disabled( $attr_value );

    function attr_form( $attr_value );

    function attr_name( $attr_value ,$html_input_type );

    function attr_src( $attr_value );

    function attr_value( $attr_value );

    function attr_width( $attr_value );

    function attr_wrap( $attr_value );


}


class attribute_input_validator extends attribute_global_validator
implements attribute_input_validator_interface {
	function __construct(){
		parent::__construct();
	}

    //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image#alt
    function attr_alt( $attr_value ) {
        return $this->create_attribute( 'alt', $attr_value );
    }

    function attr_accept( $attr_value ) {
        $accept_ids = $this->get_ids( $attr_value );
        foreach ( $accept_ids as $accept_id ) {
            $accept_obj = $this->get_by_id( $accept_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_file_accept' ] );
            if ( $this->validate_mime_type( $accept_obj->accept ) ) {
                $mime_types[] = $accept_obj->accept;
            }
        }
        if ( !empty( $mime_types ) ) {
            $attr_value = implode( ',', $mime_types );
            return $this->create_attribute( 'accept', $attr_value );
        } else {
            return NULL;
        }

    }

    function attr_autocomplete( $attr_value ) {

        $generic = array( 'off', 'on' );
        $person = array( 'name', 'honorific-prefix', 'given-name', 'additional-name', 'family-name', 'honorific-suffix', 'nickname', 'username', 'new-password', 'current-password', 'one-time-code', 'organization-title', 'organization', 'street-address', 'address-line1', 'address-line2', 'address-line3', 'address-level4', 'address-level3', 'address-level2', 'address-level1', 'country', 'country-name', 'postal-code', 'cc-name', 'cc-given-name', 'cc-additional-name', 'cc-family-name', 'cc-number', 'cc-exp', 'cc-exp-month', 'cc-exp-year', 'cc-csc', 'cc-type', 'transaction-currency', 'transaction-amount', 'language', 'bday', 'bday-day', 'bday-month', 'bday-year', 'sex', 'url', 'photo' );
        $contact = array( 'email', 'tel', 'tel-country-code', 'tel-national', 'tel-area-code', 'tel-local', 'tel-local-prefix', 'tel-local-suffix', 'tel-extension', 'impp' );

        $opt_person = array( 'shipping', 'billing' );
        $opt_contact = array( 'home', 'work', 'mobile', 'fax', 'pager' );
        $attr_value = $this->replace_all_type_of_space_to_simple_space( strtolower( $attr_value ) );
        $attr_value_arr = explode( ' ', $attr_value );
        $attr_value_arr_count = count( $attr_value_arr );
        if ( $attr_value_arr_count > 0 and $attr_value_arr_count < 4 ) {

            foreach ( $attr_value_arr as $attr_value_el_key => $attr_value_el ) {
                /*****************GENERIC********************/
                if ( in_array( $attr_value_el, $generic ) ) {
                    $type = 'generic';
                    unset( $attr_value_arr[ $attr_value_el_key ] );
                    if ( $attr_value_arr_count == 1 ) {
                        return $this->create_attribute( 'autocomplete', $attr_value );
                    } else {
                        $this->error_log( 'autocomplete in generic on|off cant use opt and section- part!' );
                        return NULL;
                    }
                    /*****************PERSON********************/
                } elseif ( in_array( $attr_value_el, $person ) ) {
                    $type = 'person';
                    if ( $attr_value_arr_count == 1 ) {
                        return $this->create_attribute( 'autocomplete', $attr_value );
                    } else {
                        $section = false;
                        $opt = false;
                        unset( $attr_value_arr[ $attr_value_el_key ] );
                        foreach ( $attr_value_arr as $attr_value_el2_key => $attr_value_el2 ) {
                            if ( $this->starts_with( $attr_value_el2, 'section-' ) ) {
                                $section = true;
                            }
                            if ( in_array( $attr_value_el2, $opt_person ) ) {
                                $opt = true;
                            }
                        }
                        if ( $attr_value_arr_count == 2 and( $section == true or $opt == true ) ) {
                            return $this->create_attribute( 'autocomplete', $attr_value );
                        } elseif ( $attr_value_arr_count == 3 and( $section == true and $opt == true ) ) {
                            return $this->create_attribute( 'autocomplete', $attr_value );
                        } else {
                            $this->error_log( 'autocomplete invalid part for value for person!' );
                            return NULL;
                        }
                    }
                    /*****************CONTACT********************/
                } elseif ( in_array( $attr_value_el, $contact ) ) {
                    $type = 'contact';
                    if ( $attr_value_arr_count == 1 ) {
                        return $this->create_attribute( 'autocomplete', $attr_value );
                    } else {
                        $section = false;
                        $opt = false;
                        unset( $attr_value_arr[ $attr_value_el_key ] );
                        foreach ( $attr_value_arr as $attr_value_el2_key => $attr_value_el2 ) {
                            if ( $this->starts_with( $attr_value_el2, 'section-' ) ) {
                                $section = true;
                            }
                            if ( in_array( $attr_value_el2, $opt_contact ) ) {
                                $opt = true;
                            }
                        }
                        if ( $attr_value_arr_count == 2 and( $section == true or $opt == true ) ) {
                            return $this->create_attribute( 'autocomplete', $attr_value );
                        } elseif ( $attr_value_arr_count == 3 and( $section == true and $opt == true ) ) {
                            return $this->create_attribute( 'autocomplete', $attr_value );
                        } else {
                            $this->error_log( 'autocomplete invalid part for value for contact!' );
                            return NULL;
                        }
                    }
                }
            }
        } else {
            $this->error_log( 'autocomplete has at most three part not more!' );
            return NULL;
        }
    }
    //https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus
    function attr_autofocus( $attr_value ) {
        return $this->create_same_name_attribute_value( 'autofocus', $attr_value );
    }
    //http://anssiko.github.io/html-media-capture/
	//https://www.w3.org/TR/html-media-capture/
    function attr_capture( $attr_value ) {
		//camera and microphone is very outdated and deprecated
        $enumerated_values = array( 'user', 'environment', 'capture' );
        return $this->create_enumerated_attribute( 'formmethod', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus
    function attr_checked( $attr_value ) {
        return $this->create_same_name_attribute_value( 'checked', $attr_value );
    }

    function attr_cols( $attr_value ) {
        return $this->create_int_positive_attribute( 'cols', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname
    function attr_dirname( $attr_value ) {
        if ( !empty( $attr_value ) ) {
            return $this->create_attribute( 'dirname', $attr_value . '.dir' );
        } else {
            return NULL;
        }
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button#attr-formaction
    //https://html.spec.whatwg.org/dev/form-control-infrastructure.html#attr-fs-formaction
    //relative or absoulte url
    function attr_formaction( $attr_value ) {
        return $this->create_url_abosult_or_relative( 'formaction', $attr_value );
    }
    //https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement/enctype
    //https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formenctype
    function attr_formenctype( $attr_value ) {
        $enumerated_values = array( 'application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain' );
        return $this->create_enumerated_attribute( 'formenctype', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-formmethod
    function attr_formmethod( $attr_value ) {
        $enumerated_values = array( 'get', 'post', 'dialog' );
        return $this->create_enumerated_attribute( 'formmethod', $attr_value, $enumerated_values );
    }
    //
    function attr_formnovalidate( $attr_value ) {
        return $this->create_same_name_attribute_value( 'formnovalidate', $attr_value );
    }
    //
    function attr_formtarget( $attr_value ) {
		//_top is deprecated
        $enumerated_values = array( '_self', '_blank', '_parent','_top');
        return $this->create_enumerated_attribute( 'formtarget', $attr_value, $enumerated_values );
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image#height
    function attr_height( $attr_value ) {
        return $this->create_int_attribute( 'height', $attr_value );
    }

    function attr_label( $attr_value ) {
        return $this->create_attribute( 'label', $attr_value );
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#list
    function attr_list( $attr_value ) {

        return $this->attr_id_with_other_name( 'list', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/input.html#the-min-and-max-attributes
    function attr_max( $attr_value, $html_input_type ) {
        if ( $html_input_type == 'range'
            or $html_input_type == 'number' ) {
            return $this->create_numeric_attribute( 'max', $attr_value );
        } elseif ( $html_input_type == 'date' ) {
            if ( $this->check_date( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                $this->error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'datetime-local'
            or $html_input_type == 'datetime' ) {
            if ( $this->check_datetime( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                $this->error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'month' ) {
            if ( $this->check_date( $attr_value . '-01' ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                $this->error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'time' ) {
            if ( $this->check_time( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                $this->error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'week' ) {
            if ( $this->check_week( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                $this->error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } else {
            return $this->create_numeric_attribute( 'max', $attr_value );
        }
    }
    //https://developer.mozilla.org/en-US/docs/Mozilla/Tech/XUL/Attribute/maxlength
    function attr_maxlength( $attr_value ) {
        return $this->create_int_attribute( 'maxlength', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/input.html#the-min-and-max-attributes
    function attr_min( $attr_value, $html_input_type ) {
        if ( $html_input_type == 'range'
            or $html_input_type == 'number' ) {
            return $this->create_numeric_attribute( 'min', $attr_value );
        } elseif ( $html_input_type == 'date' ) {
            if ( $this->check_date( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                $this->error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'datetime-local'
            or $html_input_type == 'datetime' ) {
            if ( $this->check_datetime( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                $this->error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'month' ) {
            if ( $this->check_date( $attr_value . '-01' ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                $this->error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'time' ) {
            if ( $this->check_time( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                $this->error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'week' ) {
            if ( $this->check_week( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                $this->error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } else {
            return $this->create_numeric_attribute( 'min', $attr_value );
        }
    }
    //https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-minlength
    function attr_minlength( $attr_value ) {
        return $this->create_int_attribute( 'minlength', $attr_value );
    }

    function attr_multiple( $attr_value ) {
        return $this->create_same_name_attribute_value( 'multiple', $attr_value );
    }
    //https://html.com/attributes/input-pattern/
    function attr_pattern( $attr_value ) {
		if(empty($attr_value)){
			return NULL;
		}
        if ( $this->is_valid_pattern( $attr_value ) ) {
            return $this->create_attribute( 'pattern', $attr_value );
        } else {
            $this->error_log( 'pattern is not valid!' );

            return NULL;
        }
    }
    //https://www.w3schools.com/tags/att_placeholder.asp
    function attr_placeholder( $attr_value ) {
        return $this->create_attribute( 'placeholder', $attr_value );
    }
    //
    function attr_readonly( $attr_value ) {
        return $this->create_same_name_attribute_value( 'readonly', $attr_value );
    }
    //
    function attr_required( $attr_value ) {
        return $this->create_same_name_attribute_value( 'required', $attr_value );
    }

    function attr_rows( $attr_value ) {
        return $this->create_int_positive_attribute( 'rows', $attr_value );
    }

    function attr_selected( $attr_value ) {
        return $this->create_same_name_attribute_value( 'selected', $attr_value );
    }
    //
    function attr_size( $attr_value ) {
        return $this->create_int_attribute( 'size', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/input.html#the-step-attribute
    function attr_step( $attr_value, $html_input_type ) {
        if ( $html_input_type == 'range'
            or $html_input_type == 'number' ) {
            if ( strtolower( $attr_value ) == 'any' ) {
                return $this->create_attribute( 'step', $attr_value );
            } else {
                return $this->create_numeric_attribute( 'step', $attr_value );
            }
        } elseif ( $html_input_type == 'date'
            or $html_input_type == 'datetime-local'
            or $html_input_type == 'month'
            or $html_input_type == 'time'
            or $html_input_type == 'week'
            or $html_input_type == 'datetime' ) {
            if ( strtolower( $attr_value ) == 'any' ) {
                return $this->create_attribute( 'step', $attr_value );
            } else {
                return $this->create_int_positive_attribute( 'step', $attr_value );
            }
        } else {
            if ( strtolower( $attr_value ) == 'any' ) {
                return $this->create_attribute( 'step', $attr_value );
            } else {
                return $this->create_numeric_attribute( 'step', $attr_value );
            }
        }
    }
    //
    function attr_disabled( $attr_value ) {
        return $this->create_same_name_attribute_value( 'disabled', $attr_value );
    }
    //id of form
    function attr_form( $attr_value ) {
        return $this->attr_id_with_other_name( 'form', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#naming-form-controls:-the-name-attribute
    function attr_name( $attr_value,$html_input_type ) {
        if ( $attr_value <> 'isindex' ) {
            if ( !empty( $attr_value ) ) {
                return $this->create_attribute( 'name', $attr_value );
            } else {
				if($html_input_type !== 'form'){
					$this->error_log( "input name can't be empty.");
				}
                return NULL;
            }
        } else {
            $this->error_log( 'name isindex is reserved and cant use this input name.' );
            return NULL;
        }
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image#height
    function attr_src( $attr_value ) {
        return $this->create_url_abosult_or_relative( 'src', $attr_value );
    }

    //
    function attr_value( $attr_value ) {
		//krumo($attr_value);
        return $this->create_attribute( 'value', $attr_value );
    }

    function attr_width( $attr_value ) {
        return $this->create_int_attribute( 'width', $attr_value );
    }

    function attr_wrap( $attr_value ) {
        return $this->create_enumerated_attribute( 'wrap', $attr_value, array( 'hard', 'soft', 'off' ) );
    }
}