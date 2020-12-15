<?php
class process extends data_creator {
  function __construct( $process_id_str = NULL ) {
    parent::__construct();

    if ( !empty( $process_id_str ) ) {
      $this->is_modal = $_REQUEST[ '__sst__is_modal' ];
      //krumo($this->is_modal);
      $this->generate_vals();
      $this->apply_conditions();

      if ( $this->break_class != true ) {
        $this->get_process_object( $process_id_str );
        $this->generate_process_data();

      }
    }

  }

  function apply_conditions() {
    global $wpdb;
    if ( !empty( $_REQUEST[ '__sst__conditions' ] ) ) {
      $condition_ids = $this->get_ids( $_REQUEST[ '__sst__conditions' ] );
      $i = 0;
      foreach ( $condition_ids as $condition_id ) {
        $condition_obj = $this->get_by_id( $condition_id, $GLOBALS[ 'sst_tables' ][ 'condition' ] );
        $condition_process_id = $this->get_ids( $condition_obj->process_id, true );
        if ( $this->is_positive_number( $condition_process_id ) ) {

          if ( $condition_obj->condition != 'else' ) {
            if ( $i == 0 ) {
              $eval_condition_functions[] = $condition_obj->function;
              $eval_condition_first = 'if(' . $condition_obj->condition . '){$p = new process(' . $condition_process_id . ');echo $p->render();}';

            } else {
              $eval_condition_functions[] = $condition_obj->function;

              $eval_condition_middle .= 'elseif(' . $condition_obj->condition . '){ $p = new process(' . $condition_process_id . ');echo $p->render();}';
            }
          } else {
            $eval_condition_functions[] = $condition_obj->function;
            $eval_condition_else = 'else{$p = new process(' . $condition_process_id . ');echo $p->render();}';
          }
          $i++;
        } else {
          //$this->error_log( 'your condition id is not correct' );
          //May be NULL MEANS END SO NO ERROR
        }
      }
      $eval_condition_functions = implode( ";", $eval_condition_functions );
      $eval_condition = EVAL_STR . $eval_condition_functions . ';' . $eval_condition_first . $eval_condition_middle . $eval_condition_else;
      //krumo( $eval_condition );
      unset( $_REQUEST[ '__sst__conditions' ] );
      unset( $this->vals[ '__sst__conditions' ] );
      new data_action( $this->is_modal );
      $this->run_eval( $eval_condition, $this->vals );
      $this->break_class = true;

    } elseif ( isset( $_REQUEST[ '__sst__unique' ] ) ) { //there is no next step and form is submitted
      new data_action( $this->is_modal );
      $this->break_class = true;
    } else {
      //this is the first step
    }
  }

  function generate_vals() {
    $this->save_vals();
    //krumo($this->vals);
    $GLOBALS[ 'vals' ] = $this->vals;
  }

  function save_files_to_vals() {
    // krumo($_FILES);
    if ( !empty( $_FILES ) ) {
      if ( !isset( $this->vals[ '__sst__files' ] ) ) {
        $files[ '__sst__files' ] = array();
      }
      $files[ '__sst__files' ] = array_merge( $files[ '__sst__files' ], $_FILES );
    } else {
      $files[ '__sst__files' ] = array();
    }
    return $files;
  }
  /*
  this function make order on missed vals eg when a vals start with num 1 i must have val with 0 key loop and correct
  */
  function max_key( $arr ) {
    if ( !empty( $arr ) ) {
      return max( array_keys( $arr ) );
    } else {
      return false;
    }

  }

  /*******************
  this function loop through vals and return an array which its key is level and value is most value

  **********************/
  /*
  function find_toppest_key( $merged_vals, $level = 1 ) {
    //$merged_vals = $this->sample_vals();
    static $all;
    if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
      static $temp_vals;
      $temp_vals = $merged_vals;
      foreach ( $merged_vals as $merged_val ) {
        if ( is_array( $merged_val )and!empty( $merged_val ) ) {
          $m = $this->max_key( $merged_val );
          if ( $m !== false ) {
            $all[ $level ][] = $m;
          }
          $this->find_toppest_key( $merged_val, $level );

        }
      }
      foreach ( $all as $level => $maxs ) {
        $all[ $level ] = max( $maxs );
      }
    } else {
      $level++;
      if ( is_array( $merged_vals )and!empty( $merged_vals ) ) {
        foreach ( $merged_vals as $merged_val ) {
          if ( is_array( $merged_val )and!empty( $merged_val ) ) {
            $m = $this->max_key( $merged_val );
            if ( $m !== false ) {
              $all[ $level ][] = $m;
            }
            $this->find_toppest_key( $merged_val, $level );

          }

        }

      } else {
        $level--;
      }
    }
    ksort( $all );
    return $all;
  }
  */
  /* fill array whith range key*/

