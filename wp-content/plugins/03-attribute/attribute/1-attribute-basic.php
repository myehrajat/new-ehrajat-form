<?php
interface attribute_basic_interface {
    function create_attr( $attr_name, $attr_value );

    function is_valid_custom_attr_name( $attr );

    function create_enumerated_attribute( $attr_name, $attr_value, array $enumerated_values );

    function attr_id_with_other_name( $attr_name, $attr_value );

    function create_same_name_attribute_value( $attr_name, $attr_value );

    function create_numeric_attribute( $attr_name, $attr_value );

    function create_int_attribute( $attr_name, $attr_value );

    function create_int_positive_attribute( $attr_name, $attr_value );

    function create_url_abosult_or_relative( $attr_name, $attr_value );

    function validate_mime_type( $mime_type );

    function create_attribute( $attr_name, $attr_value );
}


class attribute_basic extends database
implements attribute_basic_interface {
	function __construct(){
		parent::__construct();
	}
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
                $this->error_log( 'attribute provided : ' . $attr . ' is not valid. it must be valid by sst_valid_for_attr_naming and not match [?^ \"\'>/=		]/g' );
                $return = false;
            } else {
                $return = true;
            }
        } else {
            $return = false;

        }

        return $return;
    }
    /*********************************************/
    function create_enumerated_attribute( $attr_name, $attr_value, array $enumerated_values ) {
        $attr_value = strtolower( $attr_value );
        if ( in_array( $attr_value, $enumerated_values ) ) {
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            $this->error_log( 'this attribute need enumerated value can be some specific value but you have provide sth else!' );
            return NULL;
        }
    }
    //https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id
    function attr_id_with_other_name( $attr_name, $attr_value ) {
        if ( $this->has_not_space( $attr_value ) ) {
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            $this->error_log( 'id must not contain space.' );
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
            $this->error_log( $attr_name . ' must have "' . $attr_name . '" values you provide sth else!' );
            return NULL;
        }
    }

    function create_numeric_attribute( $attr_name, $attr_value ) {
        if ( is_numeric( $attr_value ) ) { //negative is also allowed
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            $this->error_log( $attr_name . ' must be numeric.' );
            return NULL;
        }
    }

    function create_int_attribute( $attr_name, $attr_value ) {
		if(!empty($attr_value)){
			if ( ctype_digit( $attr_value ) ) { //negative is also allowed
				return $this->create_attribute( $attr_name, $attr_value );
			} else {
				$this->error_log( $attr_name . ' must be integer. you have provide :'.$attr_value.' .' );
				return NULL;
			}
		}else{
			return NULL;
		}
    }

    function create_int_positive_attribute( $attr_name, $attr_value ) {
        if ( ctype_digit( $attr_value ) ) {
            if ( $this->is_positive_number( $attr_value ) ) {
                return $this->create_attribute( $attr_name, $attr_value );
            } else {
                $this->error_log( $attr_name . ' must be positive and not zero integer.' );
                return NULL;
            }
        } else {
            $this->error_log( $attr_name . ' must be integer.' );
            return NULL;
        }
    }

    function create_url_abosult_or_relative( $attr_name, $attr_value ) {
        $valid_absoulute = $this->is_absoulute_url( $attr_value );
        $valid_relative = $this->is_relative_url( $attr_value );
        if ( $valid_relative and $valid_relative ) {
            return $this->create_attribute( $attr_name, $attr_value );
        } else {
            $this->error_log( $attr_name . ' must be url relative or absolute.' );
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
    var $input_data;

    function create_attribute( $attr_name, $attr_value ) {
        if ( !empty( $attr_value ) ) {
            $this->input_data[ 'attrs' ][ $attr_name ] = htmlentities( $this->is_eval_run( $attr_value ) );
        } else {
            return NULL;
        }
		//return $attr_name.'="'.$attr_value.'"';
    }

}