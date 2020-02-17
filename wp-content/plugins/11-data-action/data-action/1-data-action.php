<?php
class data_action extends common {
    function __construct() {
        parent::__construct();
        if ( $GLOBALS[ 'vals' ][ '__sst__data_actions' ] ) {
            $this->vals = $GLOBALS[ 'vals' ];
            $this->get_data_actions();
            $this->do_data_actions();

        }
    }

    function get_data_actions() {
        $this->data_actions = array();
        $data_action_ids_str = $this->vals[ '__sst__data_actions' ];
        $data_action_ids = $this->get_ids( $data_action_ids_str );
        foreach ( $data_action_ids as $data_action_id ) {
            $this->data_actions[] = $this->get_by_id( $data_action_id, $GLOBALS[ 'sst_tables' ][ 'data_action' ] );
        }
    }

    function do_data_actions() {
        foreach ( $this->data_actions as $data_action_obj ) {
            $this->data_action_obj = $data_action_obj;
            $this->do_data_action( $this->data_action_obj );
        }
        unset( $this->data_action_obj );
    }

    function do_data_action( $data_action_obj ) {
        global $wpdb;
        switch ( $this->mode ) {
            case "add":

                $this->create_colval_data( $data_action_obj->colval_ids );
                //$q = "INSERT INTO `".$wpdb->prefix.CUSTOM_DB_PREFIX.$data_action_obj->table."` ("..")"
                break;
            case "edit":

                break;
        }
    }

