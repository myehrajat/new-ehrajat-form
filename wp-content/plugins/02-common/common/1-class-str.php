<?php
interface str_interface {
    function is_negative_number( $str );

    function is_positive_number( $str );

    function is_absolute_url( $url );

    function is_relative_url( $path );

    function is_alphanumeric( $string );

    function is_alphahyphen( $string );

    function is_numerichyphen( $string ) ;

    function is_alpha( $string ) ;

    function has_not_space( $string ) ;

    function replace_all_type_of_space_to_simple_space( $string ) ;

    function is_ascii( $string ) ;

    function has_html_prevented_chars( $string ) ;

    function starts_with( $string, $startString ) ;

    function is_valid_pattern( $pattern ) ;

    function check_date( $date );

    function check_time( $time );

    function check_datetime( $datetime );

    function check_week( $week );

    function str_replace_first( $from, $to, $content );
}
class str extends debug
implements str_interface {

	function __construct(){
		parent::__construct();
	}
    /**************************************************
     *version 1.0.0
     * this function check is minus or not check number or not
     **************************************************/
    //function is_minus_ids( $str ) {
    function is_negative_number( $str ) {
        if ( $str[ 0 ] == '-' ) {
            //echo 'its minus<br />';
            if ( is_numeric( $str ) ) {
                return true;
            } else {
                //$this->error_log( 'its negtive but not number.' );
                return false;
            }
        } else {
            //echo 'its NOT minus<br />';
            //$this->error_log( 'its not negtive.' );
            return false;
        }
    }
    /**************************************************
     *version 1.0.0
     * this function return only numbers
     **************************************************/
    function is_positive_number( $str ) {
		if(!empty($str)){
        if ( $str[ 0 ] <> '-'
            and $str <> 0 ) {
            //echo 'its minus<br />';
            if ( is_numeric( $str ) ) {
                return true;
            } else {
                //$this->error_log( 'its positive but not number.' );
                return false;
            }
        } else {
            //echo 'its NOT minus<br />';
            //$this->error_log( 'its not positive.' );
            return false;
        }
		}else{
            return false;
		}
    }
    /**************************************************
     *version 1.0.0
     * this function is set option
     **************************************************/
    function is_absolute_url( $url ) {
        $pattern = "/^(?:ftp|https?|feed):\/\/(?:(?:(?:[\w\.\-\+!$&'\(\)*\+,;=]|%[0-9a-f]{2})+:)*
		(?:[\w\.\-\+%!$&'\(\)*\+,;=]|%[0-9a-f]{2})+@)?(?:
		(?:[a-z0-9\-\.]|%[0-9a-f]{2})+|(?:\[(?:[0-9a-f]{0,4}:)*(?:[0-9a-f]{0,4})\]))(?::[0-9]+)?(?:[\/|\?]
		(?:[\w#!:\.\?\+=&@$'~*,;\/\(\)\[\]\-]|%[0-9a-f]{2})*)?$/xi";

        return ( bool )preg_match( $pattern, $url );
    }
    //https://www.texelate.co.uk/blog/validate-a-url-path-with-php
    function is_relative_url( $path ) {
        $result = filter_var( 'http://www.example.com' . $path, FILTER_VALIDATE_URL );
        if ( $result === false ) {
            return false;
        } else {
            return true;
        }
    }

    function is_alphanumeric( $string ) {
        if ( !preg_match( '/[^A-Za-z0-9]/', $string ) ) { // '/[^a-z\d]/i' should also work.
            return true;
        } else {
            return false;
        }
    }

    function is_alphahyphen( $string ) {
        if ( !preg_match( '/[^A-Za-z-]/', $string ) ) {
            return true;
        } else {
            return false;
        }
    }

    function is_numerichyphen( $string ) {
        if ( !preg_match( '/[^0-9-]/', $string ) ) {
            return true;
        } else {
            return false;
        }
    }

    function is_alpha( $string ) {
        if ( !preg_match( '/[^A-Za-z]/', $string ) ) {
            return true;
        } else {
            return false;
        }
    }

    function has_not_space( $string ) {
        if ( preg_replace( '/[\t\n\r\s]+/', '', $string ) == $string ) {
            return true;
        } else {
            return false;
        }
    }
    function replace_all_type_of_space_to_simple_space( $string ) {
        return preg_replace( '/[\t\n\r\s]+/', ' ', $string );
    }

    function is_ascii( $string ) {
        if ( mb_detect_encoding( $string, 'ASCII', true ) ) {
            return true;
        } else {
            return false;
        }
    }

    function has_html_prevented_chars( $string ) {
        // check contain these ",',>,/,= 
        if ( strpos( $string, '"' ) === false and strpos( $string, "'" ) === false and strpos( $string, ">" ) === false and strpos( $string, "/" ) === false ) {
            return false;
        } else {
            return true;
        }
    }
	function has_contain($needle, $string){
		if (strpos($string, $needle) === false) {
		return false;
			}else{
            return true;
		}
	}

    function starts_with( $string, $startString ) {
		settype($string,'string');
		settype($startString,'string');
        $len = strlen( $startString );
        return ( substr( $string, 0, $len ) === $startString );
    }
	/* NOT USED ANY WHERE
    #https://stackoverflow.com/questions/6875913/simple-how-to-replace-all-between-with-php
    function insert_between( $string, $pre, $after, $insert_between ) {
        $search = "/[^" . addslashes( $pre ) . "](.*)[^" . addslashes( $after ) . "/";
        $replace = $insert_between;
        $string = $string;
        return preg_replace( $search, $replace, $string );
    }
*/
    function is_valid_pattern( $pattern ) {
        if ( @preg_match( $pattern, 'test for pattern' ) === false ) {
            return false;
        } else {
            return true;
        }
    }
    //using for max and min in date time related fileds
    function check_date( $date ) {
        $date_elements = explode( '-', $date );

        if ( checkdate( settype( $date_elements[ 1 ], 'int' ), settype( $date_elements[ 2 ], 'int' ), settype( $date_elements[ 0 ], 'int' ) ) ) {
            return true;
        } else {
            return false;
        }
    }

    function check_time( $time ) {
        $time_elements = explode( ':', $time );
        if ( ( $time_elements[ 0 ] >= 0 or $time_elements[ 0 ] <= 24 )and( $time_elements[ 1 ] >= 0 or $time_elements[ 1 ] <= 59 )and count( $time_elements ) == 2 ) {
            return true;
        } elseif ( ( $time_elements[ 0 ] >= 0 or $time_elements[ 0 ] <= 24 )and( $time_elements[ 1 ] >= 0 or $time_elements[ 1 ] <= 59 )and( $time_elements[ 2 ] >= 0 or $time_elements[ 2 ] <= 59 )and count( $time_elements ) == 3 ) {
            return true;
        } else {
            return false;
        }
    }

    function check_datetime( $datetime ) {
        $datetime = strtoupper( $datetime );
        $datetime_elements = explode( 'T', $datetime );
        if ( $this->check_date( $datetime_elements[ 0 ] )and $this->check_time( $datetime_elements[ 1 ] )and count( $datetime_elements ) == 2 ) {
            return true;
        } else {
            return false; //date error
        }
    }

    function check_week( $week ) {
        $week = strtoupper( $week );
        $week_elements = explode( '-W', $week );
        if ( $this->check_date( $week_elements . '-01-01' )and( $week_elements >= 1 or $week_elements <= 53 )and count( $week_elements ) == 2 ) {
            return true;
        } else {
            return false; //date error
        }
    }
    //https://stackoverflow.com/questions/1252693/using-str-replace-so-that-it-only-acts-on-the-first-match
    function str_replace_first( $from, $to, $content ) {
        $from = '/' . preg_quote( $from, '/' ) . '/';

        return preg_replace( $from, $to, $content, 1 );
    }

}