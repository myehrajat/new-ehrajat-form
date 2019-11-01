<?php

class attr_validation extends common {

    /**
     Class Description:this class is for creating single attr and validate its value and name
     **/
    function create_attr( $attr_name, $attr_value ) {
        if ( !empty( $attr_value ) ) {
            return $attr_name . '="' . htmlentities( $attr_value ) . '"';
        } else {
            return NULL;
        }
    }
    /**************************************************
     *version 1.0.0
     *source:https://html.spec.whatwg.org/multipage/syntax.html#attributes-2
     *desc:Attributes have a name and a value. Attribute names must consist of one or more characters other than controls, U+0020 SPACE, U+0022 ("), U+0027 ('), U+003E (>), U+002F (/), U+003D (=), and noncharacters. In the HTML syntax, attribute names, even those for foreign elements, may be written with any mix of ASCII lower and ASCII upper alphas.
     		following characters are not allowed:
    	all char in brace { \"'>/=	}
    	controls:https://infra.spec.whatwg.org/#control
    	controls:https://infra.spec.whatwg.org/#control
    	noncharacter:https://infra.spec.whatwg.org/#noncharacter
    test by:https://www.regextester.com/103704

     **************************************************/
    function is_valid_custom_attr_name( $attr ) {
        if ( !empty( $attr ) ) {
            //? negate the regular expression attr
            $attr = preg_replace( "~/[?^ \"'>/=	]/g~", '', $this->replace_all_type_of_space_to_simple_space( $attr ), -1, $count );
            if ( $count > 0 ) {
                sst_error_log( 'attribute provided : ' . $attr . ' is not valid. it must be valid by sst_valid_for_attr_naming and not match [?^ \"\'>/=		]/g' );
                $return = false;
            } else {
                $return = true;
            }
        } else {
            $return = false;

        }

        return $return;
    }
    /**************************************************
     *version 1.0.0
     *source:https://html.spec.whatwg.org/dev/interaction.html#the-accesskey-attribute

     **************************************************/
    function attr_accesskey( $attr_value ) {
        $attr_value = $this->replace_all_type_of_space_to_simple_space( $attr_value );
        $attr_values_arr = explode( ' ', $attr_value );
        foreach ( $attr_values_arr as $single_attr_value ) {
            $len = strlen( $single_attr_value );
            if ( $len > 1 ) {
                sst_error_log( 'accesskey value must be only one or more character one by one space seperated you have provided a string having more than one character.' );
                return NULL;
            } elseif ( $len < 1 ) {
                sst_error_log( 'accesskey value must be only one character you have provided zero value character.' );
                return NULL;
            } else {
                sst_error_log( 'accesskey value cant get value length. unkown error!' );
                return NULL;
            }
        }

        return $this->create_attribute( 'accesskey', $attr_value );
    }
    //https://html.spec.whatwg.org/dev/interaction.html#autocapitalization
    /*Values:off or none(No capitalize letter) | on or sentences(First letter of sentence) | words(First letter of words) | characters(ALL characters uppercase)*/