  function array_fill_missed_keys( $arr, $min, $max, $value = NULL ) {
    if ( ( !is_array( $arr )and empty( $arr ) )or is_array( $arr ) ) {
      if ( ( !is_array( $arr )and empty( $arr ) ) ) {
        $arr = array();
      }
      $range = range( $min, $max );
      while ( $max >= $min ) {
        if ( !isset( $arr[ $min ] ) ) {
          $arr[ $min ] = $value;
        }
        $min++;
      }
    }
    return $arr;
  }

  /*

  use vals to generate all missed values this is for extra which element 0 is disabled or not sent

  */
  /*
  function add_missed_vals_key( $vals) {
    static $toppest_keys;
    if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
      $toppest_keys = $this->find_toppest_key( $vals );

      foreach ( $vals as $k => $val ) {
        $vals[ $k ] = $this->array_fill_missed_keys( $val, 0, $toppest_keys[ array_key_first( $toppest_keys ) ], NULL );
		$vals[ $k ] = $this->add_missed_vals_key( $vals[ $k ]);
      }
    } else {
		$f = array_key_first ($toppest_keys );
		$vf=$toppest_keys[$f ];
		unset($toppest_keys[$f ]);
		if(!empty($toppest_keys)){
			if(empty($vals)){
				$vals=array();
			}
			if(is_array($vals)){
			foreach($vals as $k=>$val){
				$t2 = $toppest_keys[ array_key_first( $toppest_keys ) ];
				$vals[ $k ] = $this->array_fill_missed_keys( $val, 0, $t2 , NULL );
				$vals[ $k ] = $this->add_missed_vals_key($vals[ $k ]);
			}
			}
		}
		$toppest_keys[$f]=$vf;
		ksort($toppest_keys);
    }
    return $vals;
  }*/
  function add_missed_vals_key( $vals ) {
    //array_fill_missed_keys( $arr, $min, $max, $value = NULL );
    foreach ( $vals as $k => $val ) {
      if ( is_array( $val ) ) {
        if ( count( $val ) - 1 < $this->max_key( $val ) ) {
          $vals[ $k ] = $this->array_fill_missed_keys( $val, 0, $this->max_key( $val ) );
        }
        $vals[ $k ] = $this->add_missed_vals_key( $vals[ $k ] );
      }
      //return $vals;
    }

    return $vals;
  }

  function delete_vals( $record_id ) {
    global $wpdb;
    $query = $wpdb->prepare( "DELETE FROM `" . $GLOBALS[ 'sst_tables' ][ 'vals' ] . "` WHERE `key` = '%s' ;", array( $record_id ) );;
    $wpdb->query( $query );
  }

