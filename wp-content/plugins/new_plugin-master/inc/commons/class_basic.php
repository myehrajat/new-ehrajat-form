<?php
class str {

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
                //sst_error_log( 'its negtive but not number.' );
                return false;
            }
        } else {
            //echo 'its NOT minus<br />';
            //sst_error_log( 'its not negtive.' );
            return false;
        }
    }
    /**************************************************
     *version 1.0.0
     * this function return only numbers
     **************************************************/
    function is_positive_number( $str ) {
        if ( $str[ 0 ] <> '-'
            and $str <> 0 ) {
            //echo 'its minus<br />';
            if ( is_numeric( $str ) ) {
                return true;
            } else {
                //sst_error_log( 'its positive but not number.' );
                return false;
            }
        } else {
            //echo 'its NOT minus<br />';
            //sst_error_log( 'its not positive.' );
            return false;
        }
    }


    /**************************************************
     *version 1.0.0
     * this function is set option
     **************************************************/
    function is_absoulute_url( $url ) {
        $pattern = "/^(?:ftp|https?|feed):\/\/(?:(?:(?:[\w\.\-\+!$&'\(\)*\+,;=]|%[0-9a-f]{2})+:)*
		(?:[\w\.\-\+%!$&'\(\)*\+,;=]|%[0-9a-f]{2})+@)?(?:
		(?:[a-z0-9\-\.]|%[0-9a-f]{2})+|(?:\[(?:[0-9a-f]{0,4}:)*(?:[0-9a-f]{0,4})\]))(?::[0-9]+)?(?:[\/|\?]
		(?:[\w#!:\.\?\+=&@$'~*,;\/\(\)\[\]\-]|%[0-9a-f]{2})*)?$/xi";

        return ( bool )preg_match( $pattern, $url );
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

    function starts_with( $string, $startString ) {
        $len = strlen( $startString );
        return ( substr( $string, 0, $len ) === $startString );
    }

    function is_valid_pattern( $pattern ) {
        if ( @preg_match( $pattern, 'test for pattern' ) === false ) {
            return false;
        } else {
            return true;
        }
    }
}
class ids extends str {
    var $ids;
    var $ids_parts;
    var $ids_str;

    function __construct( $string = NULL ) {
        $this->get_ids( $string );
    }

    function is_exculsive_ids( $str ) {
        if ( $this->is_numerichyphen( $str ) ) {
            if ( $this->starts_with( $str, '-' ) ) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    function is_inclusive_ids( $str ) {
        if ( $this->is_numerichyphen( $str ) ) {
            if ( !$this->starts_with( $str, '-' ) ) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    function include_ids( array $ids, $inlculd_ids ) {
        if ( !empty( $inlculd_ids ) ) {
            if ( $this->is_range_ids( $inlculd_ids ) ) { //range
                $range_id = explode( '-', $inlculd_ids );
                $result_ids = array_merge( $ids, range( $range_id[ 0 ], $range_id[ 1 ] ) );
            } else { //non range
                $result_ids = array_merge( $ids, array( $inlculd_ids ) );
            }
        } else {
            return $ids;
        }
        return $result_ids;

    }

    function exclude_ids( array $ids, $exclude_ids ) {
        $exclude_ids = substr( $exclude_ids, 1 );
        if ( !empty( $exclude_ids ) ) {
            if ( $this->is_range_ids( $exclude_ids ) ) { //range
                $range_id = explode( '-', $exclude_ids );
                $result_ids = array_diff( $ids, range( $range_id[ 0 ], $range_id[ 1 ] ) );
            } else { //non range
                $result_ids = array_diff( $ids, array( $exclude_ids ) );
            }
        } else {
            return $ids;
        }
        return $result_ids;

    }
    /**************************************************
     *version 1.0.0
     * this function check the form match with is id num range like -11-21 or 12-15
     **************************************************/
    function is_range_ids( $str ) {
        $str_arr = explode( '-', $str );
        $count_str_arr = count( $str_arr );
        if ( strrpos( $str, '-' ) != 0 ) {
            if ( $count_str_arr == 2 ) {
                if ( $this->is_positive_number( $str_arr[ 0 ] )and $this->is_positive_number( $str_arr[ 0 ] ) ) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } else {
            if ( $count_str_arr == 3 ) {
                if ( $this->is_positive_number( $str_arr[ 1 ] )and $this->is_positive_number( $str_arr[ 2 ] ) ) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }
    /**************************************************
     *version 1.0.0
     * this function check every id validation if not valid ignore but log it
     **************************************************/
    function is_valid_single_id( $str ) {
        if ( !empty( $str ) ) {
            $negative = $this->is_exculsive_ids( $str );
            if ( $negative ) {
                //now its like positive to check easily
                $str = substr( $str, 1 );
            }
            $ids_arr = explode( '-', $str );
            $ids_arr_count = count( $ids_arr );
            //check has extra dashs
            if ( $ids_arr_count == 2 or $ids_arr_count == 1 ) {
                //check is numeric two side of dash
                if ( ( $ids_arr_count == 1 and $this->is_positive_number( $ids_arr[ 0 ] ) )or( $ids_arr_count == 2 and $this->is_positive_number( $ids_arr[ 0 ] )and $this->is_positive_number( $ids_arr[ 1 ] ) ) ) {
                    return true;
                } else {
                    return false;
                }

            } else {
                $return = false;
            }

            return $return;
        } else {
            return false;
        }
    }

    function is_valid_id_str( $str ) {
        $ids = explode( ',', $str );
        foreach ( $ids as $id ) {
            if ( $this->is_valid_single_id( $id ) == false ) {
                return false;
            }
            return true;
        }
    }
    /**************************************************
     *version 1.0.0
     * this function return corrected of ids for only numbers and - and , in string
     **************************************************/

    function is_eval_str( $string ) {
        return $this->starts_with( $string, EVAL_STR );
    }

    function run_eval( $ecode ) {
        $ecode = str_replace( EVAL_STR, '', $ecode );
        try {
            $result = eval( $ecode );
        } catch ( Throwable $error ) {
            sst_error_log( 'eval string has syntax error.' );
            $result = NULL;
        }
        return $result;
    }
function is_eval_run($string){
        if ( $this->is_eval_str( $string ) ) {
            $result = $this->run_eval( $string );
        } else {
            $result = $string;
        }
	return $result;
}
    function get_ids_str( $string ) {
		if(!empty( $string )){
			$ids_str = $this->is_eval_run( $string );
			if ( $this->is_valid_id_str( $ids_str ) ) {
				$this->ids_str = $ids_str;
				return $this->ids_str;
			} else {
				sst_error_log( 'ids string id malformatted:.'.$ids_str );
				return NULL;
			}
		}
    }

    function get_ids_parts( $ids ) {
        $ids = $this->get_ids_str( $ids );
        if ( !empty($ids) ) {
            $ids_parts = explode( ',', $ids );
            $this->ids_parts = $ids_parts;

            return $this->ids_parts;
        } else {
          //  sst_error_log( 'ids provided is not valid check it again.' );
            return NULL;
        }
    }

    function get_ids( $ids, $single_id = false ) {
        $result_ids = array();
        $this->ids_parts = $this->get_ids_parts( $ids );
        if ( $this->ids_parts ) {
            foreach ( $this->ids_parts as $id ) {
                $is_minus = $this->is_exculsive_ids( $id );
                if ( $is_minus == false ) {
                    $result_ids = $this->include_ids( $result_ids, $id );
                } else {
                    $minus_ids[] = $id;
                }
            }
            if ( !empty( $minus_ids ) ) {
                foreach ( $minus_ids as $minus_id ) {
                    $result_ids = $this->exclude_ids( $result_ids, $minus_id );
                }
            }
            if ( !empty( $result_ids ) ) {
                $count_result = count( $result_ids );
            } else {
                sst_error_log( 'the id that you have provided return nothing after processing.' );
                $result_ids = NULL;
            }
            if ( $single_id == TRUE and $count_result == 1 ) {
                $result_ids = $result_ids[ 0 ];
            }
            $this->ids = $result_ids;
        } else {
            $this->ids = NULL;
        }
        return $this->ids;
    }
}

class common extends ids {
    /**************************************************
     *version 1.0.0
     * this function return only numbers
     **************************************************/

    //get a record
    //$identifier is for debugging only and when you want to what has been returned use specific identifier
    function get_by_id( $id, $table_name ) {
        global $wpdb;
        if ( $this->is_positive_number( $id ) ) {
            if ( $table_name ) {
                $sql = "SELECT * FROM `" . $table_name . "` WHERE `id`= " . $id . " LIMIT 1";
                $results = $wpdb->get_results( $sql );
                if ( $wpdb->last_error !== '' ) {
                    sst_error_log( 'get_by_id MYSQL query failed due to syntax error.' );
                    $return = false;
                } else {
                    if ( !empty( $results ) ) {
                        $return = $results[ 0 ];
                    } else {
                        sst_error_log( 'id provided for get_by_id is not correct.Can not find id:"' . $id . '" in table:"' . $table_name . '".' );
                        $return = false;
                    }
                }
            } else {
                sst_error_log( 'table name NOT provided in get_by_id().' );
                $return = false;

            }
        } else {
            sst_error_log( 'ids provided in get_by_id() must be only number and we will not fix it.' );
            $return = false;

        }
        return $return;
    }


    /**************************************************
     *version 1.0.0
     *only str with a-z or A-Z - _ are acceptable this correct it
     **************************************************/
    /*
    https://html.spec.whatwg.org/multipage/syntax.html#attributes-2

     	"Attribute names must consist of one or more characters other than controls, U+0020 SPACE, U+0022 ("), U+0027 ('), U+003E (>), U+002F (/), U+003D (=), and noncharacters"
    	following characters are not allowed:
    	all char in brace { \"'>/=	}
    	controls:https://infra.spec.whatwg.org/#control
    	noncharacter:https://infra.spec.whatwg.org/#noncharacter
    test by:https://www.regextester.com/103704
    */


}