    function attr_autocapitalize( $attr_value ) {
        $enumerated_values = array( 'none', 'off', 'on', 'sentences', 'words', 'characters' );
        return $this->create_enumerated_attribute( 'autocapitalize', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/dev/interaction.html#contenteditable
    function attr_contenteditable( $attr_value ) {
        $enumerated_values = array( 'true', 'false' );
        return $this->create_enumerated_attribute( 'contenteditable', $attr_value, $enumerated_values );
    }
    //Obsolete
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/contextmenu
    function attr_contextmenu( $attr_value ) {
        return $this->attr_id_with_other_name( 'contextmenu', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/dom.html#the-dir-attribute
    function attr_dir( $attr_value ) {
        $enumerated_values = array( 'ltr', 'rtl', 'auto' );
        return $this->create_enumerated_attribute( 'dir', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/dev/dnd.html
    //https://www.whatwg.org/specs/web-apps/current-work/multipage/dnd.html
    function attr_draggable( $attr_value ) {
        $enumerated_values = array( 'true', 'false' );
        return $this->create_enumerated_attribute( 'draggable', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/dev/dnd.html
    //https://www.whatwg.org/specs/web-apps/current-work/multipage/dnd.html
    function attr_dropzone( $attr_value ) {
        $enumerated_values = array( 'copy', 'move', 'link' );
        return $this->create_enumerated_attribute( 'dropzone', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/multipage/interaction.html#the-hidden-attribute
    function attr_hidden( $attr_value ) {
        return $this->create_same_name_attribute_value( 'hidden', $attr_value );
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id
    function attr_id( $attr_value ) {
        return $this->attr_id_with_other_name( 'id', $attr_value );
    }
    //https://html.spec.whatwg.org/dev/interaction.html#attr-inputmode
    function attr_inputmode( $attr_value ) {
        $enumerated_values = array( 'none', 'text', 'decimal', 'numeric', 'tel', 'search', 'email', 'url' );
        return $this->create_enumerated_attribute( 'inputmode', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/multipage/scripting.html#valid-custom-element-name
    //start with small ascii alphabet
    //its limitation of value all characters must be lowercase
    function attr_is( $attr_value ) {
        $reserved_names = array( 'annotation-xml', 'color-profile', 'font-face', 'font-face-src', 'font-face-uri', 'font-face-format', 'font-face-name', 'missing-glyph' );
        $attr_value = strtolower( $attr_value ); //its limitation of value all characters must be lowercase
        $start_with_alphabet = ctype_alpha( substr( $attr_value, 0, 1 ) );
        if ( $this->has_not_space( $attr_value ) ) {
            if ( $this->is_ascii( $attr_value ) ) {
                //to do: it need extra check for validating only allowed char at this time i cant find a method to validate hex chars see doc of html 
                if ( $start_with_alphabet ) {
                    if ( strpos( $attr_value, '-' ) !== false ) {
                        if ( !in_array( $attr_value, $reserved_names ) ) {
                            //there is some warning in element naming that will not applied
                            return $this->create_attribute( 'is', $attr_value );
                        } else {
                            sst_error_log( 'The supplied element name is reserved and can\'t be used.\nSee: https://html.spec.whatwg.org/multipage/scripting.html#valid-custom-element-name' );
                            return NULL;
                        }
                    } else {
                        sst_error_log( 'Custom element names must contain a hyphen. Example: unicorn-cake' );
                        return NULL;
                    }
                } else {
                    sst_error_log( 'Custom element names must not start with a alphabet lowercase.' );
                    return NULL;
                }
            } else {
                sst_error_log( 'Custom element names must not conatin non ASCII.' );
                return NULL;
            }
        } else {
            sst_error_log( 'Custom element names must not conatin any type of space.' );
            return NULL;
        }
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/itemid
    //https://html.spec.whatwg.org/multipage/microdata.html#items
    function attr_itemid( $attr_value ) {
        //it can be global identifier and or url very complicated to validate
        return $this->create_attribute( 'itemid', $attr_value );
    }
    //https://www.w3.org/TR/microdata/#names:-the-itemprop-attribute
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/itemprop
    //vary value from text to url complicated very much
    function attr_itemprop( $attr_value ) {
        return $this->create_attribute( 'itemprop', $attr_value );
    }

    function attr_itemref( $attr_value ) {
        return $this->create_attribute( 'itemref', $attr_value );
    }

    function attr_itemscope( $attr_value ) {
        //it can be global identifier and or url very complicated to validate
        if ( $attr_value ) {
            return 'itemscope';
        }
    }
    //https://html.spec.whatwg.org/multipage/microdata.html
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/itemtype
    function attr_itemtype( $attr_value ) {
        $valid = $this->is_absoulute_url( $attr_value );
        if ( $valid ) {
            return $this->create_attribute( 'itemtype', $attr_value );
        } else {
            sst_error_log( 'itemtype must be url you provide not valid one.' );
            return NULL;
        }
    }
    //Visit registerd languages:http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry
    //https://tools.ietf.org/html/bcp47#section-2.2.1
    //To do:complex format and not trust source find a way to check validity
    function attr_lang( $attr_value ) {
        if ( $this->is_alphahyphen( $attr_value ) ) {
            return $this->create_attribute( 'lang', $attr_value );
        } else {
            sst_error_log( 'language tag must be alphahyphen.' );
            return NULL;
        }
    }
    //to do :not enough data for validating search more
    function attr_slot( $attr_value ) {
        if ( $this->has_not_space( $attr_value ) ) {
            if ( $this->is_ascii( $attr_value ) ) {
                if ( !$this->has_html_prevented_chars( $attr_value ) ) {
                    return $this->create_attribute( 'slot', $attr_value );
                } else {
                    sst_error_log( 'slot name must have prevented chars:",\',>,/,= .' );
                    return NULL;
                }
            } else {
                sst_error_log( 'slot name must have only ASCII charecters.' );
                return NULL;
            }
        } else {
            sst_error_log( 'slot name cant have space.' );
            return NULL;
        }
    }
    //https://html.spec.whatwg.org/multipage/interaction.html#dom-spellcheck
    function attr_spellcheck( $attr_value ) {
        $enumerated_values = array( 'true', 'false' );
        return $this->create_enumerated_attribute( 'spellcheck', $attr_value, $enumerated_values );
    }
    //https://html.spec.whatwg.org/multipage/interaction.html#the-tabindex-attribute
    function attr_tabindex( $attr_value ) {
        return $this->create_int_attribute( 'tabindex', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/dom.html#attr-title
    function attr_title( $attr_value ) {
        return $this->create_attribute( 'title', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/dom.html#dom-translate
    function attr_translate( $attr_value ) {
        $enumerated_values = array( 'yes', 'no' );
        return $this->create_enumerated_attribute( 'translate', $attr_value, $enumerated_values );
    } //https://html.spec.whatwg.org/multipage/dom.html#classes
    //https://html.spec.whatwg.org/multipage/common-microsyntaxes.html#set-of-space-separated-tokens
    //https://mathiasbynens.be/notes/html5-id-class
    function attr_class( $attr_value ) {
        return $this->create_attribute( 'class', $attr_value );
    }
    // to do: as i searched there is no offline validator search more 
    function attr_style( $attr_value ) {
        return $this->create_attribute( 'style', $attr_value );
    }
    /*******************************************
    SPECIFIC ATTRIBUTES
    ********************************************/
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image#alt
    function attr_alt( $attr_value ) {
        return $this->create_attribute( 'alt', $attr_value );
    }

    function attr_accept( $attr_value ) {
        $accept_ids = $this->get_ids( $attr_value, true );
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
                        sst_error_log( 'autocomplete in generic on|off cant use opt and section- part!' );
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
                            sst_error_log( 'autocomplete invalid part for value for person!' );
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
                            sst_error_log( 'autocomplete invalid part for value for contact!' );
                            return NULL;
                        }
                    }
                }
            }
        } else {
            sst_error_log( 'autocomplete has at most three part not more!' );
            return NULL;
        }
    }
    //https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus
    function attr_autofocus( $attr_value ) {
        return $this->create_same_name_attribute_value( 'autofocus', $attr_value );
    }
    //https://html.spec.whatwg.org/multipage/interaction.html#attr-fe-autofocus
    function attr_capture( $attr_value ) {
        return $this->create_same_name_attribute_value( 'capture', $attr_value );
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
        $enumerated_values = array( '_self', '_blank', '_parent', '' );
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
                sst_error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'datetime-local'
            or $html_input_type == 'datetime' ) {
            if ( $this->check_datetime( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                sst_error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'month' ) {
            if ( $this->check_date( $attr_value . '-01' ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                sst_error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'time' ) {
            if ( $this->check_time( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                sst_error_log( 'date for Max is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'week' ) {
            if ( $this->check_week( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'max', $attr_value );
            } else {
                sst_error_log( 'date for Max is not valid!' );
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
                sst_error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'datetime-local'
            or $html_input_type == 'datetime' ) {
            if ( $this->check_datetime( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                sst_error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'month' ) {
            if ( $this->check_date( $attr_value . '-01' ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                sst_error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'time' ) {
            if ( $this->check_time( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                sst_error_log( 'date for Min is not valid!' );
                return NULL;
            }
        } elseif ( $html_input_type == 'week' ) {
            if ( $this->check_week( $attr_value ) ) { //month,day,year
                return $this->create_attribute( 'min', $attr_value );
            } else {
                sst_error_log( 'date for Min is not valid!' );
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
        if ( $this->is_valid_pattern( $attr_value ) ) {
            return $this->create_attribute( 'pattern', $attr_value );
        } else {
            sst_error_log( 'pattern is not valid!' );

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
    function attr_name( $attr_value ) {
        if ( $attr_value <> 'isindex' ) {
            if ( !empty( $attr_value ) ) {
                return $this->create_attribute( 'name', $attr_value );
            } else {
                sst_error_log( 'name cant be empty.' );
                return NULL;
            }
        } else {
            sst_error_log( 'name isindex is reserved and cant use this input name.' );
            return NULL;
        }
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image#height
    function attr_src( $attr_value ) {
        return $this->create_url_abosult_or_relative( 'src', $attr_value );
    }

    //
    function attr_value( $attr_value ) {
        return $this->create_attribute( 'value', $attr_value );
    }

    function attr_width() {
        return $this->create_int_attribute( 'width', $attr_value );
    }
    function attr_wrap( $attr_value) {
        return $this->create_enumerated_attribute( 'wrap', $attr_value,array('hard','soft','off') );
    }
    /*********************************************/
    function create_enumerated_attribute( $attr_name, $attr_value, array $enumerated_values ) {
        $attr_value = strtolower( $attr_value );
        if ( in_array( $attr_value, $enumerated_values ) ) {
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            sst_error_log( 'this attribute need enumerated value can be some specific value but you have provide sth else!' );
            return NULL;
        }
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id
    function attr_id_with_other_name( $attr_name, $attr_value ) {
        if ( $this->has_not_space( $attr_value ) ) {
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            sst_error_log( 'id must not contain space.' );
            return NULL;
        }
    }

    function create_same_name_attribute_value( $attr_name, $attr_value ) {
        $attr_value = strtolower( $attr_value );
        $attr_name = strtolower( $attr_name );
        if ( $attr_value == $attr_name ) {
            return $this->create_attribute( $attr_name, $attr_name );
        } elseif ( empty( $attr_value ) ) {
            return NULL;
        } else {
            sst_error_log( $attr_name . ' must have "' . $attr_name . '" values you provide sth else!' );
            return NULL;
        }
    }

    function create_numeric_attribute( $attr_name, $attr_value ) {
        if ( is_numeric( $attr_value ) ) { //negative is also allowed
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            sst_error_log( $attr_name . ' must be numeric.' );
            return NULL;
        }
    }

    function create_int_attribute( $attr_name, $attr_value ) {
        if ( ctype_digit( $attr_value ) ) { //negative is also allowed
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            sst_error_log( $attr_name . ' must be integer.' );
            return NULL;
        }
    }

    function create_int_positive_attribute( $attr_name, $attr_value ) {
        if ( ctype_digit( $attr_value ) ) {
            if ( $this->is_positive_number( $attr_value ) ) {
                return $this->create_attribute( $attr_name, $attr_value );
            } else {
                sst_error_log( $attr_name . ' must be positive and not zero integer.' );
                return NULL;
            }
        } else {
            sst_error_log( $attr_name . ' must be integer.' );
            return NULL;
        }
    }

    function create_url_abosult_or_relative( $attr_name, $attr_value ) {
        $valid_absoulute = $this->is_absoulute_url( $attr_value );
        $valid_relative = $this->is_relative_url( $attr_value );
        if ( $valid_relative and $valid_relative ) {
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            sst_error_log( $attr_name . ' must be url relative or absolute.' );
            return NULL;
        }
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types
    //https://www.freeformatter.com/mime-types-list.html#mime-types-list
    function validate_mime_type( $mime_type ) {
        $mime_type_arr = explode( '/', $mime_type );
        if ( count( $mime_type_arr ) == 1 ) {
            if ( $this->starts_with( $mime_type_arr[ 0 ], '.' ) ) {
                return true;
            } else {
                return false;
            }
        } elseif ( count( $mime_type_arr ) == 2 ) {
            $allowed_mimes = array( 'application', 'audio', 'chemical', 'font', 'image', 'message', 'model', 'multipart', 'text', 'video', 'x-conference' );
            if ( in_array( $mime_type_arr[ 0 ], $allowed_mimes ) ) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    function create_attribute( $attr_name, $attr_value ) {
        if ( !empty( $attr_value ) ) {
            return $attr_name . '="' . htmlentities( $this->is_eval_run( $attr_value ) ) . '"';
        } else {
            return NULL;
        }
    }

}
class attr extends attr_validation {
    /*
    Class Description:this is for creating multiple of attributes eg specific and global or common
    */

    /**************************************************
     *version 1.0.0
     *these is for creating one simple attribute and value pair
     **************************************************/
    function create_simple_attr( $attr_name, $attr_value, $html_input_type ) {
        if ( $this->is_valid_custom_attr_name( $attr_name ) ) {
            $attr_value = trim( $attr_value );
            $attr_value = $this->is_eval_run( $attr_value );
            $attr_name = $this->is_eval_run( $attr_name );
            if ( empty( $attr_name ) ) {
                sst_error_log( 'attribute name provided is empty or after removing all unallowed characters it converted to empty and remain nothing.' );
                $result_attr = NULL;
            }
            if ( empty( $attr_value ) ) {
                $result_attr = NULL;
            }
            $attr_value = $this->is_eval_run( $attr_value );
            switch ( $attr_name ) {
                case "accesskey":
                    $result_attr = $this->attr_accesskey( $attr_value );
                    break;
                case "autocapitalize":
                    $result_attr = $this->attr_autocapitalize( $attr_value );
                    break;
                case "class":
                    $result_attr = $this->attr_class( $attr_value );
                    break;
                case "contenteditable":
                    $result_attr = $this->attr_contenteditable( $attr_value );
                    break;
                case "contextmenu":
                    $result_attr = $this->attr_contextmenu( $attr_value );
                    break;
                case "dir":
                    $result_attr = $this->attr_dir( $attr_value );
                    break;
                case "draggable":
                    $result_attr = $this->attr_draggable( $attr_value );
                    break;
                case "dropzone":
                    $result_attr = $this->attr_dropzone( $attr_value );
                    break;
                case "hidden":
                    $result_attr = $this->attr_hidden( $attr_value );
                    break;
                case "id":
                    $result_attr = $this->attr_id( $attr_value );
                    break;
                case "inputmode":
                    $result_attr = $this->attr_inputmode( $attr_value );
                    break;
                case "is":
                    $result_attr = $this->attr_is( $attr_value );
                    break;
                case "itemid":
                    $result_attr = $this->attr_itemid( $attr_value );
                    break;
                case "itemprop":
                    $result_attr = $this->attr_itemprop( $attr_value );
                    break;
                case "itemref":
                    $result_attr = $this->attr_itemref( $attr_value );
                    break;
                case "itemscope":
                    $result_attr = $this->attr_itemscope( $attr_value );
                    break;
                case "itemtype":
                    $result_attr = $this->attr_itemtype( $attr_value );
                    break;
                case "lang":
                    $result_attr = $this->attr_lang( $attr_value );
                    break;
                case "slot":
                    $result_attr = $this->attr_slot( $attr_value );
                    break;
                case "spellcheck":
                    $result_attr = $this->attr_spellcheck( $attr_value );
                    break;
                case "style":
                    $result_attr = $this->attr_style( $attr_value );
                    break;
                case "tabindex":
                    $result_attr = $this->attr_tabindex( $attr_value );
                    break;
                case "title":
                    $result_attr = $this->attr_title( $attr_value );
                    break;
                case "translate":
                    $result_attr = $this->attr_translate( $attr_value );
                    break;
                    /*******************************************
                    SPECIFIC ATTRIBUTES
                    ********************************************/

                case "accept":
                    $result_attr = $this->attr_accept( $attr_value );
                    break;
                case "alt":
                    $result_attr = $this->attr_alt( $attr_value );
                    break;
                case "autocomplete":
                    $result_attr = $this->attr_autocomplete( $attr_value );
                    break;
                case "autofocus":
                    $result_attr = $this->attr_autofocus( $attr_value );
                    break;
                case "capture":
                    $result_attr = $this->attr_capture( $attr_value );
                    break;
                case "checked":
                    $result_attr = $this->attr_checked( $attr_value );
                    break;
                case "cols":
                    $result_attr = $this->attr_cols( $attr_value );
                    break;
                case "dirname":
                    $result_attr = $this->attr_dirname( $attr_value );
                    break;
                case "disabled":
                    $result_attr = $this->attr_disabled( $attr_value );
                    break;
                case "form":
                    $result_attr = $this->attr_form( $attr_value );
                    break;
                case "formaction":
                    $result_attr = $this->attr_formaction( $attr_value );
                    break;
                case "formenctype":
                    $result_attr = $this->attr_formenctype( $attr_value );
                    break;
                case "formmethod":
                    $result_attr = $this->attr_formmethod( $attr_value );
                    break;
                case "formnovalidate":
                    $result_attr = $this->attr_formnovalidate( $attr_value );
                    break;
                case "formtarget":
                    $result_attr = $this->attr_formtarget( $attr_value );
                    break;
                case "height":
                    $result_attr = $this->attr_height( $attr_value );
                    break;
                case "label":
                    $result_attr = $this->attr_label( $attr_value );
                    break;
                case "list":
                    $result_attr = $this->attr_list( $attr_value );
                    break;
                case "max":
                    $result_attr = $this->attr_max( $attr_value, $html_input_type );
                    break;
                case "maxlength":
                    $result_attr = $this->attr_maxlength( $attr_value );
                    break;
                case "min":
                    $result_attr = $this->attr_min( $attr_value, $html_input_type );
                    break;
                case "minlength":
                    $result_attr = $this->attr_minlength( $attr_value );
                    break;
                case "multiple":
                    $result_attr = $this->attr_multiple( $attr_value );
                    break;
                case "name":
                    $result_attr = $this->attr_name( $attr_value );
                    break;
                case "pattern":
                    $result_attr = $this->attr_pattern( $attr_value );
                    break;
                case "placeholder":
                    $result_attr = $this->attr_placeholder( $attr_value );
                    break;
                case "readonly":
                    $result_attr = $this->attr_readonly( $attr_value );
                    break;
                case "required":
                    $result_attr = $this->attr_required( $attr_value );
                    break;
                case "rows":
                    $result_attr = $this->attr_rows( $attr_value );
                    break;
                case "selected":
                    $result_attr = $this->attr_selected( $attr_value );
                    break;
                case "size":
                    $result_attr = $this->attr_size( $attr_value );
                    break;
                case "src":
                    $result_attr = $this->attr_src( $attr_value, $html_input_type );
                    break;
                case "step":
                    $result_attr = $this->attr_step( $attr_value, $html_input_type );
                    break;
                case "value":
                    $result_attr = $this->attr_value( $attr_value );
                    break;
                case "wrap":
                    $result_attr = $this->attr_wrap( $attr_value );
                    break;
                case "width":
                    $result_attr = $this->attr_width( $attr_value );
                    break;
                case "type":
                    $result_attr = $this->create_attribute( $attr_name, $attr_value );
                    break;
                default:
                    // $result_attr = $this->create_attribute( $attr_name, $attr_value );
                    break;
            }
        } else {
            $result_attr = NULL;
            sst_error_log( 'attribute name provided is not empty but its invalid.' );
        }
        return $result_attr;
    }

    /**************************************************
     *version 1.0.0
     *these is for creating multiple simple attribute and value pair by giving attr name in key and attr value in array value
     **************************************************/
    function create_multiple_attrs( $attr_name_value, $html_input_type = NULL ) {
        $attrs = array();
        if ( !empty( $attr_name_value ) ) {
            foreach ( $attr_name_value as $attr_name => $attr_value ) {
                $attr = $this->create_simple_attr( $attr_name, $attr_value, $html_input_type );
                if ( !empty( $attr ) ) {
                    //itemid requires existence of itemscope and itemtype
                    if ( $attr_name == 'itemid'
                        and $attr_name_value[ 'itemscope' ]and $attr_name_value[ 'itemtype' ] ) {
                        $attrs[] = $attr;
                        //itemref requires existence of itemscope
                    } elseif ( $attr_name == 'itemref'
                        and $attr_name_value[ 'itemscope' ] ) {
                        $attrs[] = $attr;
                    } else {
                        $attrs[] = $attr;
                    }
                }
            }

        }
        if ( !empty( $attrs ) ) {
            return implode( ' ', $attrs );
        } else {
            return NULL;
        }
    }

}
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
                sst_error_log( 'global attrs ids string after processing provid any id.' );
                $this->global_obj = NULL;
            }
        } else {
            sst_error_log( 'global attrs id provided is empty string.' );
            $this->global_obj = NULL;
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
            sst_error_log( 'cant retrieve global input attr row.' );
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
                            sst_error_log( 'in type object html_type ot type is empty.' );
                            return NULL;
                        }

                    } else {
                        sst_error_log( 'type object cant be retrieved.' );
                        return NULL;
                    }
                } else {
                    sst_error_log( 'type id of input cant be empty. its empty initially or after processing.' );
                    return NULL;
                }
            } else {
                sst_error_log( 'cant retrieve input, may input id is invalid.' );
                return NULL;
            }
        } else {
            sst_error_log( 'input id is empty.' );
            return NULL;
        }
    }

    function create_attr_input_common() {
        $attr_input_common_arr = array();
        if ( $this->input_html_type != 'select' and $this->input_html_type != 'textarea' ) {
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
    var $list_elements;
	var $text;
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
                        sst_error_log( 'input_type arguments is invalid.' );
                        return NULL;
                        break;
                }
                if ( !empty( $this->specific_obj ) ) {
                    $this->create_attr_input_specific();
                } else {
                    $this->specific_obj = NULL;
                    sst_error_log( 'cant find specific id in the table ' . $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] . '.' );
                    return NULL;
                }
            } else {
                $this->specific_obj = NULL;
                sst_error_log( 'input_type arguments the second argument is empty.' );
                return NULL;
            }
        } else {
            $this->specific_obj = NULL;
            sst_error_log( 'input_specific_id arguments the first argument is empty.' );
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
                    $this->list_elements = $this->create_list( $this->specific_obj->list_ids, $this->specific_obj->list );
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
                    $this->list_elements = $this->create_list( $this->specific_obj->list_ids, $this->specific_obj->list );
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
                    $this->list_elements = $this->create_list( $this->specific_obj->list_ids, $this->specific_obj->list );
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
                    $this->list_elements = $this->create_list( $this->specific_obj->list_ids, $this->specific_obj->list );
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
                    $this->list_elements = $this->create_list( $this->specific_obj->list_ids, $this->specific_obj->list );
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
                    $this->list_elements = $this->create_list( $this->specific_obj->list_ids, $this->specific_obj->list );
                    break;
                case "color":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                    ), $this->input_html_type );
                    $this->list_elements = $this->create_list( $this->specific_obj->list_ids, $this->specific_obj->list );
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
                    $this->list_elements = $this->create_all_options($this->specific_obj  );
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
            if ( !empty( $specific ) ) {
                $attr_input_specific_arr[] = $specific;
            }
            if ( !empty( $attr_input_specific_arr ) ) {
                $this->specific_attr = implode( ' ', $attr_input_specific_arr );
                return $this->specific_attr;
            } else {
                return NULL;
            }
        } else {
            sst_error_log( 'specific attrs id provided is empty string.' );
            return NULL;
        }
    }

    function create_all_options( $specific_obj ) {
		$all_opt = array();
		if(empty($this->attr_multiple($specific_obj->multiple )) and !empty($specific_obj->unselected_text) and $specific_obj->size<=1){
			$all_opt[] = '<option disabled="disabled" label="'.$specific_obj->unselected_text.'" >'.$specific_obj->unselected_text.'</option>';
		}
        if ( !empty(  $specific_obj->optgroup_ids ) ) {
            $all_opt[] = $this->create_optgroups( $this->is_eval_run(  $specific_obj->optgroup_ids ) );
        }
        if ( !empty( $specific_obj->option_ids ) ) {
            $all_opt[] = $this->create_option( $this->is_eval_run( $specific_obj->option_ids) );
        }
		if(empty($all_opt)){
            sst_error_log( 'no option or option group can be fetched you create empty option select.' );
		}
		$all_options = implode( '', $all_opt );
        return $all_options;
		
    }

    function create_optgroups( $optgroup_ids ) {
        $optgroup_ids = $this->get_ids( $optgroup_ids );
        foreach ( $optgroup_ids as $optgroup_id ) {
            $optgroups[] = $this->create_optgroup( $optgroup_id );
        }
        $opt = implode( '', $optgroups );
        return $opt;
    }

    function create_optgroup( $optgroup_id ) {
        $optgroup_obj = $this->get_by_id( $optgroup_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select_optgroup' ] );
		if($optgroup_obj){
			$optgroup_global_attr_obj = new global_attr( $this->is_eval_run( $optgroup_obj->attr_html_global_id ) );
			$optgroup_attrs[] = $optgroup_global_attr_obj->global_attr;
			$optgroup_attrs[] = $this->create_attribute( 'label', $optgroup_obj->label );
			$optgroup = '<optgroup ' . implode( ' ', $optgroup_attrs ) . '>';
			$optgroup .= $this->create_option( $optgroup_obj->option_ids );
			$optgroup .= '</optgroup>';
			return $optgroup;
		}else{
            sst_error_log( 'optgroup id provided can not find in optgroup table' );
			return NULL ;
		}
    }


    function create_list( $list_ids, $the_list_id ) {
		if(!empty($list_ids) and !empty($the_list_id) ){
			$datalist = '<datalist ' . $this->attr_id_with_other_name( 'id', $the_list_id ) . '>';
			$datalist .= $this->create_option( $list_ids );
			$datalist .= '</datalist>';
			return $datalist;
		}else{
			return false;
		}
    }

    function create_option( $list_ids ) {
        $lists = $this->get_list_values( $list_ids );
        if ( !empty( $lists ) ) {
            foreach ( $lists as $list ) {
                $options .= '<option ' . $list[ 'attr' ] . ' >';
                if ( $this->input_html_type == 'select' ) {
                    $options .= $list[ 'text' ] . '</option>';
                }
            }
        }
        return $options;
    }

    function get_list_values( $list_ids ) {
        $list_ids = $this->get_ids( $list_ids );
        $i = 0;
		if(!empty($list_ids)){
			foreach ( $list_ids as $list_id ) {
				$opt_attrs = array();
				if ( $this->input_html_type == 'select' ) {
					$list_obj = $this->get_by_id( $list_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select_options' ] );
					$specific_attr = $this->create_multiple_attrs( array(
						'disabled' => $list_obj->disabled,
						'selected' => $list_obj->selected,
					), 'option' );
					$opt_attrs[ 'specific' ] = $specific_attr;
				} else {
					$list_obj = $this->get_by_id( $list_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_attr_list' ] );
					$specific_attr = $this->create_multiple_attrs( array(
						'disabled' => $list_obj->disabled,
					), 'option' );
					$opt_attrs[ 'specific' ] = $specific_attr;
				}
				if ( !empty( $list_obj->attr_html_global_id ) ) {
					$global_obj = new global_attr( $this->is_eval_run( $list_obj->attr_html_global_id ) );
					$global_attr = $global_obj->global_attr;
					$opt_attrs[ 'global' ] = $global_attr;
				}
				if ( in_array( $list_obj->source_type, array( 'json', 'query', 'value' ) ) ) {
					switch ( $list_obj->source_type ) {
						case 'value':
							$val = $this->is_eval_run( $list_obj->value );
							if ( $val ) {
								if ( $this->input_html_type == 'select' ) {
									$opt_attrs[ 'value' ] = $this->create_attribute( 'value', $val );
									$opt_attrs[ 'label' ] = $this->create_attribute( 'label', $this->is_eval_run( $list_obj->label ) );
									$all_attrs[ $i ][ 'attr' ] = implode( ' ', $opt_attrs );
									$all_attrs[ $i ][ 'text' ] = $this->is_eval_run( $list_obj->text );
									$i++;

								} else {
									$opt_attrs[ 'value' ] = $this->create_attribute( 'value', $val );
									$opt_attrs[ 'label' ] = $this->create_attribute( 'label', $this->is_eval_run( $list_obj->label ) );
									$all_attrs[ $i ][ 'attr' ] = implode( ' ', $opt_attrs );
									$i++;

								}
							} else {
								sst_error_log( 'list | option VALUE is empty.' );
							}
							break;
						case 'query':
							global $wpdb;
							$results = $wpdb->get_results( $list_obj->query );
							if ( !empty( $results )and!empty( $list_obj->query_value_function ) ) {
								if ( $this->input_html_type == 'select' ) {

									foreach ( $results as $result ) {
										$opt_attrs[ 'value' ] = $this->create_attribute( 'value', $this->run_eval( $list_obj->query_value_function, $result ) );
										$opt_attrs[ 'label' ] = $this->create_attribute( 'label', $this->run_eval( $list_obj->query_label_function, $result ) );
										$all_attrs[ $i ][ 'attr' ] = implode( ' ', $opt_attrs );
										$all_attrs[ $i ][ 'text' ] = $this->run_eval( $list_obj->query_text_function, $result );
										$i++;

									}
								} else {
									if ( !empty( $list_obj->query_label_function ) ) {
										foreach ( $results as $result ) {
											$opt_attrs[ 'value' ] = $this->create_attribute( 'value', $this->run_eval( $list_obj->query_value_function, $result ) );
											$opt_attrs[ 'label' ] = $this->create_attribute( 'label', $this->run_eval( $list_obj->query_label_function, $result ) );
											$all_attrs[ $i ][ 'attr' ] = implode( ' ', $opt_attrs );
											$i++;

										}
									} else {
										foreach ( $results as $result ) {
											$opt_attrs[ 'value' ] = $this->create_attribute( 'value', $this->run_eval( $list_obj->query_value_function, $result ) );
											$all_attrs[ $i ][ 'attr' ] = implode( ' ', $opt_attrs );
											$i++;

										}
									}
								}
							} else {
								sst_error_log( 'list | option values as query return nothing or may query_value_function is empty.' );
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
											$opt_attrs[ 'value' ] = $this->create_attribute( 'value', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'value' ] . ';', $json ) );
											$opt_attrs[ 'label' ] = $this->create_attribute( 'label', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'label' ] . ';', $json ) );
											$all_attrs[ $i ][ 'attr' ] = implode( ' ', $opt_attrs );
											$all_attrs[ $i ][ 'text' ] = $this->run_eval( 'return $eval_var->' . $array_of_list[ 'text' ] . ';', $json );
											$i++;

										}
									} else {
										foreach ( $array_of_lists_values as $k => $array_of_lists_value ) {
											$array_of_lists[ $k ][ 'value' ] = $array_of_lists_value;
											$array_of_lists[ $k ][ 'label' ] = $array_of_lists_labels[ $k ];
										}
										foreach ( $array_of_lists as $array_of_list ) {
											$opt_attrs[ 'value' ] = $this->create_attribute( 'value', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'value' ] . ';', $json ) );
											$opt_attrs[ 'label' ] = $this->create_attribute( 'label', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'label' ] . ';', $json ) );
											$all_attrs[ $i ][ 'attr' ] = implode( ' ', $opt_attrs );
											$i++;
										}
									}

								} else {
									sst_error_log( 'list values as json_value_pointer return nothing.' );
									return false;
								}
							} else {
								sst_error_log( 'json url provided is not accessible or cant be parsed as json may  malformatted.' );
								return false;
							}
							break;
						default:
							sst_error_log( 'mistyped source_type' );
							return false;
							break;

					}
				} else {
					sst_error_log( 'list provided should only be query or json or value in source_type.' );
					return false;
				}
			}
			return $all_attrs;
		}else{
            //list ids is empty;
			return NULL ;
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
    var $custom_attr;

    function __construct( $custom_attr_ids = NULL ) {
        $custom_attr_ids_arr = $this->get_ids( $custom_attr_ids );
        if ( !empty( $custom_attr_ids_arr ) ) {
            foreach ( $custom_attr_ids_arr as $custom_id ) {
                $custom_obj = $this->get_by_id( $custom_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_custom' ] );
                if ( !empty( $custom_obj ) ) {
                    $custom_attr_arr[ $custom_obj->attr_name ] = $custom_obj->attr_value;
                } else {
                    sst_error_log( 'custom attr object cant retrieve.' );
                }
            }
            $this->custom_attr = $this->create_multiple_attrs( $custom_attr_arr );
        } else {
            return NULL;
        }

    }
}
class input_attr extends attr {
    private $input_id;
    private $input_obj;

    private $global_attr_id;
    private $global_attr_obj;
    var $global_attr;

    private $common_attr_id;
    private $common_attr_obj;
    var $common_attr;

    private $specific_attr_id;
    private $specific_attr_obj;
    var $specific_attr;

    private $custom_attr_ids;
    private $custom_attr_obj;
    var $custom_attr;


    private $input_type_id;
    var $input_type;
    var $input_html_type;


    var $attr;

    function __construct( $input_id = NULL ) {
        $this->input_id = $this->get_ids( $input_id, true );
        if ( !empty( $this->input_id ) ) {
            $this->input_obj = $this->get_by_id( $this->input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
            if ( !empty( $this->input_obj ) ) {
                $all_attr = array();

                $this->common_attr_id = $this->input_id;
                $this->common_attr_obj = new common_attr( $this->common_attr_id );
                $this->common_attr = $this->common_attr_obj->common_attr;

                $this->input_type_id = $this->input_obj->type_id;
                $this->input_type = $this->common_attr_obj->input_type;
                $this->input_html_type = $this->common_attr_obj->input_html_type;

                $this->global_attr_id = $this->get_ids( $this->input_obj->attr_html_global_id, true );
                $this->global_attr_obj = new global_attr( $this->global_attr_id );
                $this->global_attr = $this->global_attr_obj->global_attr;

                if ( $this->input_html_type !== 'hidden' ) {
                    $this->specific_attr_id = $this->get_ids( $this->input_obj->attr_input_specific_id, true );
                    $this->specific_attr_obj = new specific_attr( $this->specific_attr_id, $this->input_html_type );
                    $this->specific_attr = $this->specific_attr_obj->specific_attr;
					$this->text = $this->specific_attr_obj->text ;
                    $this->list_elements = $this->specific_attr_obj->list_elements;
                }

                $this->custom_attr_ids = $this->input_obj->attr_input_custom_ids;
                $this->custom_attr_obj = new custom_attr( $this->custom_attr_ids );
                $this->custom_attr = $this->custom_attr_obj->custom_attr;

                if ( !empty( $this->common_attr ) ) {
                    $all_attr[] = $this->common_attr;
                }
                if ( !empty( $this->global_attr ) ) {
                    $all_attr[] = $this->global_attr;
                }
                if ( !empty( $this->specific_attr ) ) {
                    $all_attr[] = $this->specific_attr;
                }
                if ( !empty( $this->custom_attr ) ) {
                    $all_attr[] = $this->custom_attr;
                }
                $this->attr = implode( ' ', $all_attr );
                return $this->attr;
            } else {
                sst_error_log( 'input object cant retrieve.' );
                return NULL;
            }
        } else {
            sst_error_log( 'input id is empty or after processing is empty.' );
            return NULL;
        }
    }

}
class input extends input_attr {
    var $input;
    function __construct( $input_id = NULL ) {
        parent::__construct( $input_id );
        switch ( $this->input_html_type ) {
            case "text":
            case "search":
            case "tel":
            case "url":
            case "submit":
            case "range":
            case "password":
            case "number":
            case "image":
            case "file":
            case "email":
            case "date":
            case "datetime-local":
            case "month":
            case "time":
            case "week":
            case "datetime":
            case "color":
            case "checkbox":
            case "radio":
            case "hidden":
                $this->input = '<input ' . $this->attr . '>';
                if ( !empty( $this->list_elements ) ) {
                    $this->input .= $this->list_elements;
                    $this->list_elements = NULL;
                }
                break;
            case "select":
                $this->input = '<select ' . $this->attr . '>';
                $this->input .= $this->list_elements;
                $this->input .= '</select>';
                break;
            case "textarea":
				//dbg($this);
                $this->input = '<textarea ' . $this->attr . '>';
                $this->input .= $this->text;
                $this->input .= '</textarea>';
                break;
        }
    }
}