  function save_vals( $final_vals = NULL ) {
    //krumo($final_vals);
    if ( isset( $_REQUEST[ '__sst__unique' ] ) ) {
      global $wpdb;
      $db_vals = $this->get_vals();
      if ( empty( $final_vals ) ) {
        $files = $this->save_files_to_vals();
        $form_vals = $_REQUEST;
        $merged_vals = array_merge( $db_vals, $form_vals, $files );
      } else {
        $merged_vals = $final_vals;
      }
      //krumo( $merged_vals );
      $merged_vals = $this->add_missed_vals_key( $merged_vals );


      /**************
      this part is for removing on record on all in delete mode
      ****************/

      if ( isset( $merged_vals[ '__sst__delete-all' ] )and $this->mode == 'delete' ) {
        $this->delete_vals( $_REQUEST[ '__sst__unique' ] );
      }
      //krumo($merged_vals);
      //krumo(	data_action::flatten($merged_vals[ '__sst__delete' ] ));
      if ( isset( $merged_vals[ '__sst__delete' ] )and $this->mode == 'delete' ) {
        // krumo( $merged_vals[ '__sst__delete' ] );
        //https://stackoverflow.com/questions/3654295/remove-empty-array-elements
        //remove all empty, when you want to delete not first precedence will make a null value
        $merged_vals[ '__sst__delete' ] = array_filter( $merged_vals[ '__sst__delete' ], 'strlen' );
        //krumo($merged_vals[ '__sst__delete' ]);
       // krumo( $merged_vals );
        $to_delete_vals_routes = extra_name_handle::get_trailings_from_array( $merged_vals[ '__sst__delete' ] );
        //krumo( $to_delete_vals_routes );
        foreach ( $merged_vals as $col1 => $val1 ) {
          //if ( !$this->starts_with( '__sst__', $col1 ) ) {
          foreach ( $to_delete_vals_routes as $to_delete_vals_route ) {
            if ( $col1 == '__sst__files' ) {
				/*
              if ( is_array( $merged_vals[ '__sst__files' ] ) ) {
                foreach ( $merged_vals[ '__sst__files' ] as $file_input_name => $file_input_values ) {
                  $merged_vals = ids::run_eval2( EVAL_STR . 'if(isset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'name\']' . $to_delete_vals_route . ')){unset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'name\']' . $to_delete_vals_route . ');} return $merged_vals;', array( 'name' => 'merged_vals', 'value' => $merged_vals ) );

                  $merged_vals = ids::run_eval2( EVAL_STR . 'if(isset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'type\']' . $to_delete_vals_route . ')){unset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'type\']' . $to_delete_vals_route . ');} return $merged_vals;', array( 'name' => 'merged_vals', 'value' => $merged_vals ) );

                  $merged_vals = ids::run_eval2( EVAL_STR . 'if(isset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'temp_name\']' . $to_delete_vals_route . ')){unset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'temp_name\']' . $to_delete_vals_route . ');} return $merged_vals;', array( 'name' => 'merged_vals', 'value' => $merged_vals ) );

                  $merged_vals = ids::run_eval2( EVAL_STR . 'if(isset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'error\']' . $to_delete_vals_route . ')){unset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'error\']' . $to_delete_vals_route . ');} return $merged_vals;', array( 'name' => 'merged_vals', 'value' => $merged_vals ) );

                  $merged_vals = ids::run_eval2( EVAL_STR . 'if(isset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'size\']' . $to_delete_vals_route . ')){unset($merged_vals[\'' . $col1 . '\'][\'' . $file_input_name . '\'][\'size\']' . $to_delete_vals_route . ');} return $merged_vals;', array( 'name' => 'merged_vals', 'value' => $merged_vals ) );
                }
				
              }*/
            } else {
              if ( is_array( $merged_vals[ $col1 ] ) ) {
                $merged_vals = ids::run_eval2( EVAL_STR . 'if(isset($merged_vals[\'' . $col1 . '\']' . $to_delete_vals_route . ')){unset($merged_vals[\'' . $col1 . '\']' . $to_delete_vals_route . ');}return $merged_vals;', array( 'name' => 'merged_vals', 'value' => $merged_vals ) );
                //
              }
            }
          }


          if ( is_array( $merged_vals[ $col1 ] ) ) {
            //reset number of values
            $merged_vals[ $col1 ] = array_values( $merged_vals[ $col1 ] );
           /* if ( is_array( $merged_vals[ '__sst__files' ][ $col1 ][ 'name' ] ) ) {
              $merged_vals[ '__sst__files' ][ $col1 ][ 'name' ] = array_values( $merged_vals[ '__sst__files' ][ $col1 ][ 'name' ] );
              $merged_vals[ '__sst__files' ][ $col1 ][ 'type' ] = array_values( $merged_vals[ '__sst__files' ][ $col1 ][ 'type' ] );
              $merged_vals[ '__sst__files' ][ $col1 ][ 'temp_name' ] = array_values( $merged_vals[ '__sst__files' ][ $col1 ][ 'temp_name' ] );
              $merged_vals[ '__sst__files' ][ $col1 ][ 'error' ] = array_values( $merged_vals[ '__sst__files' ][ $col1 ][ 'error' ] );
              $merged_vals[ '__sst__files' ][ $col1 ][ 'size' ] = array_values( $merged_vals[ '__sst__files' ][ $col1 ][ 'size' ] );
            }*/
          }
          //}
        }
      }
	$vals = $this->prepare_vals_to_save($merged_vals);

      if ( empty( $db_vals ) ) {

        $q = $wpdb->prepare( "INSERT INTO " . $GLOBALS[ 'sst_tables' ][ 'vals' ] .
          " (`key`, `value`, `owner`, `created`, `modified`) 
							VALUES ('" . "%s" . "','" . "%s" . "'," . "%d" . ",NOW(),NOW());", array( $_REQUEST[ '__sst__unique' ], $vals, $this->user_id ) );
      } else {
        $q = $wpdb->prepare( "UPDATE " . $GLOBALS[ 'sst_tables' ][ 'vals' ] .
          " SET `value`='" . "%s" . "', `owner`=" . "%d" . ", `modified`=NOW() WHERE `key`='" . "%s" . "';", array( $vals, $this->user_id, $_REQUEST[ '__sst__unique' ] ) );
      }
      $wpdb->query( $q );
      $this->vals = $merged_vals;
      return $this->vals;
    } elseif ( $this->mode == 'edit'
      or $this->mode == 'view'
      or $this->mode == 'delete' ) {
      //krumo('sssssssss');
      $record_id = $_REQUEST[ PROCESS_RECORD_ID_KEYWORD ];
      $this->vals = $this->get_vals( $record_id );
      //        krumo($this->vals);
      $this->vals[ '__sst__unique' ] = $_REQUEST[ PROCESS_RECORD_ID_KEYWORD ];
      //krumo($this->vals);
    }
  }
function update_vals($vals,$save_id){
	global  $wpdb;
	$jsonedvals = $this->prepare_vals_to_save($vals);
	 $q = $wpdb->prepare( "UPDATE " . $GLOBALS[ 'sst_tables' ][ 'vals' ] .
          " SET `value`='" . "%s" . "', `owner`=" . "%d" . ", `modified`=NOW() WHERE `key`='" . "%s" . "';", array( $jsonedvals, $this->user_id, $save_id ) );
      $wpdb->query( $q );

}
function prepare_vals_to_save($merged_vals){
      ksort( $merged_vals );
      $vals = json_encode( $merged_vals );
      if ( PROCESS_COMPRESS_VALS == true ) {
        $vals = gzdeflate( $vals, 9 );
      }
	return $vals;
}
	function get_vals( $__sst__unique = NULL ) {
    if ( empty( $__sst__unique ) ) {
      $__sst__unique = $_REQUEST[ '__sst__unique' ];
    }
    if ( !empty( $__sst__unique ) ) {
      global $wpdb;
      $q = "SELECT * FROM " . $GLOBALS[ 'sst_tables' ][ 'vals' ] . "  WHERE `key`='" . $__sst__unique . "' LIMIT 1;";
      $results = $wpdb->get_results( $q );
      if ( !empty( $results ) ) {
        $dbvals = $results[ 0 ]->value;
        $vals = $dbvals;
        $vals = @ gzinflate( $dbvals );

        if ( $vals === false ) {
          $vals = json_decode( $dbvals, TRUE );
        } else {
          $vals = json_decode( $vals, TRUE );
        }
        $vals = stripslashes_deep( $vals );
        if ( !is_array( $vals ) ) {
          $vals = array();
        }
      } else {
        $vals = array();
      }
    } else {
      $vals = array();
    }
    return $vals;
  }

  function get_process_object( $process_id_str ) {
    $process_id = $this->get_ids( $process_id_str, true );

    if ( $this->is_positive_number( $process_id ) ) {
      $this->process_data[ 'id' ] = $process_id;
      $this->process_obj = $this->get_by_id( $process_id, $GLOBALS[ 'sst_tables' ][ 'process' ] );
    } else {
      $this->error_log( 'process_id is empty or is not positive int.You have provided:' . $process_id_str );
      return NULL;
    }
  }

  function generate_process_data() {
    $form_obj = new form( $this->process_obj->form_id );

    $this->process_data[ 'form_data' ] = $form_obj->form_data;
    //krumo($form_obj->form_data);
    $this->generate_step_now();
    //$this->generate_roadmap();
    //$this->generate_max_step();
    $this->generate_super_unique();
    $this->generate_condition_ids();
    $this->generate_data_action_ids();
    $this->generate_mode();
    if ( $this->is_modal == 'true' ) {
      $this->generate_modal();
    }
  }

  function generate_modal() {
    $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
      'input_html_type' => 'hidden', 'function' => 'sst_hidden',
      'attrs' => array( 'type' => 'hidden', 'name' => '__sst__is_modal', 'value' => $this->is_modal ) );

    $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
      'input_html_type' => 'hidden', 'function' => 'sst_hidden',
      'attrs' => array( 'type' => 'hidden', 'name' => '__sst__process_id', 'value' => $_REQUEST[ '__sst__process_id' ] ) );