    function create_colval_data( $colval_ids_str ) {
        $colval_ids = $this->get_ids( $colval_ids_str );
        $i = 0;
        foreach ( $colval_ids as $colval_id ) {
            $colval_obj = $this->get_by_id( $colval_id, $GLOBALS[ 'sst_tables' ][ 'data_action_colval' ] );
            //krm($colval_id);
            //krm($colval_obj);
            if ( $colval_obj != false ) {
                $colval_obj->type = strtolower( $colval_obj->type );
                //krm( $this->vals );
                if ( $colval_obj->type !== 'file' ) {
                    $colval_sort_by_depth[ $i ][ 'depth' ] = $this->find_array_depth( $this->vals[ $colval_obj->value ] );
                    $colval_sort_by_depth[ $i ][ 'colval_obj' ] = $colval_obj;
                } else {
                    $colval_sort_by_depth[ $i ][ 'depth' ] = $this->find_array_depth( $this->vals[ '__sst__files' ][ $colval_obj->value ][ 'name' ] );
                    $colval_sort_by_depth[ $i ][ 'colval_obj' ] = $colval_obj;
                }
                //$colval_sort_by_depth[ $i ][ 'route' ] = $this->find_key_route( $this->vals[ $colval_obj->value ] );
                $i++;
            } else {
                //krm('colval_id provided is not correct no obj found:.' . $colval_id);
                $this->error_log( 'colval_id provided is not correct no obj found:.' . $colval_id );
            }
        }
        $sort_depth = array_column( $colval_sort_by_depth, 'depth' );
        $sort_colval_obj = array_column( $colval_sort_by_depth, 'colval_obj' );
        $sorted_colvals_obj = $this->array_orderby( $colval_sort_by_depth, $sort_depth, SORT_ASC );
        //  krm( $this->vals );
        foreach ( $sorted_colvals_obj as $sorted_colvals_vals ) {
            switch ( $colval_obj->type ) {
                case "simple-variable":
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->value ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->value ] );
                    break;
                case "variable":
                case "function":
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->value ] = $this->flatten( eval( 'return $sorted_colvals_vals[ "colval_obj"]->value; ' ) );
                    break;
                case "ecode":
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->value ] = $this->flatten( eval( '$sorted_colvals_vals[ "colval_obj"]->value; ' ) );
                    break;
                case "file":
                    // krm( $this->data_action_obj );
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->value ] = $this->upload_files(
                        $this->vals[ '__sst__files' ][ $sorted_colvals_vals[ 'colval_obj' ]->value ],
                        $sorted_colvals_vals[ 'colval_obj' ]->file_path,
                        $this->data_action_obj->default_file_path );
                    break;
                case "mysql_code":
                    //$all_values[ $sorted_colvals_vals[ 'colval_obj' ]->value ] = $this->flatten(  eval('return $sorted_colvals_vals[ "colval_obj"]->value; '));
                    break;
                default:
                    //$all_values[ $sorted_colvals_vals[ 'colval_obj' ]->value ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->value ] );
                    break;
            }
        }
        krm($all_values);
        $ready_data = $this->create_all_data2( $all_values );
        krm($ready_data);

    }

    function create_all_data2( $all_values, $processed_value = array() ) {
        static $result;
        $key_first = array_key_first( $all_values );
        if ( array_key_first( $all_values[ $key_first ] ) !== '*' ) {
            foreach ( $all_values[ $key_first ] as $first_route => $first_value ) {
                $result[ $first_route ][ $key_first ] = $first_value;
                //krm($result);
                //die;
                if ( !empty( $processed_value ) ) {
                    foreach ( $processed_value as $check_route => $s ) {
                        if ( ($this->starts_with( ( string )$first_route, ( string )$check_route ) and $this->is_after_base_route_dash( $first_route, $check_route ) ) or
						   ( string )$first_route == ( string )$check_route) {
                            // krm( $result );
                            $result[ $first_route ] = array_merge( $result[ $first_route ], $result[ $check_route ] );
                            //unset($result[$check_route]);
							//krm($check_route);
                            $to_unset_keys[] = $check_route;

                            $result[ $first_route ][ $key_first ] = $first_value;
                        }
                    }

                }
            }
        } else {
            $add_to_all[ $key_first ] = $all_values[ $key_first ][ '*' ];
        }
        if ( is_array( $to_unset_keys ) ) {
			//krm($to_unset_keys );
            foreach ( $to_unset_keys as $to_unset_key ) {
                unset( $result[ $to_unset_key ] );
            }
			/*
            if ( is_array( $to_unset_keys ) ) {
                foreach ( $processed_value as $to_unset_key ) {
                    //unset( $result[ $to_unset_key ] );
                }
            }
			*/
        }

        //krm($all_values);
        //krm($result);
        unset( $all_values[ $key_first ] );

        if ( !empty( $all_values ) ) {
            $this->create_all_data2( $all_values, $result );
            exit();
        }
		
        if ( !empty( $add_to_all ) ) {
            foreach ( $add_to_all as $add_input_name => $add_input_value ) {
				if(!empty($result)){
					foreach ( $result as $single_record_key => $single_record ) {
						$result[ $single_record_key ][ $add_input_name ] = $add_input_value;
					}
				}else{//there is no extra input or block
					$result[0][ $add_input_name ] = $add_input_value;
				}
            }
        }
		$result = array_values($result);
        //krm( $result );
		return  $result ;
    }


    function upload_files( $files, $colval_file_path = NULL, $default_data_action_file_path = NULL ) {
        //krm($files);
        $f_names = $this->flatten( $files[ 'name' ] );
        $f_type = $this->flatten( $files[ 'type' ] );
        $f_tmp_name = $this->flatten( $files[ 'tmp_name' ] );
        $f_error = $this->flatten( $files[ 'error' ] );
        $f_size = $this->flatten( $files[ 'size' ] );

        foreach ( $f_names as $key_route => $name ) {
            $dest_path = '';
            if ( $f_error[ $key_route ] == 0 ) {
                if ( !empty( $colval_file_path ) ) {
                    $dest_path = $this->make_upload_dir( ltrim($colval_file_path,'/') );
                } elseif ( !empty( $default_data_action_file_path ) ) {
                    $dest_path = $this->make_upload_dir( ltrim($default_data_action_file_path,'/') );
                } elseif ( !empty( DATA_ACTION_DEFAULT_UPLOAD_PATH ) ) {
                        $dest_path = $this->make_upload_dir( ltrim(DATA_ACTION_DEFAULT_UPLOAD_PATH,'/') );
                    } else {
                        $dest_path = $_SERVER[ 'DOCUMENT_ROOT' ] . '/';
                    }
                    //krm($dest_path.$files[ 'name' ][$key_route]);
				//$dest_path = ltrim($dest_path,'/');
                $upload_path = $dest_path . $this->user_id . '_' . time() . '_' . $f_names[ $key_route ];
                $success = move_uploaded_file( $f_tmp_name[ $key_route ], $upload_path );
                $upload_url = $this->path2url( $upload_path );
                if ( $success == true ) {
                    //krm( $key_route );
                    //krm( $upload_url );
                    $urls[ $key_route ] = $upload_url;
                } else {
                    $urls[ $key_route ] = NULL;
                }

                //krm($r);
            } elseif ( $f_error[ $key_route ] == 1 ) {
                //The uploaded file exceeds the upload_max_filesize directive in php.ini
            } elseif ( $f_error[ $key_route ] == 2 ) {
                //The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form.
            } elseif ( $f_error[ $key_route ] == 3 ) {
                //The uploaded file was only partially uploaded.
            } elseif ( $f_error[ $key_route ] == 4 ) {
                //No file was uploaded.
            } elseif ( $f_error[ $key_route ] == 6 ) {
                //Missing a temporary folder. Introduced in PHP 5.0.3.
            } elseif ( $f_error[ $key_route ] == 7 ) {
                //Failed to write file to disk. Introduced in PHP 5.1.0.
            } elseif ( $f_error[ $key_route ] == 8 ) {
                //A PHP extension stopped the file upload. PHP does not provide a way to ascertain which extension caused the file upload to stop; examining the list of loaded extensions with phpinfo() may help. Introduced in PHP 5.2.0.
            } else {
                //Unkown Error
            }
        }

        return $urls;
        //if(is_array($files['name']){

        //}
    }

    function path2url( $file ) {
        $Protocol = $this->get_protocol();
        return $Protocol . $_SERVER[ 'HTTP_HOST' ] . '/' . str_replace( $_SERVER[ 'DOCUMENT_ROOT' ], '', $file );
    }

    function get_protocol() {
        $protocol = ( !empty( $_SERVER[ 'HTTPS' ] ) && $_SERVER[ 'HTTPS' ] !== 'off' || $_SERVER[ 'SERVER_PORT' ] == 443 ) ? "https://" : "http://";
        return $protocol;
    }

    function make_upload_dir( $upload_path ) {
        if ( is_dir( $upload_path ) ) {
            if ( !is_writable( $upload_path ) ) {
                chmod( $upload_path, 0777 );
            }
        } else {
            mkdir( $upload_path, 0777, true );
            return $this->make_upload_dir( $upload_path );
        }
        return $upload_path;
    }



    function is_after_base_route_dash( $other_route, $base_route ) {
        if ( mb_substr( $other_route, strlen( ( string )$base_route ), 1 ) == '-' ) {
            return true;
        } else {
            return false;
        }
    }
    //source:https://ideone.com/1dBqx
    function flatten( $array, $sep = '-', $prefix = '' ) {
        $result = array();
        //krm($array);
        if ( is_array( $array ) ) {
            foreach ( $array as $key => $value ) {
                if ( is_array( $value ) ) {
                    $result = $result + $this->flatten( $value, $sep, $prefix . $key . $sep );
                } else {
                    $result[ $prefix . $key ] = $value;
                }
            }
        } else {
            if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {

                $result[ '*' ] = $array;
            }
        }
        return $result;
    }

    //https://www.php.net/manual/en/function.array-multisort.php#100534

    function array_orderby() {


        $args = func_get_args();
        $data = array_shift( $args );
        foreach ( $args as $n => $field ) {
            if ( is_string( $field ) ) {
                $tmp = array();
                foreach ( $data as $key => $row )
                    $tmp[ $key ] = $row[ $field ];
                $args[ $n ] = $tmp;
            }
        }
        $args[] = & $data;
        call_user_func_array( 'array_multisort', $args );
        return array_pop( $args );
    }

    function find_array_depth( $arr ) {
        static $dep;
        static $last_key;
        if ( is_array( $arr ) ) {
            if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
                $dep = 0;
                // $last_keys = '';

            }

            // $array_keys = array_keys( $arr );
            // $last_key .= '-' . end( $array_keys );
            //krm( $arr );
            $dep++;
            $this->find_array_depth( reset( $arr ) );
        } else {
            if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
                $dep = 0;
                // $last_keys = '';

            }
            return $dep;

        }
        // krm( $arr );
        // krm( $last_key );
        return $dep;
    }

}