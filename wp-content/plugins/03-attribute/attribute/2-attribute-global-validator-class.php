<?php
interface attribute_global_validator_interface {

    function attr_accesskey( $attr_value );

    function attr_autocapitalize( $attr_value );

    function attr_contenteditable( $attr_value );

    function attr_contextmenu( $attr_value );

    function attr_dir( $attr_value );

    function attr_draggable( $attr_value );

    function attr_dropzone( $attr_value );

    function attr_hidden( $attr_value );

    function attr_id( $attr_value );

    function attr_inputmode( $attr_value );

    function attr_is( $attr_value );

    function attr_itemid( $attr_value );

    function attr_itemprop( $attr_value );

    function attr_itemref( $attr_value );

    function attr_itemscope( $attr_value );

    function attr_itemtype( $attr_value );

    function attr_lang( $attr_value );

    function attr_slot( $attr_value );

    function attr_spellcheck( $attr_value );

    function attr_tabindex( $attr_value );

    function attr_title( $attr_value );

    function attr_translate( $attr_value );

    function attr_class( $attr_value );

    function attr_style( $attr_value );
}


class attribute_global_validator extends attribute_basic
implements attribute_global_validator_interface {

    /**************************************************
     *version 1.0.0
     *source:https://html.spec.whatwg.org/dev/interaction.html#the-accesskey-attribute

     **************************************************/
    function attr_accesskey( $attr_value ) {
            $len = strlen( $attr_value );
            if ( $len > 1 ) {
                $this->error_log( 'accesskey value must be only one or more character one by one space seperated you have provided a string having more than one character.' );
                return NULL;
            } elseif ( $len < 1 ) {
                $this->error_log( 'accesskey value must be only one character you have provided zero value character.' );
                return NULL;
            } else {
				return $this->create_attribute( 'accesskey', $attr_value );
                return NULL;
            }

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
                            $this->error_log( 'The supplied element name is reserved and can\'t be used.\nSee: https://html.spec.whatwg.org/multipage/scripting.html#valid-custom-element-name' );
                            return NULL;
                        }
                    } else {
                        $this->error_log( 'Custom element names must contain a hyphen. Example: unicorn-cake' );
                        return NULL;
                    }
                } else {
                    $this->error_log( 'Custom element names must not start with a alphabet lowercase.' );
                    return NULL;
                }
            } else {
                $this->error_log( 'Custom element names must not conatin non ASCII.' );
                return NULL;
            }
        } else {
            $this->error_log( 'Custom element names must not conatin any type of space.' );
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
            $this->error_log( 'itemtype must be url you provide not valid one.' );
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
            $this->error_log( 'language tag must be alphahyphen.' );
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
                    $this->error_log( 'slot name must have prevented chars:",\',>,/,= .' );
                    return NULL;
                }
            } else {
                $this->error_log( 'slot name must have only ASCII charecters.' );
                return NULL;
            }
        } else {
            $this->error_log( 'slot name cant have space.' );
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
}