    $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
      'input_html_type' => 'hidden', 'function' => 'sst_hidden',
      'attrs' => array( 'type' => 'hidden', 'name' => '__sst__insert_ref_result', 'value' => $_REQUEST[ '__sst__insert_ref_result' ] ) );


    $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
      'input_html_type' => 'hidden', 'function' => 'sst_hidden',
      'attrs' => array( 'type' => 'hidden', 'name' => '__sst__modal_result_container_id', 'value' => htmlentities( $_REQUEST[ '__sst__modal_result_container_id' ] ) ) );
    $this->process_data[ 'form_data' ][ 'use_ajax' ] = 'yes';
  }

  function generate_mode() {
    $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
      'input_html_type' => 'hidden', 'function' => 'sst_hidden',
      'attrs' => array( 'type' => 'hidden', 'name' => '__sst__mode', 'value' => $this->mode ) );
  }

  function generate_condition_ids() {
    if ( !empty( $this->process_obj->condition_ids ) ) {
      $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
        'input_html_type' => 'hidden', 'function' => 'sst_hidden',
        'attrs' => array( 'type' => 'hidden', 'name' => '__sst__conditions', 'value' => $this->process_obj->condition_ids ) );
    }
  }

  function generate_data_action_ids() {
    if ( !empty( $this->process_obj->data_action_ids ) ) {
      $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
        'input_html_type' => 'hidden', 'function' => 'sst_hidden',
        'attrs' => array( 'type' => 'hidden', 'name' => '__sst__data_actions', 'value' => $this->process_obj->data_action_ids ) );
    }
  }

  function generate_super_unique() {
    global $wpdb;
    if ( !isset( $this->vals ) ) {
      $__sst__unique = uniqid( $this->user_id . '_', true );
      $q = "SELECT * FROM " . $GLOBALS[ 'sst_tables' ][ 'vals' ] . "  WHERE `key`='" . $__sst__unique . "' LIMIT 1;";
      $results = $wpdb->get_results( $q );
      if ( !empty( $results ) ) {
        $this->generate_super_unique();
      }
    } else {
      $__sst__unique = $this->vals[ '__sst__unique' ];
    }
    $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
      'input_html_type' => 'hidden', 'function' => 'sst_hidden',
      'attrs' => array( 'type' => 'hidden', 'name' => '__sst__unique', 'value' => $__sst__unique ) );
  }

  function generate_max_step() {

  }

  function generate_step_now() {
    if ( !isset( $this->vals ) ) {
      $__sst__step = 1;
    } else {
      $__sst__step = $this->vals[ '__sst__step' ] + 1;
    }

    $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
      'input_html_type' => 'hidden', 'function' => 'sst_hidden',
      'attrs' => array( 'type' => 'hidden', 'name' => '__sst__step', 'value' => $__sst__step ) );
  }

  function generate_roadmap( $process_id = NULL ) {
    /*static $roadmap;
		if(debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__){
			$process_obj = $this->process_obj;
		}else{
			$process_obj = $this->get_by_id( $process_id, $GLOBALS[ 'sst_tables' ][ 'process' ] );
		}
		$roadmap[$process_obj->form_id]= $process_obj->condition_ids;
		
        $condition_ids = $this->get_ids( $process_obj->condition_ids );
		foreach($condition_ids as $condition_id){
			$condition_obj = $this->get_by_id( $condition_id, $GLOBALS[ 'sst_tables' ][ 'condition' ] );
			$process_ids = $this->get_ids( $condition_obj->process_ids );
			foreach($process_ids as $new_process_id){
				//$roadmap[$process_obj->form_id][]
			}				
			
		}
		*/
  }

  function sample_vals() {
    $test[ 'input_name_1' ][ 0 ] = '';
    $test[ 'input_name_2' ][ 0 ][ 2 ] = '';
    $test[ 'input_name_2' ][ 0 ][ 1 ][ 2 ] = '';
    $test[ 'input_name_1' ][ 1 ] = '';
    $test[ 'input_name_2' ][ 1 ][ 3 ] = '';
    $test[ 'input_name_2' ][ 1 ][ 1 ] = '';
    $test[ 'input_name_2' ][ 2 ][ 3 ][ 3 ] = '';
    $test[ 'input_name_2' ][ 2 ][ 1 ][ 3 ][ 9 ][ 6 ][ 3 ] = '';
    $test[ 'input_name_2' ][ 3 ][ 2 ] = '';
    $test[ 'input_name_2' ][ 3 ][ 5 ] = '';
    $test[ 'input_name_2' ][ 4 ][ 1 ] = '';
    return $test;
  }

  function render( $process_data = NULL ) {
    //      krumo('process');
    //    krumo($this->vals);
    if ( $this->break_class != true ) {
      return $this->render_process( $process_data );
    }
  }
}
if ( !function_exists( 'array_key_first' ) ) {
  function array_key_first( $array ) {
    reset( $array );
    $first_key = key( $array );
    return $first_key;
  }
}