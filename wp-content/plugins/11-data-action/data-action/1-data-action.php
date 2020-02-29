<?php
class data_action extends process {
    function __construct() {
        parent::__construct();
        //krm($GLOBALS[ 'vals' ][ '__sst__data_actions' ]);
        if ( $GLOBALS[ 'vals' ][ '__sst__data_actions' ] ) {
            $this->vals = $GLOBALS[ 'vals' ];
            //krm($GLOBALS[ 'vals' ]);
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
                //$this->create_colval_data( $data_action_obj->colval_ids );
                break;
            case "view":

                break;
        }

        foreach ( $this->db_data as $one_ready_data ) {
            $this->add_to_table( $wpdb->prefix . $data_action_obj->table, $one_ready_data, $this->mysql_code_col_vals );
        }
    }

    function create_colval_data( $colval_ids_str ) {
        //krm($this->vals);
        $org_vals = $this->vals;
        $this->mysql_code_col_vals = '';
        $colval_ids = $this->get_ids( $colval_ids_str );
        $i = 0;
        foreach ( $colval_ids as $colval_id ) {
            $colval_obj = $this->get_by_id( $colval_id, $GLOBALS[ 'sst_tables' ][ 'data_action_colval' ] );
            if ( $colval_obj != false ) {
                $colval_obj->type = strtolower( $colval_obj->type );
                if ( $colval_obj->type !== 'file' ) {
                    $colval_sort_by_depth[ $i ][ 'depth' ] = $this->find_array_depth( $this->vals[ $colval_obj->input_name ] );
                    $colval_sort_by_depth[ $i ][ 'colval_obj' ] = $colval_obj;
                } elseif ( $colval_obj->type !== 'mysql-code' ) {
                    $colval_sort_by_depth[ $i ][ 'depth' ] = $this->find_array_depth( $this->vals[ '__sst__files' ][ $colval_obj->input_name ][ 'name' ] );
                    $colval_sort_by_depth[ $i ][ 'colval_obj' ] = $colval_obj;
                }
                $i++;
            } else {
                $this->error_log( 'colval_id provided is not correct no obj found:.' . $colval_id );
            }
        }
        $sort_depth = array_column( $colval_sort_by_depth, 'depth' );
        //krm($sorted_colvals_obj);

        $sort_colval_obj = array_column( $colval_sort_by_depth, 'colval_obj' );
        $sorted_colvals_obj = $this->array_orderby( $colval_sort_by_depth, $sort_depth, SORT_ASC );
        // krm($sorted_colvals_obj);
        foreach ( $sorted_colvals_obj as $u => $sorted_colvals_vals ) {
            //krm( $sorted_colvals_vals );
            switch ( $sorted_colvals_vals[ 'colval_obj' ]->type ) {
                case "simple-variable":
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->value ] );
                    break;
                case "variable":
                case "function":
                    $ecodes[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = 'return ' . $sorted_colvals_vals[ 'colval_obj' ]->value;
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
                    break;
                case "ecode":
                case "ecode-one-per-record":
                    $ecodes[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $sorted_colvals_vals[ 'colval_obj' ]->value;
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
                    break;
                case "ecode-group":
                case "ecode-multiple-per-record":
                    $ecodes_multiple[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $sorted_colvals_vals[ 'colval_obj' ]->value;
                    //krm($this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ]);
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
                    //krm( $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
                    break;
                case "file":
                    $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->upload_files(
                        $this->vals[ '__sst__files' ][ $sorted_colvals_vals[ 'colval_obj' ]->value ],
                        $sorted_colvals_vals[ 'colval_obj' ]->file_path,
                        $this->data_action_obj->default_file_path );
                    break;
                case "mysql-code":
                    $mysql_code_col_vals[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $sorted_colvals_vals[ 'colval_obj' ]->value;
                    $this->mysql_code_col_vals = $mysql_code_col_vals;
                    unset( $sorted_colvals_obj[ $u ] );
                    break;
                default:
                    break;
            }
        }

		krm( $all_values );
        if ( !empty( $ecodes_multiple ) ) {
            foreach ( $ecodes_multiple as $group_input_name => $ecode ) {
                $g_all_values = $this->group_data( $all_values, $group_input_name );
				//krm($group_input_name);
                $all_values[$group_input_name] = $this->do_ecode_multiple( $g_all_values, $ecode, $group_input_name );
                
				
            }
			krm( $all_values );
			
            //$this->group_data();
            //$all_values = $this->group_for_ecodes_multiple( $all_values, $ecodes_multiple );
            //
        }
        //$all_values = $this->sample_data();
        $all_values = $this->more_element_last( $all_values );
        //krm( $all_values ); // this is original sent data before triggering data-action
        $ready_data = $this->create_all_data( $all_values );
        //krm( $ready_data ); //this used for creating database query 
        if ( !empty( $ecodes ) ) {
            //krm($ecodes);
            $ready_data = $this->do_ecodes( $ready_data, $ecodes );
            //krm( $ready_data ); //this used for creating database query 
        }
        //krm( $ready_data );
        $this->ready_data_for_db( $ready_data, $sorted_colvals_obj );
        //krm( $this->db_data ); //this is for creating database query 
        $final_vals = $this->prepare_final_vals( $all_values );
        //krm( $final_vals ); //this used for saving in vals table
        $this->save_final_vals( $final_vals );

    }
	function prepare_array_str_for_ecode($group_values){
		foreach($group_values as $column_name=>$input_values){
			$array_str = 'array(';
            foreach ( $input_values as $input_value ) {
                $array_str_elements[]= "'" . $input_value . "'";
            }
			$array_str .= implode(',',$array_str_elements);
			$array_str .= ')';
			$group_values[$column_name] = $array_str;
			 $array_str_elements = array();
		}
		return $group_values;
	}
	//function 
    /**********
    this will get all_values and an input_name and find its input parent eg your provided input is aa[0][0][0] it and there is bb[0][0] this functiom return  bb[0][0]
    ******/
    #https://stackoverflow.com/questions/795625/how-to-set-an-arrays-internal-pointer-to-a-specific-position-php-xml
    function do_ecode_multiple( $all_values, $ecode, $group_input_name ) {
		foreach($all_values as $k=>$all_value){
			$group_values = $this->prepare_array_str_for_ecode( $all_value);
			 $ecode_group_result = $this->run_eval(  EVAL_STR .$this->replace_attribute_short_codes( $ecode, $group_values, '{array:', '}') . ';');	
			$res[array_key_first($all_value[$group_input_name ])] = $ecode_group_result;
		}
		krm($res);
		return $res;;
    }

    function get_parent_input_name( $all_values, $input_name ) {
        if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ and array_key_first( $all_values ) === $input_name ) {
            return NULL;
        }
        //krm( $input_name );
        //die;
        $input_name_route_count = count( explode( '-', array_key_first( $all_values[ $input_name ] ) ) );
        $key_last_input_name = array_key_last( $all_values );
        while ( key( $all_values ) !== $input_name ) {
            next( $all_values );
            if ( $key_last_input_name != $input_name ) {
                $this->error_log( 'your column for finding parent in get_parent_input_name is not found' );
                break;
                return NULL;
            }
        }
        $parent_values = prev( $all_values );
        $parent_input_name = key( $all_values );
        $parent_input_route = array_key_first( $parent_values );
        $parent_input_name_route_count = count( explode( '-', $parent_input_route ) );
        if ( $parent_input_name_route_count === $input_name_route_count and $parent_input_route !== '*' ) {
            $parent_input_name = $this->get_parent_input_name( $all_values, $parent_input_name );
        } elseif ( $parent_input_name_route_count === '*'
                and $input_name_route_count === '*' ) {
                $parent_input_name = NULL;
            }
            //krm( $parent_input_name);
            //die;
        return $parent_input_name;
    }


    function group_data( $all_values, $group_by_input_name ) {
        //static $parent, $grouped;
        $parent = false;
        //$all_values = $this->sample_data();
        //$group_by_input_name = 'input_nine';

        $parent_input_name = $this->get_parent_input_name( $all_values, $group_by_input_name );
        //krm($all_values);
        //krm($group_by_input_name);
        //krm($parent_input_name);

        if ( count( explode( '-', array_key_first( $all_values[ $group_by_input_name ] ) ) ) == 1 ) {
            $grouped[] = $all_values;
            goto return_result;
        }

        foreach ( $all_values[ $parent_input_name ] as $k => $single_value ) {
            $grouped[ $k ][ $parent_input_name ] = array( $k => $single_value );
        }
        foreach ( array_reverse( $all_values ) as $input_name => $input_values ) {
            if ( $input_name == $parent_input_name ) {
                $parent = true;
                continue;
            }
            if ( $parent == false ) {
                foreach ( $input_values as $input_route => $input_value ) {
                    foreach ( $grouped as $grouped_route => $grouped_value ) {
                        settype( $input_route, 'string' );
                        settype( $grouped_route, 'string' );
                        if ( $this->starts_with( $input_route, $grouped_route )and substr( $input_route, strlen( $grouped_route ), 1 ) === '-' ) {
                            $grouped[ $grouped_route ][ $input_name ][ $input_route ] = $input_value;
                        }
                    }
                }
            } else {
                foreach ( $grouped as $grouped_route => $grouped_value ) {
                    foreach ( $input_values as $input_route => $input_value ) {
                        settype( $input_route, 'string' );
                        settype( $grouped_route, 'string' );
                        $check = substr( $grouped_route, strlen( ( string )$input_route ), 1 );
                        if ( $check === '0' ) {
                            //krm( $check );
                        }
                        if ( $this->starts_with( $grouped_route, $input_route )and( empty( $check )or $check === '-'
                                or $check === false )and $check !== '0' ) {
                            if ( $input_route == '0-0-1' ) {
                                // krm( $check );
                                //krm( empty( $check ) );
                            }

                            if ( $input_name == 'input_seven' ) {
                                //krm( 'ffffffffffffffff' );
                            }
                            $grouped[ $grouped_route ][ $input_name ][ $input_route ] = $input_value;
                        } elseif ( $input_route === '*' ) {
                            $grouped[ $grouped_route ][ $input_name ][ $input_route ] = $input_value;
                        }
                    }
                }

            }

        }
        return_result:
            //krm($grouped);
            return $grouped;
    }
    #https://stackoverflow.com/questions/12624153/move-an-array-element-to-a-new-index-in-php
    function move_element( & $array, $a, $b ) {
        $p1 = array_splice( $array, $a, 1 );
        $p2 = array_splice( $array, 0, $b );
        $array = array_merge( $p2, $p1, $array );
    }
    #move element (input with same level) with more data to last
    function more_element_last( $all_values ) {
        $array_key_last = array_key_last( $all_values );
        $i = 0;
        foreach ( $all_values as $input_name => $input_values ) {
            if ( $array_key_last !== $input_name ) {
                if ( count( $input_values ) > count( next( $all_values ) ) ) {
                    $this->move_element( $all_values, $i, $i + 1 );
                }
            }
            $i++;
        }
        return $all_values;
    }

    function create_all_data( $all_values ) {
        //krm($all_values);
        $all_values = array_reverse( $all_values );
        //krm($all_values);
        foreach ( $all_values as $input_name => $input_values ) {
            if ( !isset( $result ) ) {
                foreach ( $input_values as $input_route => $input_value ) {
                    # $input_route will not change later its the lowest level route
                    $result[ $input_route ][ $input_name ] = $input_value;
                }
            } else {
                foreach ( $input_values as $input_route => $input_value ) {
                    foreach ( $result as $single_record_route => $single_record_value ) {
                        if ( $this->starts_with_route( $single_record_route, $input_route )or( string )$single_record_route == ( string )$input_route or $input_route === '*' ) {
                            $result[ $single_record_route ][ $input_name ] = $input_value;
                        }
                    }
                }
            }
        }


        return $result;

    }
    #return child  true if its child route .sibling will return false
    function starts_with_route( $child_route, $parent_route ) {
        if ( ( $this->starts_with( $child_route, $parent_route )and $this->is_after_base_route_dash( $child_route, $parent_route ) ) ) {
            return true;
        } else {
            return false;
        }
    }


    function group_for_ecodes_multiple( $all_values, $ecodes_multiple ) {
        foreach ( $ecodes_multiple as $input_name => $ecode_multiple ) {
            //krm( $all_values[$input_name]);
            //krm(array_key_first($all_values[$input_name]));
            $route = array_key_first( $all_values[ $input_name ] );
            if ( $route !== '*' ) {
                //krm($route);
                $route_exploded = explode( '-', $route );
                $route_count = count( $route_exploded );
                if ( $route_count > 1 ) {
                    foreach ( $all_values[ $input_name ] as $input_name_route => $input_name_value ) {
                        $new_input_name_route = explode( '-', $input_name_route );
                        array_pop( $new_input_name_route );
                        $new_input_name_route = implode( '-', $new_input_name_route );
                        $all_values[ $input_name ][ $new_input_name_route ][] = $all_values[ $input_name ][ $input_name_route ];
                        unset( $all_values[ $input_name ][ $input_name_route ] );

                    }
                    //krm( $all_values[ $input_name ] );
                } else { //if($route_count==1) eg vvvv[0]
                    $all_values[ $input_name ][ '*' ] = $all_values[ $input_name ];
                }
            } else {
                $all_values = $all_values;
            }
            /*
            krm( $all_values[$input_name]);
            $arr =  explode('-',array_key_first($all_values[$input_name]));
            array_pop($arr);
            krm( $arr);
            $all_values[$input_name];
            */
        }
        return $all_values;
    }

    function do_ecodes( $ready_data, $ecodes ) {
        //krm($ecodes);
        foreach ( $ready_data as $k => $single_record ) {
            foreach ( $ecodes as $input_name => $ecode ) {

                $ready_data[ $k ][ $input_name ] = $this->run_eval( EVAL_STR . $this->replace_attribute_short_codes( $ecode, $single_record, '{vals:', '}', '\'' ) . ';' );
            }

        }
        //krm($ready_data);
        return $ready_data;
    }
    #https://stackoverflow.com/questions/6875913/simple-how-to-replace-all-between-with-php
    function insert_between( $string, $pre, $after, $insert_between ) {
        $search = "/[^" . addslashes( $pre ) . "](.*)[^" . addslashes( $after ) . "/";
        $replace = $insert_between;
        $string = $string;
        return preg_replace( $search, $replace, $string );
    }

    function save_final_vals( $final_vals ) {
        $this->save_vals( $final_vals );
    }
    #return array of column database as key and input value as values
    function ready_data_for_db( $ready_data, $sorted_colvals_obj ) {
        //krm( $ready_data );
        foreach ( $ready_data as $i => $one_record_data ) {
            foreach ( $sorted_colvals_obj as $colval ) {
                $this->db_data[ $i ][ $colval[ 'colval_obj' ]->column ] = $one_record_data[ $colval[ 'colval_obj' ]->column ];
            }
        }
    }

    function prepare_final_vals( $all_values ) {
        $all_values;
        foreach ( $all_values as $input_name => $possible_values ) {
            foreach ( $possible_values as $route => $single_value ) {
                if ( $route !== '*' ) {
                    $input_html_route = '[' . implode( '][', explode( '-', $route ) ) . ']';
                    $final_vals[ $input_name . $input_html_route ] = $single_value;
                } else {
                    $final_vals[ $input_name ] = $single_value;
                }
            }
        }
        return $final_vals;
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
                    $dest_path = $this->make_upload_dir( ltrim( $colval_file_path, '/' ) );
                } elseif ( !empty( $default_data_action_file_path ) ) {
                    $dest_path = $this->make_upload_dir( ltrim( $default_data_action_file_path, '/' ) );
                } elseif ( !empty( DATA_ACTION_DEFAULT_UPLOAD_PATH ) ) {
                        $dest_path = $this->make_upload_dir( ltrim( DATA_ACTION_DEFAULT_UPLOAD_PATH, '/' ) );
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

    function sample_data() {
        $all_values = array(
            'input_one' => array( '*' => 'input_one_val' ),
            'input_two' => array( '*' => 'input_two_val' ),
            'input_three' => array(
                '0' => 'input_three_val',
                '1' => 'input_three_val',
                '2' => 'input_three_val' ),
            'input_four' => array(
                '0' => 'input_four_val',
                '1' => 'input_four_val',
                '2' => 'input_four_val' ),
            'input_five' => array(
                '0-0' => 'input_five_val', '0-1' => 'input_five_val', '0-2' => 'input_five_val',
                '1-0' => 'input_five_val', '1-1' => 'input_five_val', '1-2' => 'input_five_val',
                '2-0' => 'input_five_val', '2-1' => 'input_five_val', '2-2' => 'input_five_val',
            ),
            'input_six' => array(
                '0-0' => 'input_six_val', '0-1' => 'input_six_val', '0-2' => 'input_six_val',
                '1-0' => 'input_six_val', '1-1' => 'input_six_val', '1-2' => 'input_six_val',
                '2-0' => 'input_six_val', '2-1' => 'input_six_val', '2-2' => 'input_six_val',
            ),
            'input_seven' => array(
                '0-0-0' => 'input_seven_val', '0-0-1' => 'input_seven_val', '0-0-2' => 'input_seven_val',
                '0-1-0' => 'input_seven_val', '0-1-1' => 'input_seven_val', '0-1-2' => 'input_seven_val',
                '0-2-0' => 'input_seven_val', '0-2-1' => 'input_seven_val', '0-2-2' => 'input_seven_val',
                '1-0-0' => 'input_seven_val', '1-0-1' => 'input_seven_val', '1-0-2' => 'input_seven_val',
                '1-1-0' => 'input_seven_val', '1-1-1' => 'input_seven_val', '1-1-2' => 'input_seven_val',
                '1-2-0' => 'input_seven_val', '1-2-1' => 'input_seven_val', '1-2-2' => 'input_seven_val',
                '2-0-0' => 'input_seven_val', '2-0-1' => 'input_seven_val', '2-0-2' => 'input_seven_val',
                '2-1-0' => 'input_seven_val', '2-1-1' => 'input_seven_val', '2-1-2' => 'input_seven_val',
                '2-2-0' => 'input_seven_val', '2-2-1' => 'input_seven_val', '2-2-2' => 'input_seven_val',
            ),
            'input_eight' => array(
                '0-0-0' => 'input_eight_val', '0-0-1' => 'input_eight_val', '0-0-2' => 'input_eight_val',
                '0-1-0' => 'input_eight_val', '0-1-1' => 'input_eight_val', '0-1-2' => 'input_eight_val',
                '0-2-0' => 'input_eight_val', '0-2-1' => 'input_eight_val', '0-2-2' => 'input_eight_val',
                '1-0-0' => 'input_eight_val', '1-0-1' => 'input_eight_val', '1-0-2' => 'input_eight_val',
                '1-1-0' => 'input_eight_val', '1-1-1' => 'input_eight_val', '1-1-2' => 'input_eight_val',
                '1-2-0' => 'input_eight_val', '1-2-1' => 'input_eight_val', '1-2-2' => 'input_eight_val',
                '2-0-0' => 'input_eight_val', '2-0-1' => 'input_eight_val', '2-0-2' => 'input_eight_val',
                '2-1-0' => 'input_eight_val', '2-1-1' => 'input_eight_val', '2-1-2' => 'input_eight_val',
                '2-2-0' => 'input_eight_val', '2-2-1' => 'input_eight_val', '2-2-2' => 'input_eight_val',
            ),
            'input_nine' => array(
                '0-0-0-0' => 'input_nine_val', '0-0-0-1' => 'input_nine_val',
                '0-0-1-0' => 'input_nine_val', '0-0-1-1' => 'input_nine_val',
                '0-0-2-0' => 'input_nine_val', '0-0-2-1' => 'input_nine_val',
                '0-1-0-0' => 'input_nine_val', '0-1-0-1' => 'input_nine_val',
                '0-1-1-0' => 'input_nine_val', '0-1-1-1' => 'input_nine_val',
                '0-1-2-0' => 'input_nine_val', '0-1-2-1' => 'input_nine_val',
                '0-2-0-0' => 'input_nine_val', '0-2-0-1' => 'input_nine_val',
                '0-2-1-0' => 'input_nine_val', '0-2-1-1' => 'input_nine_val',
                '0-2-2-0' => 'input_nine_val', '0-2-2-1' => 'input_nine_val',
                '1-0-0-0' => 'input_nine_val', '1-0-0-1' => 'input_nine_val',
                '1-0-1-0' => 'input_nine_val', '1-0-1-1' => 'input_nine_val',
                '1-0-2-0' => 'input_nine_val', '1-0-2-1' => 'input_nine_val',
                '1-1-0-0' => 'input_nine_val', '1-1-0-1' => 'input_nine_val',
                '1-1-1-0' => 'input_nine_val', '1-1-1-1' => 'input_nine_val',
                '1-1-2-0' => 'input_nine_val', '1-1-2-1' => 'input_nine_val',
                '1-2-0-0' => 'input_nine_val', '1-2-0-1' => 'input_nine_val',
                '1-2-1-0' => 'input_nine_val', '1-2-1-1' => 'input_nine_val',
                '1-2-2-0' => 'input_nine_val', '1-2-2-1' => 'input_nine_val',
                '2-0-0-0' => 'input_nine_val', '2-0-0-1' => 'input_nine_val',
                '2-0-1-0' => 'input_nine_val', '2-0-1-1' => 'input_nine_val',
                '2-0-2-0' => 'input_nine_val', '2-0-2-1' => 'input_nine_val',
                '2-1-0-0' => 'input_nine_val', '2-1-0-1' => 'input_nine_val',
                '2-1-1-0' => 'input_nine_val', '2-1-1-1' => 'input_nine_val',
                '2-1-2-0' => 'input_nine_val', '2-1-2-1' => 'input_nine_val',
                '2-2-0-0' => 'input_nine_val', '2-2-0-1' => 'input_nine_val',
                '2-2-1-0' => 'input_nine_val', '2-2-1-1' => 'input_nine_val',
                '2-2-2-0' => 'input_nine_val', '2-2-2-1' => 'input_nine_val', '2-2-2-2' => 'input_nine_val', '2-2-2-3' => 'input_nine_val', '2-2-2-4' => 'input_nine_val', '2-2-2-5' => 'input_nine_val', '2-2-2-6' => 'input_nine_val', '2-2-2-7' => 'input_nine_val', '2-2-2-8' => 'input_nine_val', '2-2-2-9' => 'input_nine_val', '2-2-2-10' => 'input_nine_val', '2-2-2-11' => 'input_nine_val', '2-2-2-12' => 'input_nine_val',
            ),
            'input_ten' => array(
                '0-0-0-0' => 'input_ten_val', '0-0-0-1' => 'input_ten_val',
                '0-0-1-0' => 'input_ten_val', '0-0-1-1' => 'input_ten_val',
                '0-0-2-0' => 'input_ten_val', '0-0-2-1' => 'input_ten_val',
                '0-1-0-0' => 'input_ten_val', '0-1-0-1' => 'input_ten_val',
                '0-1-1-0' => 'input_ten_val', '0-1-1-1' => 'input_ten_val',
                '0-1-2-0' => 'input_ten_val', '0-1-2-1' => 'input_ten_val',
                '0-2-0-0' => 'input_ten_val', '0-2-0-1' => 'input_ten_val',
                '0-2-1-0' => 'input_ten_val', '0-2-1-1' => 'input_ten_val',
                '0-2-2-0' => 'input_ten_val', '0-2-2-1' => 'input_ten_val',
                '1-0-0-0' => 'input_ten_val', '1-0-0-1' => 'input_ten_val',
                '1-0-1-0' => 'input_ten_val', '1-0-1-1' => 'input_ten_val',
                '1-0-2-0' => 'input_ten_val', '1-0-2-1' => 'input_ten_val',
                '1-1-0-0' => 'input_ten_val', '1-1-0-1' => 'input_ten_val',
                '1-1-1-0' => 'input_ten_val', '1-1-1-1' => 'input_ten_val',
                '1-1-2-0' => 'input_ten_val', '1-1-2-1' => 'input_ten_val',
                '1-2-0-0' => 'input_ten_val', '1-2-0-1' => 'input_ten_val',
                '1-2-1-0' => 'input_ten_val', '1-2-1-1' => 'input_ten_val',
                '1-2-2-0' => 'input_ten_val', '1-2-2-1' => 'input_ten_val',
                '2-0-0-0' => 'input_ten_val', '2-0-0-1' => 'input_ten_val',
                '2-0-1-0' => 'input_ten_val', '2-0-1-1' => 'input_ten_val',
                '2-0-2-0' => 'input_ten_val', '2-0-2-1' => 'input_ten_val',
                '2-1-0-0' => 'input_ten_val', '2-1-0-1' => 'input_ten_val',
                '2-1-1-0' => 'input_ten_val', '2-1-1-1' => 'input_ten_val',
                '2-1-2-0' => 'input_ten_val', '2-1-2-1' => 'input_ten_val',
                '2-2-0-0' => 'input_ten_val', '2-2-0-1' => 'input_ten_val',
                '2-2-1-0' => 'input_ten_val', '2-2-1-1' => 'input_ten_val',
                '2-2-2-0' => 'input_ten_val', '2-2-2-1' => 'input_ten_val',
            ),
        );
        return $all_values;
    }

}