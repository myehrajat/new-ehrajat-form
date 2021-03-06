<?php
class data_action extends data_action_fundamental {
  var $all_prevent_insert_rule_ids;
  var $data_action_obj;
  var $multiple_func_after;
  var $multiple_func_before;

  function __construct( $is_modal = false ) {
    $this->temp_str = "DONT-SAVE-ME-";
    //krumo($this->temp_str);
    parent::__construct();
    // $this->temp_str = "DONT-SAVE-ME-";
  }


  /*********************
  for data action which is database may there is some rules to prevent insert
  this function collect all rules defined in data_action_database

  ***********************/
  function remove_temp_str( $str ) {
    if ( $this->starts_with( $str, $this->temp_str ) ) {
      $len = strlen( $this->temp_str );
      return substr( $str, $len );
    }
    return $str;
  }

  function get_all_prevent_insert_rule_ids() {
    $all_prevent_insert_rule_ids = array();
    foreach ( $this->data_actions as $data_action_obj ) {
      if ( strtolower( $data_action_obj->type ) == "database" ) {
        $data_action_specific_obj = $this->get_by_id( $data_action_obj->type_id, $GLOBALS[ 'sst_tables' ][ 'data_action_database' ] );
        $this_prevent_insert_rule_ids = $this->get_ids( $data_action_specific_obj->prevent_insert_rule_ids );
        if ( !empty( $this_prevent_insert_rule_ids ) ) {
          $all_prevent_insert_rule_ids = array_merge( $this_prevent_insert_rule_ids, $all_prevent_insert_rule_ids );
        }
      }
    }
    $this->all_prevent_insert_rule_ids = implode( ',', $all_prevent_insert_rule_ids );

  }
  /*********************
  do multiple data actions
  collect prevent_insert_rule_ids and trigger data action

  *********************/
  function do_data_actions() {
    if ( !empty( $this->data_actions ) ) {
      $this->get_all_prevent_insert_rule_ids();
      foreach ( $this->data_actions as $data_action_obj ) {
        $this->data_action_obj = $data_action_obj;
        //krumo($data_action_obj->id);
        $this->do_data_action();
      }
      unset( $this->data_action_obj );
    } else {
      $this->error_log( '$this->data_actions is empty' );
    }
  }
  /********************
  run data action based on its type:database/email/sms/http-request/save-file

  *********************/
  function do_data_action() {
    //krumo($this->data_action_obj);
    switch ( strtolower( $this->data_action_obj->type ) ) {
      case "database":
        $this->data_action_database();
        break;
      case "email":
        $this->data_action_email();
        break;
      case "sms":
        $data_action_specific_obj = $this->get_by_id( $data_action_id, $GLOBALS[ 'sst_tables' ][ 'data_action_sms' ] );
        break;
      case "http-request":
        $data_action_specific_obj = $this->get_by_id( $data_action_id, $GLOBALS[ 'sst_tables' ][ 'data_action_request' ] );
        break;
      case "save-file":
        $data_action_specific_obj = $this->get_by_id( $data_action_id, $GLOBALS[ 'sst_tables' ][ 'data_action_file' ] );
        break;
      default:

        break;
    }
  }

  function get_data_action_specific_obj() {
    $data_action_obj = $this->data_action_obj;
    //single refer to single record of data action
    // do sth before this data action starts
    $this->run_eval( EVAL_STR . $data_action_obj->single_func_before );
    $data_action_specific_obj = $this->get_by_id( $data_action_obj->type_id, $GLOBALS[ 'sst_tables' ][ 'data_action_database' ] );
    //set multiple_func_after,multiple_func_before for later use
    $this->multiple_func_after = $data_action_specific_obj->multiple_func_after;
    $this->multiple_func_before = $data_action_specific_obj->multiple_func_before;
    //set insert_ref to its id 
    if ( empty( $data_action_specific_obj->insert_ref ) ) {
      $data_action_specific_obj->insert_ref = $data_action_specific_obj->id;
    }
    return $data_action_specific_obj;
  }

