<?php
class process extends data_creator {
    function __construct( $process_id_str=NULL ) {

        parent::__construct();
		//krm($this->get_vals( $_REQUEST['record_id']) );
        if ( !empty( $process_id_str ) ) {
            $this->generate_vals();

            $this->apply_conditions();

            if ( $this->break_class != true ) {
                //krm($this->vals);
                $this->get_process_object( $process_id_str );
                $this->generate_process_data();

            }
        }

    }

    function apply_conditions() {
        if ( !empty( $_REQUEST[ '__sst__conditions' ] ) ) {
            $condition_ids = $this->get_ids( $_REQUEST[ '__sst__conditions' ] );
            $i = 0;
            foreach ( $condition_ids as $condition_id ) {
                $condition_obj = $this->get_by_id( $condition_id, $GLOBALS[ 'sst_tables' ][ 'condition' ] );
                $condition_process_id = $this->get_ids( $condition_obj->process_id, true );
                if ( $this->is_positive_number( $condition_process_id ) ) {
                    if ( $condition_obj->condition != 'else' ) {
                        if ( $i == 0 ) {
                            $eval_condition_first = 'if(' . $condition_obj->condition . '){$p = new process(' . $condition_process_id . ');echo $p->render();}';
                        } else {
                            $eval_condition_middle .= 'elseif(' . $condition_obj->condition . '){$p = new process(' . $condition_process_id . ');echo $p->render();}';
                        }
                    } else {
                        $eval_condition_else = 'else{$p = new process(' . $condition_process_id . ');echo $p->render();}';
                    }
                    $i++;
                } else {
                    //$this->error_log( 'your condition id is not correct' );
                    //May be NULL MEANS END SO NO ERROR
                }
            }
            $eval_condition = EVAL_STR . $eval_condition_first . $eval_condition_middle . $eval_condition_else;
            unset( $_REQUEST[ '__sst__conditions' ] );
            unset( $this->vals[ '__sst__conditions' ] );
            //krm($eval_condition);
            $this->run_eval( $eval_condition, $this->vals );
            $this->break_class = true;
        }
    }

    function generate_vals() {
        $this->save_vals();
        //krm($this->vals);
        $GLOBALS[ 'vals' ] = $this->vals;
        //krm($GLOBALS[ 'vals' ]);

    }

    function save_files_to_vals() {
        if ( isset( $_FILES ) ) {
            if ( !isset( $this->vals[ '__sst__files' ] ) ) {
                $files[ '__sst__files' ] = array();
            }
            $files[ '__sst__files' ] = array_merge( $files[ '__sst__files' ], $_FILES );
        } else {
            $files[ '__sst__files' ] = array();
        }
        return $files;
    }

    function save_vals( $final_vals = NULL ) {
        if ( isset( $_REQUEST[ '__sst__unique' ] ) ) {
            global $wpdb;
            $db_vals = $this->get_vals();
            if ( empty( $final_vals ) ) {
                //krm( $db_vals);
                $files = $this->save_files_to_vals();
                //krm( $files);

                $form_vals = $_REQUEST;
                $merged_vals = array_merge( $db_vals, $form_vals, $files );
            } else {
                $merged_vals = $final_vals;
            }
            $vals = json_encode( $merged_vals );
            if ( PROCESS_COMPRESS_VALS == true ) {
                $vals = gzdeflate( $vals, 9 );
            }
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
            or $this->mode == 'view' ) {
            $record_id = $_REQUEST[ PROCESS_RECORD_ID_KEYWORD ];
            $this->vals = $this->get_vals( $record_id );
        }
    }

    function get_vals( $__sst__unique = NULL ) {
        if ( $__sst__unique == NULL ) {
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
        $this->generate_step_now();
        //$this->generate_roadmap();
        //$this->generate_max_step();
        $this->generate_super_unique();
        $this->generate_condition_ids();
        $this->generate_data_action_ids();
    }

    function generate_condition_ids() {
        if ( !empty( $this->process_obj->condition_ids ) ) {
            $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
                'input_html_type' => 'hidden',
                'attrs' => array( 'type' => 'hidden', 'name' => '__sst__conditions', 'value' => $this->process_obj->condition_ids ) );
        }
    }

    function generate_data_action_ids() {
        if ( !empty( $this->process_obj->data_action_ids ) ) {
            $this->process_data[ 'form_data' ][ 'inputs_data' ][] = array( 'input_type' => 'simple-hidden',
                'input_html_type' => 'hidden',
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
            'input_html_type' => 'hidden',
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
            'input_html_type' => 'hidden',
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
				//krm( $condition_obj);
			}				
			
		}
		*/
    }

    function render( $process_data = NULL ) {
        if ( $this->break_class != true ) {
            return $this->render_process( $process_data );
        }
    }
}