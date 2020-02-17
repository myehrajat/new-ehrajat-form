<?php
interface ids_interface {
    function is_exculsive_ids( $str );

    function is_inclusive_ids( $str );

    function include_ids( array $ids, $inlculd_ids );

    function exclude_ids( array $ids, $exclude_ids );

    function is_range_ids( $str );

    function is_valid_single_id( $str );

    function is_valid_id_str( $str );

    function is_eval_str( $string );

    function run_eval( $ecode, $a = NULL );

    function is_eval_run( $string, $a = NULL );

    function get_ids_str( $string );

    function get_ids_parts( $ids );

    function get_ids( $ids, $single_id = false );

    function random_string( $length = 12 );
}
class ids extends str implements ids_interface {
    private $ids;
    private $ids_parts;
    private $ids_str;
    function __construct( $string = NULL ) {
		parent::__construct();
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

    function run_eval( $ecode, $a = NULL ) {
        $eval_var = $a;
        $vals = $a;
        $ecode = str_replace( EVAL_STR, '', $ecode );
		//krm($vals);
        try {
            //krm($ecode );
            $result = eval( $ecode );
        } catch ( Throwable $error ) {
            $this->error_log( 'eval string has syntax error.' );
            $result = NULL;
        }
        return $result;
    }

    function is_eval_run( $string, $a = NULL ) {
        if ( $this->is_eval_str( $string ) ) {
            $result = $this->run_eval( $string, $a );
        } else {
            $result = $string;
        }
        return $result;
    }

    function get_ids_str( $string ) {
        if ( !empty( $string ) ) {
            $ids_str = $this->is_eval_run( $string );
            if ( $this->is_valid_id_str( $ids_str ) ) {
                $this->ids_str = $ids_str;
                return $this->ids_str;
            } else {
                $this->error_log( 'ids string id malformatted:.' . $ids_str );
                return NULL;
            }
        }
    }

    function get_ids_parts( $ids ) {
        $ids = $this->get_ids_str( $ids );
        if ( !empty( $ids ) ) {
            $ids_parts = explode( ',', $ids );
            $this->ids_parts = $ids_parts;

            return $this->ids_parts;
        } else {
            //  $this->error_log( 'ids provided is not valid check it again.' );
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
                $this->error_log( 'the id that you have provided return nothing after processing.' );
                $result_ids = array();
            }
            if ( $single_id == TRUE ) {
                $result_ids = $result_ids[ 0 ];
            }
            $this->ids = $result_ids;
        } else {
            $this->ids = array();
        }
        return $this->ids;
    }

    function random_string( $length = 12 ) {
        $str = "";
        $characters = array_merge( range( 'A', 'Z' ), range( 'a', 'z' ), range( '0', '9' ) );
        $max = count( $characters ) - 1;
        for ( $i = 0; $i < $length; $i++ ) {
            $rand = mt_rand( 0, $max );
            $str .= $characters[ $rand ];
        }
        return $str;
    }
}