  function data_action_database() {
    global $wpdb;
    static $insert_ref;
    $data_action_specific_obj = $this->get_data_action_specific_obj();
    switch ( $this->mode ) {
      case "add":
        //create_save_id_column_if_not_exist();
        $this->create_add_column( $wpdb->prefix . $data_action_specific_obj->table, 'save_id' );
        $this->create_colval_data();
        /** In edit moder we call this **/
        ADD:
          if ( !empty( $this->db_data ) ) {
            foreach ( $this->db_data as $key_route => $one_ready_data ) {
              $one_ready_data[ 'save_id' ] = addslashes( $_REQUEST[ '__sst__unique' ] );
              if ( isset( $insert_ref[ $data_action_specific_obj->insert_ref ] ) ) {
                $i = count( $insert_ref[ $data_action_specific_obj->insert_ref ] );
              } else {
                $i = 0;
              }
              $i = $key_route;
              $this->run_eval( EVAL_STR . $this->multiple_func_before );
              if ( $this->mode == 'add' ) {
                $db_result = $this->add_to_table( $wpdb->prefix . $data_action_specific_obj->table, $one_ready_data, $this->mysql_code_col_vals, $this->all_prevent_insert_rule_ids, false ,'debugme');
              } elseif ( $this->mode == 'edit' ) {
                  $db_result = $this->add_to_table( $wpdb->prefix . $data_action_specific_obj->table, $one_ready_data, $this->mysql_code_col_vals, $this->all_prevent_insert_rule_ids, true,'debugme' );
                }
                //}
                // != false and $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ] != 'prevented'
              if ( $db_result[ 'result' ] == true ) {
                $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ] = $db_result[ 'insert_id' ];
                $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'data' ] = $one_ready_data;
                if ( $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ] != false and $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ] != 'prevented' ) {
                  $this->vals[ "__sst__insert_ids" ][ $data_action_specific_obj->insert_ref ][ $i ] = $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ];
                }
                if ( $this->mode == 'add' ) {
                  $res = str_replace( '{insert_id}', $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ], $data_action_specific_obj->added_result_html );
                } elseif ( $this->mode == 'edit' ) {
                  $res = str_replace( '{insert_id}', $db_result[ 'insert_id' ], $data_action_specific_obj->edited_result_html );
                }
                $this->multiple_func_after = str_replace( '{insert_id}', $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ], $this->multiple_func_after );
              } elseif ( $db_result[ 'result' ] == false ) {
                  $res = $db_result[ 'html_error' ];
                } else {
                  $res = $data_action_specific_obj->database_error_result_html;
                }
                /* {insert_id:insert_name:level_to_be_same}*/

              foreach ( $one_ready_data as $column => $value ) {
                if ( $column != '__sst__temp' ) {
                  $res = str_replace( '{data_value:' . $column . '}', $value, $res );
                  $res = str_replace( '{data_column:' . $column . '}', $column, $res );
                  $this->multiple_func_after = str_replace( '{data_value:' . $column . '}', $value, $this->multiple_func_after );
                  $this->multiple_func_after = str_replace( '{data_column:' . $column . '}', $column, $this->multiple_func_after );
                } else {
                  foreach ( $value as $temp_column => $temp_value ) {
                    $this->multiple_func_after = str_replace( '{temp:' . $temp_column . '}', "'" . $temp_value . "'", $this->multiple_func_after );
                  }
                }

              }
              //  krumo($res);
              $result[] = $res;
            }
            //krumo($result);
            //if($_GET['data_action_result'])
            if ( $this->is_modal == true ) {
              echo '<span id="result_content">' . implode( '', $result ) . "</span>";
              echo '<span hidden="hidden" id="' . $_REQUEST[ "__sst__modal_result_container_id" ] . '">';
              //__sst__insert_ref_result is determining which dataaction insert_id is needed 
              if ( !empty( $insert_ref[ $_REQUEST[ '__sst__insert_ref_result' ] ] ) ) {
                foreach ( $insert_ref[ $_REQUEST[ '__sst__insert_ref_result' ] ] as $single_insert_ref ) {
                  if ( $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ] != false and $insert_ref[ $data_action_specific_obj->insert_ref ][ $i ][ 'insert_id' ] != 'prevented' ) {
                    $modal_insert_ids[] = $single_insert_ref[ 'insert_id' ];
                  }

                }
              }
              //krumo($modal_insert_ids);
              echo implode( ',', $modal_insert_ids );
              echo "</span>";
            } else {
              //krumo('is_not_modal');
              echo '<span id="result_content">' . implode( '', $result ) . "</span>";
            }
          } else {
            $this->error_log( '$this->dbdata is NULL' );

          }
          //       krumo(EVAL_STR.$this->multiple_func_after );

        $this->run_eval( EVAL_STR . $this->multiple_func_after );
        break;
      case "edit":
        $ids = array();
        $this->create_colval_data();
			krumo($this->db_data);
        $select = "SELECT * FROM " . $wpdb->prefix . $data_action_specific_obj->table . " WHERE `save_id`='" . addslashes( $_REQUEST[ '__sst__unique' ] ) . "';";
        //krumo($select);
        $select_results = $wpdb->get_results( $select );
        /************
            in edit mode cant remove record
        ************/
        $count_select_results = count( $select_results );
        if ( $count_select_results > count( $this->db_data ) ) {
          echo '<span>' . 'in edit mode cant remove record' . "</span>";
          return;
        }


        foreach ( $select_results as $select_result ) {
          $ids[ $select_result->id ] = $select_result->id;
        }

        foreach ( $this->db_data as $k => $one_ready_data ) {
          $this->db_data[ $k ][ 'id' ] = $select_results[ $k ]->id;
        }
        //krumo($this->db_data);
        //$delete = "DELETE FROM " . $wpdb->prefix . $data_action_specific_obj->table . " WHERE `save_id`='" . addslashes( $_REQUEST[ '__sst__unique' ] ) . "';";
        // krumo($delete);
        //$wpdb->query( $delete );
        //            krumo($this->db_data);
        goto ADD;
        break;
      case "delete":

        $this->create_colval_data();
        //krumo( $this->db_data);
        if ( $_REQUEST[ '__sst__delete-all' ] == 'delete-all' ) {
          $delele_query = "DELETE FROM " . $wpdb->prefix . $data_action_specific_obj->table . " WHERE `save_id`='" . $_REQUEST[ PROCESS_RECORD_ID_KEYWORD ] . "';";
          //$delele_query .= "DELETE FROM " . $GLOBALS[ 'sst_tables' ][ 'vals' ] . " WHERE `key`='" . $_REQUEST[ PROCESS_RECORD_ID_KEYWORD ] . "';";
          $delete_vals = true;
          #todo : delete images
        } else {
          krumo( $this->db_data );

          $delele_query = "DELETE FROM " . $wpdb->prefix . $data_action_specific_obj->table . " WHERE `save_id`='" . $_REQUEST[ PROCESS_RECORD_ID_KEYWORD ] . "' ";
          $delele_query .= "AND NOT (";
          foreach ( $this->db_data as $one_record ) {
            //krumo( $one_record );
            //unset( $one_record[ '__sst__delete-me' ] );
            // krumo( $one_record );
            $delele_query_vals = array();
            foreach ( $one_record as $where_col => $where_val ) {
              $delele_query_vals[] = "`" . $where_col . "`='" . $where_val . "'";
            }
            $delele_query_rows[] = " (" . implode( ' AND ', $delele_query_vals ) . ") ";

          }
          $delele_query .= implode( ' OR ', $delele_query_rows );
          $delele_query .= ');';
        }
        krumo( $delele_query );

        $wpdb->query( $delele_query );

        //krumo($delele_query);
        break;

      case "view":

        break;
        /*  case "delete":
				$delete = "DELETE FROM ".$wpdb->prefix . $data_action_obj->table." WHERE `save_id`='".addslashes( $_REQUEST[ '__sst__unique' ]) ."';";
				$delete = "DELETE FROM ".$GLOBALS[ 'sst_tables' ][ 'vals' ]." WHERE `key`='".addslashes( $_REQUEST[ '__sst__unique' ]) ."';";
				$wpdb->query($delete);
                break;
				*/
    }
    /***************
    in delete mode here delete vals if all data deleted
	  
    ***************/
    //krumo($this->vals);
    $this->run_eval( EVAL_STR . $data_action_obj->single_func_after );
  }

  function data_action_email() {
    $data_action_obj = $this->data_action_obj;
    $data_action_specific_obj = $this->get_by_id( $data_action_obj->type_id, $GLOBALS[ 'sst_tables' ][ 'data_action_mail' ] );

  }

  function data_action_sms() {

  }

  function data_action_request() {

  }

  function data_action_file() {

  }
  /**********************


  **********************/
  function sort_all_colval_by_depth( $colval_ids_str ) {
    if ( !empty( $colval_ids_str ) ) {
      $colval_ids = $this->get_ids( $colval_ids_str );
      $i = 0;
      if ( !empty( $colval_ids ) ) {
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

        $sort_colval_obj = array_column( $colval_sort_by_depth, 'colval_obj' );
        $sorted_colvals_obj = $this->array_orderby( $colval_sort_by_depth, $sort_depth, SORT_ASC );
        return $sorted_colvals_obj;
      } else {
        $this->error_log( 'no colval_id you have provided after processing, however you have provided string' );
        return false;
      }
    } else {
      $this->error_log( 'no colval_id string have provided ' );
      return false;
    }
  }
  /************************
  this is the most important core create single record data and prepare to insert
  **************************/
  function create_colval_data() {
    $colval_ids_str = $this->data_action_obj->colval_ids;
    $sorted_colvals_obj = $this->sort_all_colval_by_depth( $colval_ids_str );
    //krumo($sorted_colvals_obj );
    if ( !empty( $sorted_colvals_obj ) ) {
      $this->mysql_code_col_vals = '';
      if ( !empty( $sorted_colvals_obj ) ) {

        foreach ( $sorted_colvals_obj as $u => $sorted_colvals_vals ) {
          switch ( $sorted_colvals_vals[ 'colval_obj' ]->type ) {

            /*
			
            */
            case "simple-variable":
              //krumo($this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->value ] );
              $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->value ] );
              if ( !isset( $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] ) ) {
                $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] = $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ];
              }

              break;
            case "variable":
            case "function":
              $ecodes[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = 'return ' . $sorted_colvals_vals[ 'colval_obj' ]->value;
              $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
              if ( !isset( $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] ) ) {
                $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
              }
              break;
            case "ecode":
            case "code":
              //case "ecode-one-per-record":
              $ecodes[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $sorted_colvals_vals[ 'colval_obj' ]->value;
              $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
              if ( !isset( $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] ) ) {
                $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
              }
              break;
            case "ecode-group-before":
            case "ecode-group":
            case "code-group-before":
            case "code-group":
              //case "ecode-multiple-per-record":
              $ecodes_multiple[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $sorted_colvals_vals[ 'colval_obj' ]->value;
              $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
              if ( !isset( $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] ) ) {
                $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
              }
              break;
            case "ecode-group-after":
              break;
            case "temp":
            case "temporary":
              $is_there_temp = true;
              $all_values[ $this->temp_str . $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->flatten( $this->vals[ $sorted_colvals_vals[ 'colval_obj' ]->input_name ] );
              //krumo($this->temp_str);
              break;

            case "file":
              $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $this->upload_files( $sorted_colvals_vals[ 'colval_obj' ]->value,
                $this->vals[ '__sst__files' ][ $sorted_colvals_vals[ 'colval_obj' ]->value ],
                $sorted_colvals_vals[ 'colval_obj' ]->file_path,
                $this->data_action_obj->default_file_path );

              if ( !isset( $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->column ] ) ) {
                $save_raw_data[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $all_values[ $sorted_colvals_vals[ 'colval_obj' ]->column ];
              }
              break;
            case "mysql-code":
              $mysql_code_col_vals[ $sorted_colvals_vals[ 'colval_obj' ]->column ] = $sorted_colvals_vals[ 'colval_obj' ]->value;
              $this->mysql_code_col_vals = $mysql_code_col_vals;
              unset( $sorted_colvals_obj[ $u ] );
              break;
            case "insert-id":
            case "insert-ref":
              $colval_inserted_ids[] = $sorted_colvals_vals[ 'colval_obj' ];
              //do it later
              // GOTO:
              //	krumo($this->vals);
              //	krumo($sorted_colvals_vals[ 'colval_obj' ]->value);

              break;
            default:
              break;
          }
        }
//        krumo( $this->vals);

        #send columns which has more elements go to last of column level ordering based on number elements of column 
        //krumo($this->vals );
        //krumo($all_values );
        $all_values = $this->more_element_last( $all_values );
        //krumo('1');
        //krumo($this->vals);
        //krumo($all_values );
        //QUESTION: USE RAW DATA OR ECODE RUNNED DATA? MAY NEED SOME OPTION TO MAKE SURE WHICH ONE MUST RUN FIRST do_ecode_multiple_before_ecode or do_ecodes
        $all_values = $this->do_ecode_multiple_before_ecode( $all_values, $ecodes_multiple );
        //krumo('2');
        //krumo($all_values);

        $all_values = $this->more_element_last( $all_values );
        // this is original sent data before triggering data-action
        //krumo('3');
        //krumo($this->vals);

        $ready_data = $this->create_all_data( $all_values );
        //krumo('4');
        //krumo($ready_data);

        //this used for creating database query 

        $ready_data = $this->do_ecodes( $ready_data, $ecodes );
        //krumo('5');
        //krumo( $ready_data);

        //this used for creating database query
        $ready_data = $this->delete_temp_cloumns( $ready_data, $is_there_temp );
        //krumo('6');
        //krumo( $ready_data);
        $ready_data = $this->inserted_ids_columns( $ready_data, $colval_inserted_ids );
        $this->db_data = $ready_data;
        //krumo('7');
        //krumo($this->db_data);
		  //krumo($this->vals);
		//krumo($this->db_data);
        //$this->ready_data_for_db( $ready_data, $sorted_colvals_obj );
        //$this->save_final_vals( $save_raw_data );
        //krumo('8');
        //krumo($this->vals);

      } else {
        $this->error_log( 'colval_id provided is not correct no obj found:.' . $colval_id );
        $this->db_data = NULL;
      }
    } else {
      $this->error_log( '$sorted_colvals_obj return false it may caused for empty colval_id empty' );
      $this->db_data = NULL;

    }
    //krumo('9');
    //krumo($this->vals);
    //krumo($this->db_data);
    //krumo($_REQUEST);
	 //$this->vals = $this->remove_unnecessary_vals_data( $this->vals );

  }

  //do insert_id colval type
  function inserted_ids_columns( $ready_data, $colval_inserted_ids ) {
    //krumo($ready_data);
    if ( is_array( $colval_inserted_ids ) ) {
      if ( !empty( $colval_inserted_ids ) ) {
        $insert_ids = $this->vals[ '__sst__insert_ids' ];
        if ( is_array( $colval_inserted_ids ) ) {
          foreach ( $colval_inserted_ids as $colval_inserted_id ) {
            if ( is_array( $insert_ids[ $colval_inserted_id->value ] ) ) {
              foreach ( $insert_ids[ $colval_inserted_id->value ] as $insert_route => $insert_id_value ) {
                if ( is_array( $ready_data ) ) {
                  foreach ( $ready_data as $ready_data_route => $ready_data_vals ) {
                    if ( $this->starts_with( $ready_data_route, $insert_route ) ) {
                      $ready_data[ $ready_data_route ][ $colval_inserted_id->column ] = $insert_id_value;
                    }
                  }
                }
              }
            }
          }
        }
      }
    } else {
      $this->error_log( '$colval_inserted_ids is note array' );
    }
    //krumo( $ready_data );
    return $ready_data;
  }
  /**********
    this will get all_values and an col_name and find its col parent eg your provided input is aa[0][0][0] it and there is bb[0][0] this functiom return  bb[0][0]
	process definition: 
		1.loop through all ecodes with column for grouping as key
		2.group all values by parent column of key which has get from step one => $g_all_values is an array of group value 
		3. loop through all groups and and one by one process
		4.make array of groups by column as string like php code of arrat by prepare_array_str_for_ecode function 
		5.run eval and replace {array:column} by string of array generated in step 4 and save result in $res by route of first column name of group 
		6. save all values saved in step 5 to $all_values then return
		
    ******/
  #https://stackoverflow.com/questions/795625/how-to-set-an-arrays-internal-pointer-to-a-specific-position-php-xml
  function do_ecode_multiple_before_ecode( $all_values, $ecodes_multiple ) {
    if ( !empty( $ecodes_multiple ) ) {
      foreach ( $ecodes_multiple as $group_col_name => $ecode ) {
        $g_all_values = $this->group_data( $all_values, $group_col_name );
        $parent_col_name = $this->get_parent_col_name( $all_values, $group_col_name );
        //$all_values[$group_col_name] = $this->do_ecode_multiple_before_ecode( $g_all_values, $ecode, $group_col_name );
        foreach ( $g_all_values as $k => $all_single_group_value ) {

          $group_values = $this->prepare_array_str_for_ecode( $all_single_group_value );
          $ecode_group_result = $this->run_eval( EVAL_STR . $this->replace_attribute_short_codes( $ecode, $group_values, '{array:', '}' ) . ';' );
          $this->multiple_func_after = $this->replace_attribute_short_codes( $this->multiple_func_after, $group_values, '{array:', '}' );
          $this->multiple_func_before = $this->replace_attribute_short_codes( $this->multiple_func_before, $group_values, '{array:', '}' );
          $res[ array_key_first( $all_single_group_value[ $parent_col_name ] ) ] = $ecode_group_result;
        }
        $all_values[ $group_col_name ] = $res;
      }
    }
    return $all_values;
  }
  /*
  scenario:
  1.check is parent top level (extra eg aa[0] or none extra eg aa[*]) if yes no change and return
  2.group by parent save each parent element in one group
  3.make array reverese by column as before has been leveled and most element has been gone to down4
  4.if parent is the last go and check next column which is at same level or parent
  */
  function group_data( $all_values, $group_by_col_name ) {
    $parent = false;
    $parent_col_name = $this->get_parent_col_name( $all_values, $group_by_col_name );
    if ( count( explode( '-', array_key_first( $all_values[ $group_by_col_name ] ) ) ) == 1 ) {
      $grouped[] = $all_values;
      goto return_result;
    }
    foreach ( $all_values[ $parent_col_name ] as $k => $single_value ) {
      $grouped[ $k ][ $parent_col_name ] = array( $k => $single_value );
    }
    foreach ( array_reverse( $all_values ) as $col_name => $input_values ) {
      #this means 
      if ( $col_name == $parent_col_name ) {
        $parent = true;
        continue;
      }
      if ( $parent == false ) {
        foreach ( $input_values as $input_route => $input_value ) {
          foreach ( $grouped as $grouped_route => $grouped_value ) {
            settype( $input_route, 'string' );
            settype( $grouped_route, 'string' );
            if ( $this->starts_with( $input_route, $grouped_route )and substr( $input_route, strlen( $grouped_route ), 1 ) === '-' ) {
              $grouped[ $grouped_route ][ $col_name ][ $input_route ] = $input_value;
            }
          }
        }
      } else {
        foreach ( $grouped as $grouped_route => $grouped_value ) {
          foreach ( $input_values as $input_route => $input_value ) {
            settype( $input_route, 'string' );
            settype( $grouped_route, 'string' );
            $check = substr( $grouped_route, strlen( ( string )$input_route ), 1 );
            if ( $this->starts_with( $grouped_route, $input_route )and( empty( $check )or $check === '-'
                or $check === false )and $check !== '0' ) {
              $grouped[ $grouped_route ][ $col_name ][ $input_route ] = $input_value;
            } elseif ( $input_route === '*' ) {
              $grouped[ $grouped_route ][ $col_name ][ $input_route ] = $input_value;
            }
          }
        }

      }

    }
    return_result:

      return $grouped;
  }

  function get_parent_col_name( $all_values, $input_name ) {
    if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ and array_key_first( $all_values ) === $input_name ) {
      return NULL;
    }
    $input_name_route_count = count( explode( '-', array_key_first( $all_values[ $input_name ] ) ) );
    $key_last_input_name = array_key_last( $all_values );
    while ( key( $all_values ) !== $input_name ) {
      next( $all_values );
      if ( $key_last_input_name != $input_name ) {
        $this->error_log( 'your column for finding parent in get_parent_col_name is not found' );
        break;
        return NULL;
      }
    }
    $parent_values = prev( $all_values );
    $parent_input_name = key( $all_values );
    $parent_input_route = array_key_first( $parent_values );
    $parent_input_name_route_count = count( explode( '-', $parent_input_route ) );
    if ( $parent_input_name_route_count === $input_name_route_count and $parent_input_route !== '*' ) {
      $parent_input_name = $this->get_parent_col_name( $all_values, $parent_input_name );
    } elseif ( $parent_input_name_route_count === '*'
      and $input_name_route_count === '*' ) {
      $parent_input_name = NULL;
    }
    return $parent_input_name;
  }

  function delete_temp_cloumns( $ready_data, $is_there_temp ) {
    if ( $is_there_temp === true ) {
      foreach ( $ready_data as $k => $single_data ) {
        foreach ( $single_data as $column_name => $column_value ) {
          if ( $this->starts_with( $column_name, $this->temp_str ) ) {
            //
            //  krumo($column_name);
            $ready_data[ $k ][ '__sst__temp' ][ $this->remove_temp_str( $column_name ) ] = $ready_data[ $k ][ $column_name ];
            unset( $ready_data[ $k ][ $column_name ] );
          }
        }
      }
    }
    return $ready_data;
  }

  function prepare_array_str_for_ecode( $group_values ) {
    foreach ( $group_values as $column_name => $input_values ) {
      $array_str = 'array(';
      foreach ( $input_values as $input_value ) {
        $array_str_elements[] = "'" . $input_value . "'";
      }
      $array_str .= implode( ',', $array_str_elements );
      $array_str .= ')';
      $group_values[ $column_name ] = $array_str;
      $array_str_elements = array();
    }
    return $group_values;
  }


  #https://stackoverflow.com/questions/12624153/move-an-array-element-to-a-new-index-in-php
  function move_element( & $array, $a, $b ) {
    $p1 = array_splice( $array, $a, 1 );
    $p2 = array_splice( $array, 0, $b );
    $array = array_merge( $p2, $p1, $array );
  }
  /* for example may no file choose it will be null and cause error in more_element_last*/
  function remove_empty( $all_values ) {
    if ( is_array( $all_values ) ) {
      foreach ( $all_values as $index => $value ) {
        if ( empty( $value ) ) {
          unset( $all_values[ $index ] );
        }
      }
    } else {
      return array();
    }
    return $all_values;
  }
  #move element (input with same level) with more data to last
  function more_element_last( $all_values ) {
    //krumo($all_values);
    $all_values = $this->remove_empty( $all_values );
    $array_key_last = array_key_last( $all_values );
    $i = 0;

    foreach ( $all_values as $col_name => $col_values ) {

      $next = next( $all_values );
      if ( $next ) {
        if ( count( $col_values ) > count( $next ) ) {
          $this->move_element( $all_values, $i, $i + 1 );
        }
      }
      $i++;
    }
    return $all_values;
  }

  function create_all_data( $all_values ) {
    $all_values = array_reverse( $all_values );
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

  function do_ecodes( $ready_data, $ecodes ) {
    if ( !empty( $ecodes ) ) {
      foreach ( $ready_data as $k => $single_record ) {
        foreach ( $ecodes as $input_name => $ecode ) {

          $ready_data[ $k ][ $input_name ] = $this->run_eval( EVAL_STR . $this->replace_attribute_short_codes( $ecode, $single_record, '{vals:', '}', '\'' ) . ';' );

          $this->multiple_func_after = $this->replace_attribute_short_codes( $this->multiple_func_after, $single_record, '{vals:', '}', '\'' );
          $this->multiple_func_before = $this->replace_attribute_short_codes( $this->multiple_func_before, $single_record, '{vals:', '}', '\'' );
        }
      }
    }
    return $ready_data;
  }
  /*
      #return array of column database as key and input value as values
      function ready_data_for_db( $ready_data, $sorted_colvals_obj ) {
          foreach ( $ready_data as $i => $one_record_data ) {
              foreach ( $sorted_colvals_obj as $colval ) {
                  $this->db_data[ $i ][ $colval[ 'colval_obj' ]->column ] = $one_record_data[ $colval[ 'colval_obj' ]->column ];
              }
          }
      }
  */
  #return child  true if its child route .sibling will return false
  function starts_with_route( $child_route, $parent_route ) {
    if ( ( $this->starts_with( $child_route, $parent_route )and $this->is_after_base_route_dash( $child_route, $parent_route ) ) ) {
      return true;
    } else {
      return false;
    }
  }


  function is_after_base_route_dash( $other_route, $base_route ) {
    if ( mb_substr( $other_route, strlen( ( string )$base_route ), 1 ) == '-' ) {
      return true;
    } else {
      return false;
    }
  }
  /****************************************************/

  /************************************************/

  function upload_files( $input_name, $files, $colval_file_path = NULL, $default_data_action_file_path = NULL ) {

    $f_names = $this->flatten( $files[ 'name' ] );
    $f_type = $this->flatten( $files[ 'type' ] );
    $f_tmp_name = $this->flatten( $files[ 'tmp_name' ] );
    $f_error = $this->flatten( $files[ 'error' ] );
    $f_size = $this->flatten( $files[ 'size' ] );
    //krumo($f_names);
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


        //$dest_path = ltrim($dest_path,'/');
        $upload_path = $dest_path . $this->user_id . '_' . time() . '_' . $f_names[ $key_route ];
        $success = move_uploaded_file( $f_tmp_name[ $key_route ], $upload_path );
        $upload_url = $this->path2url( $upload_path );
        $key_route_array_trailing = $this->key_route_to_array_trailing( $key_route );
        if ( $success == true ) {
          $urls[ $key_route ] = $upload_url;
          $this->vals = ids::run_eval2( EVAL_STR . '$vals[\'' . $input_name . '\']' . $key_route_array_trailing . '=\'' . $upload_url . '\'; return $vals;', array( 'name' => 'vals', 'value' => $this->vals ) );
        } else {
          $urls[ $key_route ] = NULL;
          $this->vals = ids::run_eval2( EVAL_STR . '$vals[\'' . $input_name . '\']' . $key_route_array_trailing . '=NULL; return $vals;', array( 'name' => 'vals', 'value' => $this->vals ) );
        }

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

  function key_route_to_array_trailing( $key_route ) {
    $key_route_elements = explode( '-', $key_route );
    return '[' . implode( '][', $key_route_elements ) . ']';
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


  /****************************************************************************************
	this function make multidimensional array to one dimension array keys as string seperataed by - and if it is not multidimension it set * as key
  //source:https://ideone.com/1dBqx
  ****************************************************************************************/
  function flatten( $array, $sep = '-', $prefix = '' ) {
    $result = array();
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
    //krumo($result);
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
  /*****************************
  get the depth of array if none array provided it return 0
  and if array like array(0=>array(1=>2222)) it return 2
  ****************************/
  function find_array_depth( $arr ) {
    static $dep;
    static $last_key;
    if ( is_array( $arr ) ) {
      if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
        $dep = 0;
      }
      $dep++;
      //reset get first element of array
      $this->find_array_depth( reset( $arr ) );
    } else {
      if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
        $dep = 0;
      }
      return $dep;
    }
    return $dep;
  }
  /****************************************************************************************/

  /****************************************************************************************/

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
if ( !function_exists( 'array_key_last' ) ) {
  function array_key_last( $array ) {
    end( $array ); // move the internal pointer to the end of the array
    $key = key( $array ); // fetches the key of the element pointed to by the internal pointer
    return $key;
  }

}