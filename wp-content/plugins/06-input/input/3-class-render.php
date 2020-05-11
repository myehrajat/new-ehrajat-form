<?php
class render extends database {
    #todo : validate html tags
    function __construct() {
        parent::__construct();
    }
    /***************************************

      _____                 
     |_   _|   __ _    __ _ 
       | |    / _` |  / _` |
       | |   | (_| | | (_| |
       |_|    \__,_|  \__, |
                      |___/ 

    ****************************************/
    function create_tag( $tag_id, $child_before = '', $child_after = '' ) {
        if ( !isset( $tag_ids ) ) {
            static $tag_ids = array();
        }
        if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
            $tag_ids = array();
        }

        if ( !in_array( $tag_id, $tag_ids ) ) {
            $tag_ids[] = $tag_id;
            $tag_id = $this->get_ids( $tag_id, true );
            if ( !empty( $tag_id ) ) {
                $tag_obj = $this->get_by_id( $tag_id, $GLOBALS[ 'sst_tables' ][ 'tags' ] );
                if ( $tag_obj->parent_tag_id ) {
                    if ( $this->is_positive_number( $tag_obj->parent_tag_id ) ) {
                        $new_child_before .= $tag_obj->tag_before . $child_before;
                        $new_child_after .= $tag_obj->tag_after . $child_after;
                        $result = $this->create_tag( $tag_obj->parent_tag_id, $new_child_before, $new_child_after );
                        return $result;
                    } else {
                        $before = $child_before;
                        $after = $child_after;
                        return array( 'before' => $before, 'after' => $after );
                        $this->error_log( 'your parent tag id is not correct.' );
                    }
                } else {
                    $before = $tag_obj->tag_before . $child_before;
                    $after = $tag_obj->tag_after . $child_after;
                    return array( 'before' => $before, 'after' => $after );
                }
            } else {
                $before = $child_before;
                $after = $child_after;
                return array( 'before' => $before, 'after' => $after );
                $this->error_log( 'your parent tag id is empty.' );
            }
        } else {
            $before = $child_before;
            $after = $child_after;
            return array( 'before' => $before, 'after' => $after );
            $this->error_log( 'your parent tag id has been created before and this make an loop without end.' );
        }
    }

    function replace_all_variable_short_codes( $str, $between_start = '{var:', $between_end = '}' ) {
        global $wpdb;
        if ( !empty( $str ) ) {
            preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $str, $matches );
            foreach ( $matches[ 1 ] as $k => $match ) {
                $var_obj = $this->get_by_col( 'name', $match, $GLOBALS[ 'sst_tables' ][ 'variable' ] );
                $str = str_replace( $matches[ 0 ][ $k ], $var_obj->value, $str );
            }
        }
        return $str;
    }

    function replace_attribute_short_codes( $str, $attrs, $between_start = '{attr:', $between_end = '}', $wrapper = NULL ) {
        global $wpdb;
        if ( !empty( $str ) ) {
            preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $str, $matches );
            foreach ( $matches[ 1 ] as $k => $match ) {
                $str = str_replace( $matches[ 0 ][ $k ], $wrapper . $attrs[ $match ] . $wrapper, $str );
            }
        }
        return $str;
    }

    function replace_own_data_short_codes( $str, $own_data, $between_start = '{own-data:', $between_end = '}' ) {
        global $wpdb;
        if ( !empty( $str ) ) {
            preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $str, $matches );
            foreach ( $matches[ 1 ] as $k => $match ) {
                $str = str_replace( $matches[ 0 ][ $k ], $own_data[ $match ], $str );
            }
        }
        return $str;
    }

    function render_tag( $tag_id, $data = NULL, $element = NULL ) {

        $tag = $this->create_tag( $tag_id );
        $before = $this->replace_all_variable_short_codes( $tag[ 'before' ] );
        $after = $this->replace_all_variable_short_codes( $tag[ 'after' ] );
        //if( $tag_id==27){dbg($before);}
        if ( !empty( $data[ 'own_data' ] ) ) {
            $before = $this->replace_own_data_short_codes( $before, $data[ 'own_data' ] );
            $after = $this->replace_own_data_short_codes( $after, $data[ 'own_data' ] );
        }
        if ( !empty( $data[ 'attrs' ] ) ) {

            $before = $this->replace_attribute_short_codes( $before, $data[ 'attrs' ] );
            $after = $this->replace_attribute_short_codes( $after, $data[ 'attrs' ] );
        }
        if ( !empty( $element ) ) {
            return $before . $element . $after;
        } else {
            return array( 'before' => $before, 'after' => $after );
        }
    }
    /****************************************

      ___                           _   
     |_ _|  _ __    _ __    _   _  | |_ 
      | |  | '_ \  | '_ \  | | | | | __|
      | |  | | | | | |_) | | |_| | | |_ 
     |___| |_| |_| | .__/   \__,_|  \__|
                   |_|                  

    *******************************************/
    function render_datalist( $input_data = NULL ) {
        if ( $input_data == NULL ) {
            $input_data = $this->input_data;
        }
        if ( !empty( $input_data[ 'option_data' ] ) ) {
            if ( empty( $input_data[ 'attrs' ][ 'list' ] ) ) {
                $input_data[ 'attrs' ][ 'list' ] = 'random_id_' . $this->random_string();
            }
            $datalist = '<datalist id="' . $input_data[ 'attrs' ][ 'list' ] . '">';
            foreach ( $input_data[ 'option_data' ] as $option ) {
                $datalist .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>';
            }
            $datalist .= '</datalist>';
            return $datalist;
        }
    }

    function render_select_list( $input_data = NULL ) {
        if ( $input_data == NULL ) {
            $input_data = $this->input_data;
        }
        if ( empty( $input_data[ 'multiple' ] )and!empty( $input_data[ 'unselected_text' ] )and $input_data[ 'size' ] <= 1 ) {

            $select_list .= '<option disabled="disabled" label="' . $input_data[ 'unselected_text' ] . '">' . $input_data[ 'unselected_text' ] . '</option>';
        }
        if ( $input_data[ 'show_first' ] == 'option' ) {
            $select_list .= $this->render_options( $input_data[ 'option_data' ] );
            $select_list .= $this->render_optgrops( $input_data[ 'optgroup_data' ] );
        } elseif ( $input_data[ 'show_first' ] == 'optgroup' ) {
            $select_list .= $this->render_optgrops( $input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $input_data[ 'option_data' ] );
        } else {
            $select_list .= $this->render_optgrops( $input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $input_data[ 'option_data' ] );
        }
        return $select_list;
    }

    function render_optgrops( $optgrops ) {
        if ( !empty( $optgrops ) ) {
            foreach ( $optgrops as $optgroup ) {
                $select_list .= '<optgroup' . $this->render_attrs( $optgroup[ 'attrs' ] ) . '>';
                $select_list .= $this->render_options( $optgroup[ 'options' ] );
                $select_list .= '</optgroup>';
            }
        }
        return $select_list;
    }

    function render_options( $options_data ) {
        if ( !empty( $options_data ) ) {
            foreach ( $options_data as $option ) {
                $options .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>' . $option[ 'text' ] . '</option>';
            }
            return $options;
        }
    }

    function render_input( $input_data = NULL ) {
		//krumo($this->process_data);

        if ( $input_data == NULL ) {
            $input_data = $this->input_data;
        }
		if(!empty($input_data['attr_changer_code'])){
			$this->attr_changer_code = $this->attr_changer_code.$input_data['attr_changer_code'];
		}
		$process_data = $this->process_data;

        if ( !empty( $input_data ) and !empty( $input_data[ 'function' ]  ) ) {
			//if($input_data[ 'function' ] =='sst_depend_select'){
			//krumo(EVAL_STR . 'return ' . $input_data[ 'function' ] . '("' . addslashes( json_encode( $input_data ) ) . '","' . addslashes( json_encode( $this->process_data ) ) . '");' );
			//}
			if(!empty($input_data['eval'])){
				//$input_data['eval'] = base64_encode(json_encode($input_data['eval']));
			}
			$input_data_json = base64_encode(json_encode($input_data));
			$process_data_json = base64_encode(json_encode($this->process_data));
            $input_data = $this->run_eval( EVAL_STR . 'return ' . $input_data[ 'function' ] . '("' . $input_data_json . '","' . $process_data_json . '");' );
			//krumo();
			if(!empty($input_data['eval'])){
				foreach($input_data['eval'] as $eval_code){
					try {
						$input_data = eval( $eval_code.'; return $input_data;' );
					} catch ( Throwable $error ) {
						$this->error_log( 'eval string has syntax error.this code has error: '.$eval_code );
					}
				}
			}
			
			
			
			
            /*
        if ( $input_data[ 'extra' ][ 'max' ] > 0 ) {
            $extra = new extra( $input_data[ 'extra' ][ 'max' ], $input_data[ 'unique_id' ] );
            $input_data[ 'extra' ][ 'add_controller' ] = $extra->extra_add_controller;
            $input_data[ 'extra' ][ 'remove_controller' ] = $extra->extra_remove_controller;
            $input_data[ 'extra' ][ 'controller_position' ] = EXTRA_CONTROLLER_POSITION;
        }
		*/

            if ( $input_data[ 'access' ][ 'visible' ] == 'no'
                and $this->mode == 'view' ) {
                return '';
            }
            if ( $input_data[ 'access' ][ 'editable' ] == 'no'
                and $this->mode == 'edit' ) {

                $input_data[ 'disabled' ] = 'disabled';
            }
            if ( $input_data[ 'access' ][ 'addable' ] == 'no'
                and $this->mode == 'add' ) {
                return '';
            }
            switch ( $input_data[ 'input_html_type' ] ) {

                case "hidden":
                    $input = '<input' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>';
                    break;
                case "submit":
                case "password":
                case "image":
                case "checkbox":
                case "radio":

                    $input = '<input' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>';
                    break;
                case "file":
                    if ( empty( $input_data[ 'attrs' ][ 'value' ] ) ) {
                        $input = '<input' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>';
                    } else {
                        $input = '<image_input id="' . $input_data[ 'unique_id' ] . '_file_place_holder">';
                        $input .= '<a href="' . $todovalue . '">Show File</a>';
                        if ( $input_data[ 'access' ][ 'editable' ] == 'yes' ) {
                            $input .= '<a href="#" id="' . $input_data[ 'unique_id' ] . '_file_controller_remove">Remove File</a>';
                        }
                        $input .= '</image_input>';
                        $input_data[ 'attrs' ][ 'disabled' ] = 'disabled';
                        $input_data[ 'attrs' ][ 'hidden' ] = 'hidden';
                        $input .= '<input' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>';

                    }
                    break;
                case "text":
                case "search":
                case "tel":
                case "url":
                case "range":
                case "number":
                case "email":
                case "date":
                case "datetime-local":
                case "month":
                case "time":
                case "week":
                case "datetime":
                case "color":
                    $datalist = $this->render_datalist( $input_data );
                    $input = '<input' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>' . $datalist;
                    break;
                case "select":
			//if($input_data[ 'function' ]=='sst_depend_select'){
			 //krumo($input_data );
			//}
                    $select_list = $this->render_select_list( $input_data );
                    $input = '<select' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>' . $select_list . '</select>';
                    break;
                case "textarea":
                    $input = '<textarea' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>' . $input_data[ 'text' ] . '</textarea>';
                    break;
            }
			if(MARK_REQUIRED_INPUT=='yes' and $input_data[ 'attrs' ]['required']=='required'){
				$input_data[ 'tag' ][ 'before' ] .= REQUIRED_INPUT_CODE;
			}
			
			
			//krumo($input_data['id']);
			
			
			
			
			
			//click on loadDynamicContentModal js element 
			//use modal.js on open modal send ajax to PROCESS_BY_GET_URL with 3 $_GET data => __sst__process_id=>process_id,__sst__is_modal=>true,__sst__modal_result_container_id=>modal_container_id+'_result'
			//PROCESS_BY_GET_URL file create process (process now must be ajax submission enabled because it is modal) and return to modal.js to show it in modal
			// to create process if it is modal create 4 hidden input for next steps __sst__is_modal,__sst__modal_result_container_id,__sst__is_modal,and set use ajax
			//in form making then use use ajax to add js to do all by ajax on event submit append it to after tag
			/************ CREATE MODAL ************/
			if($this->is_positive_number($input_data['modal'][ 'process_id' ])){
				$modal_process = $this->is_eval_run($input_data['modal'][ 'process_id' ]);
				$modal_insert_ref = $this->is_eval_run($input_data['modal'][ 'insert_ref' ]);
				$modal_input_id = $input_data[ 'attrs' ]['id'];
				$modal_input_unique_id =$input_data['unique_id'];
				$modal_input_id_num =$input_data['id'];
				$uniqid_modal = uniqid("_sst_modal_");
				$input_data[ 'tag' ][ 'after' ] .= '<span onclick="loadDynamicContentModal(';
				$input_data[ 'tag' ][ 'after' ] .= "'".PROCESS_BY_GET_URL.'?__sst__process_id='.$modal_process.'&__sst__insert_ref_result='.$modal_insert_ref."',";
				$input_data[ 'tag' ][ 'after' ] .= "'".$modal_input_id.$uniqid_modal."',";
				$input_data[ 'tag' ][ 'after' ] .= "'".INPUT_BY_GET_URL.'?__sst__input_id='.$modal_input_id_num.'&__sst__input_the_id='.$modal_input_id.'&__sst__input_unique_id='.$modal_input_unique_id."',";
				$input_data[ 'tag' ][ 'after' ] .= "'".$modal_input_unique_id."'";
				$input_data[ 'tag' ][ 'after' ] .= ');">';
				$input_data[ 'tag' ][ 'after' ] .= PROCESS_MODAL_BUTTON;
				$input_data[ 'tag' ][ 'after' ] .= '</span>';
				$input_data[ 'tag' ][ 'after' ] .= '<span id="'.$modal_input_id.$uniqid_modal.'" title="'.htmlentities(PROCESS_MODAL_DEFAULT_TITLE).'"></span>';
			}
			
			
			
			
			
			
			
			
			
			
			
            $input = $input_data[ 'tag' ][ 'before' ] . $input . $input_data[ 'tag' ][ 'after' ];
			
            if ( $input_data[ 'extra' ][ 'controller_position' ] == 'before' ) {
                $input = $input_data[ 'extra' ][ 'add_controller' ] . $input_data[ 'extra' ][ 'remove_controller' ] . $input;
            } elseif ( $input_data[ 'extra' ][ 'controller_position' ] == 'after' ) {
                $input = $input . $input_data[ 'extra' ][ 'add_controller' ] . $input_data[ 'extra' ][ 'remove_controller' ];
            } else {
                $input = $input . $input_data[ 'extra' ][ 'add_controller' ] . $input_data[ 'extra' ][ 'remove_controller' ];
            }

            $input = '<sst-input id="' . "".$input_data[ 'unique_id' ] . '" >' . $input . '</sst-input>';
            $this->input = $input;
            return $this->input;
        }
    }
    /*****************



      ____    _                  _    
     | __ )  | |   ___     ___  | | __
     |  _ \  | |  / _ \   / __| | |/ /
     | |_) | | | | (_) | | (__  |   < 
     |____/  |_|  \___/   \___| |_|\_\
                                      
    https://www.messletters.com/en/big-text/
    *******************/
    /*
    Do everything to create a block 
    Return: Html Text of block (extra also created)
    Note: in view or edit mode it will return all extra that you have used
    */
    function render_block( $block_data = NULL ) {
        if ( $block_data == NULL ) {
            $block_data = $this->block_data;
        }
        //create $block_data['extra'] details
        $block_data = $this->create_extra_data( $block_data );

        if ( $block_data[ 'access' ][ 'visible' ] == 'no'
            and $this->mode == 'view' ) {
            return '';
        }
        if ( $block_data[ 'access' ][ 'editable' ] == 'no'
            and $this->mode == 'edit' ) {
            //mode is global so in input mode is edit and all inputs are disabled
            $block_data[ 'disabled' ] = 'disabled';
        }
        if ( $block_data[ 'access' ][ 'addable' ] == 'no'
            and $this->mode == 'add' ) {
            return '';
        }
        if ( isset( $block_data[ 'inputs_data' ] ) ) {

            foreach ( $block_data[ 'inputs_data' ] as $input_data ) {
                $input_data = $this->extra_block_set_value( $block_data, $input_data );
                $elements[ 'input' ] = $elements[ 'input' ] . $this->render_input( $input_data );
            }
        }
        # This function MUST be before rendering children and fieldsets
        $extra_block = $this->recursively_generate_block( $block_data );


        if ( !empty( $block_data[ 'fieldsets_data' ] ) ) {
            $fieldsets = '';
            foreach ( $block_data[ 'fieldsets_data' ] as $fieldsets_data ) {
                $elements[ 'fieldset' ] = $elements[ 'fieldset' ] . $this->render_fieldset( $fieldsets_data );
            }
        }
        if ( !empty( $block_data[ 'children' ] ) ) {
            foreach ( $block_data[ 'children' ] as $new_block_data ) {
                $elements[ 'block' ] = $this->render_block( $new_block_data );
            }
        }

        $block_prefix = '<sst-block id="' . $block_data[ 'unique_id' ] . '">' . $this->render_extra( $fieldset_data[ 'extra' ], 'before' ) . $block_data[ 'tag' ][ 'before' ];
        $block = $elements[ $block_data[ 'order' ][ 'show_first' ] ] . $elements[ $block_data[ 'order' ][ 'show_second' ] ] . $elements[ $block_data[ 'order' ][ 'show_third' ] ];
        $block_suffix = $block_data[ 'tag' ][ 'after' ] . $this->render_extra( $block_data[ 'extra' ], 'after' ) . '</sst-block>';

        return $block_prefix . $block . $block_suffix . $extra_block;

    }


    function recursively_generate_block( & $block_data ) {
        if ( isset( $block_data[ 'inputs_data' ] ) ) {
            //this return an array of only next extra block(not more) of the block which is processing
            $extra_block_data = $this->extra_block_creator_based_vals( $block_data );

            if ( !empty( $extra_block_data ) ) {
                # Hide add and remove controller because yet there is another extra need to be generated
                # Only last generated element need controller
                $block_data = $this->hide_add_controller_for_extra_generated_block( $block_data );
                $extra_block = $this->render_block( $extra_block_data );
            } else {
                # Show remove control if this block is generated as an extra
                $block_data = $this->show_hide_controller_for_extra_generated_block( $block_data, $last_number );
                $extra_block = '';
            }
        } else {
            $extra_block = '';
        }

        return $extra_block;
    }

    function hide_add_controller_for_extra_generated_block( $block_data ) {
        # Hide add and remove controller because yet there is another extra need to be generated
        # Only last generated element need controller
        $block_data[ 'extra' ][ 'add_controller_data' ][ 'style' ] = 'display: none;';
        $new_extra_data = extra::render_extra_controller( $block_data[ 'extra' ][ 'add_controller_data' ], $block_data[ 'extra' ][ 'remove_controller_data' ] );
        $block_data[ 'extra' ][ 'add_controller' ] = $new_extra_data[ 'extra_add_controller' ];
        $block_data[ 'extra' ][ 'remove_controller' ] = $new_extra_data[ 'extra_remove_controller' ];
        return $block_data;
    }

    function show_hide_controller_for_extra_generated_block( $block_data ) {
        $last_number = $this->last_number_of_element( $block_data[ 'unique_id' ], '≪', '≫' );
        # Show remove control if this block is generated as an extra

        if ( $last_number != 0 ) {
            unset( $block_data[ 'extra' ][ 'remove_controller_data' ][ 'style' ] );
        }
        # Hide add controller if extra reached max
        if ( $last_number == $block_data[ 'extra' ][ 'max' ] ) {
            //hide add controller
            $block_data[ 'extra' ][ 'add_controller_data' ][ 'style' ] = 'display: none;';
        }
        # Generate HTML of new setting and set to block
        $new_extra_data = extra::render_extra_controller( $block_data[ 'extra' ][ 'add_controller_data' ], $block_data[ 'extra' ][ 'remove_controller_data' ] );
        $block_data[ 'extra' ][ 'add_controller' ] = $new_extra_data[ 'extra_add_controller' ];
        $block_data[ 'extra' ][ 'remove_controller' ] = $new_extra_data[ 'extra_remove_controller' ];
        return $block_data;
    }

    function extra_block_set_value( $block_data, $input_data ) {
        if ( $this->mode == 'view'
            or $this->mode == 'edit' ) {
            if ( $block_data[ 'extra' ][ 'max' ] > 0 and isset( $this->vals[ $input_data[ 'attrs' ][ 'name' ] ] ) ) { //change value of

                $input_data[ 'attrs' ][ 'value' ] = $this->vals[ $input_data[ 'attrs' ][ 'name' ] ];
            } else {
                $input_data[ 'attrs' ][ 'value' ] = substr( $this->vals[ $input_data[ 'attrs' ][ 'name' ] ], 0, -3 );
            }
        }
        return $input_data;
    }
    /*

    */
    function extra_block_creator_based_vals( $block_data ) {
        $extra_block_data = array();
        $first_input_name = reset( $block_data[ 'inputs_data' ] )[ 'attrs' ][ 'name' ];
        //check is the next block first input is set 
        if ( $block_data[ 'extra' ][ 'max' ] > 0 and( $this->mode == 'view'
                or $this->mode == 'edit' )and isset( $this->vals[ $this->add_up_extra( $first_input_name, '[', ']' ) ] ) ) {
            $first_input_name = reset( $block_data[ 'inputs_data' ] )[ 'attrs' ][ 'name' ];
            $current_input_num = $this->last_number_of_element( $first_input_name, '[', ']' );
            $block_data[ 'unique_id' ] = $this->add_up_extra( $block_data[ 'unique_id' ], '≪', '≫' );
            foreach ( $block_data[ 'inputs_data' ] as $input_key => $input_data ) {
                $block_data[ 'inputs_data' ][ $input_key ][ 'unique_id' ] = $this->add_up_extra( $input_data[ 'unique_id' ], '≪', '≫' );
                $block_data[ 'inputs_data' ][ $input_key ][ 'attrs' ][ 'name' ] = $this->add_up_extra( $input_data[ 'attrs' ][ 'name' ], '[', ']' );
            }
            if ( !empty( $block_data[ 'children' ] ) ) {
                $block_data = $this->extra_children_block_creator( $block_data );
            }

            if ( !empty( $block_data[ 'fieldsets_data' ] ) ) {
                $block_data = $this->extra_fieldset_of_block_data_changer( $block_data );
            }
            $extra_block_data = $block_data;
        } else {
            return NULL;
        }
        return $extra_block_data;
    }

    function extra_fieldset_of_block_data_changer( $block_data ) {
        foreach ( $block_data[ 'fieldsets_data' ] as $fieldset_data_key => $fieldset_data ) {
            $block_data[ 'fieldsets_data' ][ $fieldset_data_key ][ 'unique_id' ] = $this->replace_base_route( $block_data[ 'unique_id' ], $fieldset_data[ 'unique_id' ], '≪' );
            foreach ( $fieldset_data[ 'inputs_data' ] as $fieldset_input_data_key => $fieldset_input_data ) {
                $block_data[ 'fieldsets_data' ][ $fieldset_data_key ][ 'inputs_data' ][ $fieldset_input_data_key ][ 'unique_id' ] = $this->replace_base_route( $block_data[ 'unique_id' ], $fieldset_input_data[ 'unique_id' ], '≪' );
                $block_data[ 'fieldsets_data' ][ $fieldset_data_key ][ 'inputs_data' ][ $fieldset_input_data_key ][ 'attrs' ][ 'name' ] = $this->replace_base_route( reset( $block_data[ 'inputs_data' ] )[ 'attrs' ][ 'name' ], $fieldset_input_data[ 'attrs' ][ 'name' ], '[' );
            }

        }
        return $block_data;
    }
    #This base route aaaa≪0≫≪11≫≪8≫ child route vvv≪6≫≪2≫≪1≫≪12≫ => vvv≪0≫≪11≫≪8≫≪12≫
    function replace_base_route( $base_str, $child_str, $before_idenfier ) {
        $base_arr = explode( $before_idenfier, $base_str );
        array_shift( $base_arr );
        $child_arr = explode( $before_idenfier, $child_str );
        $child_id_str = array_shift( $child_arr );
        $base_arr[] = end( $child_arr );
        $result = $child_id_str . $before_idenfier . implode( $before_idenfier, $base_arr );
        return $result;
    }

    function extra_children_block_creator( $block_data ) {
        static $deep;
        if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
            $deep = 2;
        }
        foreach ( $block_data[ 'children' ] as $child_block_key => $child_block ) {
            if ( $child_block[ 'extra' ][ 'max' ] > 0 ) {
                $block_data[ 'children' ][ $child_block_key ][ 'unique_id' ] = $this->add_up_extra( $child_block[ 'unique_id' ], '≪', '≫', $deep );


                foreach ( $block_data[ 'children' ][ $child_block_key ][ 'inputs_data' ] as $input_key => $input_data ) {
                    $block_data[ 'children' ][ $child_block_key ][ 'inputs_data' ][ $input_key ][ 'unique_id' ] = $this->add_up_extra( $input_data[ 'unique_id' ], '≪', '≫', $deep );
                    $block_data[ 'children' ][ $child_block_key ][ 'inputs_data' ][ $input_key ][ 'attrs' ][ 'name' ] = $this->add_up_extra( $input_data[ 'attrs' ][ 'name' ], '[', ']', $deep );
                }
                if ( empty( $child_block ) ) {
                    $this->extra_children_block_creator( $child_block );
                }
            }
        }
        return $block_data;
    }
    //return last number of dafasdfasd[0][1] => 1

    function last_number_of_element( $string, $before, $after ) {
        $unique_id_arr = explode( $before, $string );
        $laset_block_number = reset( explode( $after, end( $unique_id_arr ) ) );
        return $laset_block_number;
    }
    // this will change unique id or name of in extra last number eg vdiUoVF2dNWx≪0≫≪0≫ to vdiUoVF2dNWx≪0≫≪1≫
    function add_up_extra( $string, $before, $after, $deep = 1, $step = 1 ) {
        //$unique_id_arr[count($unique_id_arr)-$deep]
        $unique_id_arr = explode( $before, $string ); //vdiUoVF2dNWx≪0≫≪0≫ => array(0=>'vdiUoVF2dNWx',1=>'0≫',2=>'0≫')
        $laset_block_number = reset( explode( $after, $unique_id_arr[ count( $unique_id_arr ) - $deep ] ) ); //1=>'0≫ ===> array(0=>0,1=>NULL)
        $unique_id_arr[ count( $unique_id_arr ) - $deep ] = ( $laset_block_number + $step ) . $after; //0=>0   ===>  0=>1  ==>  0=>1≫ ====>  array(0=>'vdiUoVF2dNWx',1=>'1≫',2=>'0≫')
        return implode( $before, $unique_id_arr );

    }
    /************************************
      ______   _          _       _                _   
     |  ____| (_)        | |     | |              | |  
     | |__     _    ___  | |   __| |  ___    ___  | |_ 
     |  __|   | |  / _ \ | |  / _` | / __|  / _ \ | __|
     | |      | | |  __/ | | | (_| | \__ \ |  __/ | |_ 
     |_|      |_|  \___| |_|  \__,_| |___/  \___|  \__|
                                                       
    **************************************/
    function render_fieldset( $fieldset_data ) {
        if ( $fieldset_data == NULL ) {
            $fieldset_data = $this->fieldset_data;
        }
        $fieldset_data = $this->create_extra_data( $fieldset_data );
        if ( $fieldset_data[ 'access' ][ 'visible' ] == 'no'
            and $this->mode == 'view' ) {
            return '';
        }
        if ( $fieldset_data[ 'access' ][ 'editable' ] == 'no'
            and $this->mode == 'edit' ) {
            //mode is global so in input mode is edit and all inputs are disabled
            $fieldset_data[ 'disabled' ] = 'disabled';
        }
        if ( $fieldset_data[ 'access' ][ 'addable' ] == 'no'
            and $this->mode == 'add' ) {
            return '';
        }
        if ( isset( $fieldset_data[ 'inputs_data' ] ) ) {
            foreach ( $fieldset_data[ 'inputs_data' ] as $input_data ) {
                $input_data = $this->extra_fieldset_set_value( $fieldset_data, $input_data );
                $elements[ 'input' ] = $elements[ 'input' ] . $this->render_input( $input_data );
            }
        }

        # This function MUST be before rendering children and blocks
        $extra_fieldset = $this->recursively_generate_fieldset( $fieldset_data );

        if ( !empty( $fieldset_data[ 'blocks_data' ] ) ) {
            $blocks = '';
            foreach ( $fieldset_data[ 'blocks_data' ] as $blocks_data ) {
                $elements[ 'block' ] = $elements[ 'block' ] . $this->render_block( $blocks_data );
            }
        }
        if ( !empty( $fieldset_data[ 'children' ] ) ) {
            foreach ( $fieldset_data[ 'children' ] as $new_fieldset_data ) {
                $elements[ 'fieldset' ] = $this->render_fieldset( $new_fieldset_data );
            }
        }
        $fieldset_prefix = '<sst-fieldset id="' . $fieldset_data[ 'unique_id' ] . '">' . $this->render_extra( $fieldset_data[ 'extra' ], 'before' ) . $fieldset_data[ 'tag' ][ 'before' ] . '<fieldset ' . $this->render_attrs( $fieldset_data[ 'attrs' ] ) . '>' . $this->render_legend( $fieldset_data[ 'legend' ] );

        $fieldset = $elements[ $fieldset_data[ 'order' ][ 'show_first' ] ] . $elements[ $fieldset_data[ 'order' ][ 'show_second' ] ] . $elements[ $fieldset_data[ 'order' ][ 'show_third' ] ];

        $fieldset_suffix = '</fieldset>' . $fieldset_data[ 'tag' ][ 'after' ] . $this->render_extra( $fieldset_data[ 'extra' ], 'after' ) . '</sst-fieldset>';

        return $fieldset_prefix . $fieldset . $fieldset_suffix . $extra_fieldset;

    }

    function render_legend( $legend ) {
        $txt = $this->replace_all_variable_short_codes( $legend[ 'text' ] );
        $txt = $this->replace_attribute_short_codes( $legend[ 'text' ], $legend[ 'attrs' ] );
        $rendered_legend = $legend[ 'tag' ][ 'before' ] . '<legend ' . $this->render_attrs( $legend[ 'attrs' ] ) . '>' . $txt . '</legend>' . $legend[ 'tag' ][ 'after' ];
        return $rendered_legend;
    }

    function render_extra( $extra, $current_position ) {
        $extra_controller = $extra[ 'add_controller' ] . $extra[ 'remove_controller' ];
        if ( $extra[ 'controller_position' ] == $current_position ) {
            return $extra_controller;
        }

    }


    function recursively_generate_fieldset( & $fieldset_data ) {

        if ( isset( $fieldset_data[ 'inputs_data' ] ) ) {
            //this return an array of only next extra fieldset(not more) of the fieldset which is processing
            $extra_fieldset_data = $this->extra_fieldset_creator_based_vals( $fieldset_data );

            if ( !empty( $extra_fieldset_data ) ) {
                # Hide add and remove controller because yet there is another extra need to be generated
                # Only last generated element need controller
                $fieldset_data = $this->hide_add_controller_for_extra_generated_fieldset( $fieldset_data );
                $extra_fieldset = $this->render_fieldset( $extra_fieldset_data );
            } else {
                # Show remove control if this fieldset is generated as an extra
                $fieldset_data = $this->show_hide_controller_for_extra_generated_fieldset( $fieldset_data, $last_number );
                $extra_fieldset = '';
            }
        } else {
            $extra_fieldset = '';
        }

        return $extra_fieldset;
    }

    function hide_add_controller_for_extra_generated_fieldset( $fieldset_data ) {
        # Hide add and remove controller because yet there is another extra need to be generated
        # Only last generated element need controller
        $fieldset_data[ 'extra' ][ 'add_controller_data' ][ 'style' ] = 'display: none;';
        $new_extra_data = extra::render_extra_controller( $fieldset_data[ 'extra' ][ 'add_controller_data' ], $fieldset_data[ 'extra' ][ 'remove_controller_data' ] );
        $fieldset_data[ 'extra' ][ 'add_controller' ] = $new_extra_data[ 'extra_add_controller' ];
        $fieldset_data[ 'extra' ][ 'remove_controller' ] = $new_extra_data[ 'extra_remove_controller' ];
        return $fieldset_data;
    }

    function show_hide_controller_for_extra_generated_fieldset( $fieldset_data ) {
        $last_number = $this->last_number_of_element( $fieldset_data[ 'unique_id' ], '≪', '≫' );
        # Show remove control if this fieldset is generated as an extra

        if ( $last_number != 0 ) {
            unset( $fieldset_data[ 'extra' ][ 'remove_controller_data' ][ 'style' ] );
        }
        # Hide add controller if extra reached max
        if ( $last_number == $fieldset_data[ 'extra' ][ 'max' ] ) {
            //hide add controller
            $fieldset_data[ 'extra' ][ 'add_controller_data' ][ 'style' ] = 'display: none;';
        }
        # Generate HTML of new setting and set to fieldset
        $new_extra_data = extra::render_extra_controller( $fieldset_data[ 'extra' ][ 'add_controller_data' ], $fieldset_data[ 'extra' ][ 'remove_controller_data' ] );
        $fieldset_data[ 'extra' ][ 'add_controller' ] = $new_extra_data[ 'extra_add_controller' ];
        $fieldset_data[ 'extra' ][ 'remove_controller' ] = $new_extra_data[ 'extra_remove_controller' ];
        return $fieldset_data;
    }

    function extra_fieldset_set_value( $fieldset_data, $input_data ) {
        if ( $this->mode == 'view'
            or $this->mode == 'edit' ) {
            if ( $fieldset_data[ 'extra' ][ 'max' ] > 0 and isset( $this->vals[ $input_data[ 'attrs' ][ 'name' ] ] ) ) { //change value of

                $input_data[ 'attrs' ][ 'value' ] = $this->vals[ $input_data[ 'attrs' ][ 'name' ] ];
            } else {
                $input_data[ 'attrs' ][ 'value' ] = substr( $this->vals[ $input_data[ 'attrs' ][ 'name' ] ], 0, -3 );
            }
        }
        return $input_data;
    }

    function extra_fieldset_creator_based_vals( $fieldset_data ) {
        $extra_fieldset_data = array();
        $first_input_name = reset( $fieldset_data[ 'inputs_data' ] )[ 'attrs' ][ 'name' ];
        //check is the next fieldset first input is set 
        if ( $fieldset_data[ 'extra' ][ 'max' ] > 0 and( $this->mode == 'view'
                or $this->mode == 'edit' )and isset( $this->vals[ $this->add_up_extra( $first_input_name, '[', ']' ) ] ) ) {
            $first_input_name = reset( $fieldset_data[ 'inputs_data' ] )[ 'attrs' ][ 'name' ];
            $current_input_num = $this->last_number_of_element( $first_input_name, '[', ']' );

            $fieldset_data[ 'unique_id' ] = $this->add_up_extra( $fieldset_data[ 'unique_id' ], '≪', '≫' );
            foreach ( $fieldset_data[ 'inputs_data' ] as $input_key => $input_data ) {
                $fieldset_data[ 'inputs_data' ][ $input_key ][ 'unique_id' ] = $this->add_up_extra( $input_data[ 'unique_id' ], '≪', '≫' );
                $fieldset_data[ 'inputs_data' ][ $input_key ][ 'attrs' ][ 'name' ] = $this->add_up_extra( $input_data[ 'attrs' ][ 'name' ], '[', ']' );
            }
            if ( !empty( $fieldset_data[ 'children' ] ) ) {
                $fieldset_data = $this->extra_children_fieldset_creator( $fieldset_data );
            }

            if ( !empty( $fieldset_data[ 'blocks_data' ] ) ) {
                $fieldset_data = $this->extra_block_of_fieldset_data_changer( $fieldset_data );
            }
            $extra_fieldset_data = $fieldset_data;
        } else {
            return NULL;
        }
        return $extra_fieldset_data;
    }
    //
    function extra_block_of_fieldset_data_changer( $fieldset_data ) {
        foreach ( $fieldset_data[ 'blocks_data' ] as $block_data_key => $block_data ) {
            $fieldset_data[ 'blocks_data' ][ $block_data_key ][ 'unique_id' ] = $this->replace_base_route( $fieldset_data[ 'unique_id' ], $block_data[ 'unique_id' ], '≪' );

            foreach ( $block_data[ 'inputs_data' ] as $block_input_data_key => $block_input_data ) {
                $fieldset_data[ 'blocks_data' ][ $block_data_key ][ 'inputs_data' ][ $block_input_data_key ][ 'unique_id' ] = $this->replace_base_route( $fieldset_data[ 'unique_id' ], $block_input_data[ 'unique_id' ], '≪' );
                $fieldset_data[ 'blocks_data' ][ $block_data_key ][ 'inputs_data' ][ $block_input_data_key ][ 'attrs' ][ 'name' ] = $this->replace_base_route( reset( $fieldset_data[ 'inputs_data' ] )[ 'attrs' ][ 'name' ], $block_input_data[ 'attrs' ][ 'name' ], '[' );
            }

        }
        return $fieldset_data;
    }

    function extra_children_fieldset_creator( $fieldset_data ) {
        static $deep;
        if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
            $deep = 2;
        }
        foreach ( $fieldset_data[ 'children' ] as $child_fieldset_key => $child_fieldset ) {
            if ( $child_fieldset[ 'extra' ][ 'max' ] > 0 ) {
                $fieldset_data[ 'children' ][ $child_fieldset_key ][ 'unique_id' ] = $this->add_up_extra( $child_fieldset[ 'unique_id' ], '≪', '≫', $deep );


                foreach ( $fieldset_data[ 'children' ][ $child_fieldset_key ][ 'inputs_data' ] as $input_key => $input_data ) {
                    $fieldset_data[ 'children' ][ $child_fieldset_key ][ 'inputs_data' ][ $input_key ][ 'unique_id' ] = $this->add_up_extra( $input_data[ 'unique_id' ], '≪', '≫', $deep );
                    $fieldset_data[ 'children' ][ $child_fieldset_key ][ 'inputs_data' ][ $input_key ][ 'attrs' ][ 'name' ] = $this->add_up_extra( $input_data[ 'attrs' ][ 'name' ], '[', ']', $deep );
                }
                if ( empty( $child_fieldset ) ) {
                    $this->extra_children_fieldset_creator( $child_fieldset );
                }
            }
        }
        return $fieldset_data;
    }
    /************************************
      ______                            
     |  ____|                           
     | |__      ___    _ __   _ __ ___  
     |  __|    / _ \  | '__| | '_ ` _ \ 
     | |      | (_) | | |    | | | | | |
     |_|       \___/  |_|    |_| |_| |_|
                                        
    **************************************/


    function render_form( $form_data ) {

        if ( $form_data == NULL ) {
            $form_data = $this->form_data;
        }
        if ( $form_data[ 'access' ][ 'editable' ] == 'no'
            and $this->mode == 'edit' ) {
            //mode is global so in input mode is edit and all inputs are disabled
            $form_data[ 'disabled' ] = 'disabled';
        }
        if ( $form_data[ 'access' ][ 'addable' ] == 'no'
            and $this->mode == 'add' ) {
            return '';
        }
        if ( isset( $form_data[ 'inputs_data' ] ) ) {
            foreach ( $form_data[ 'inputs_data' ] as $input_data ) {
                $elements[ 'input' ] = $elements[ 'input' ] . $this->render_input( $input_data );
            }
        }
		
        if ( !empty( $form_data[ 'blocks_data' ] ) ) {
            foreach ( $form_data[ 'blocks_data' ] as $blocks_data ) {
                $elements[ 'block' ] = $elements[ 'block' ] . $this->render_block( $blocks_data );
            }
        }
        if ( !empty( $form_data[ 'fieldsets_data' ] ) ) {
            foreach ( $form_data[ 'fieldsets_data' ] as $fieldset_data ) {
                $elements[ 'fieldset' ] = $elements[ 'fieldset' ] . $this->render_fieldset( $fieldset_data );
            }
        }
        $form_prefix = '<sst-form id="' . $form_data[ 'unique_id' ] . '">' . $form_data[ 'tag' ][ 'before' ] . '<form ' . $this->render_attrs( $form_data[ 'attrs' ] ) . '>';

        $form = $elements[ $form_data[ 'order' ][ 'show_first' ] ] . $elements[ $form_data[ 'order' ][ 'show_second' ] ] . $elements[ $form_data[ 'order' ][ 'show_third' ] ];

		if(!empty($this->attr_changer_code)){
			$between_start = '{name:';
			$between_end = '}';
			$attr_changer_code = $this->attr_changer_code;
			//krumo($attr_changer_code);
			preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $attr_changer_code, $matches );
			//krumo( $matches);
			foreach ( $matches[ 1 ] as $k => $match ) {
				$id = common::search_by_attr_to_get_other_attr( 'name' ,$match,'id', $form_data ,'form');
				
				$attr_changer_code = str_replace( $matches[ 0 ][ $k ],"#".$id, $attr_changer_code );
			}
			$this->attr_changer_code = $attr_changer_code;
			
			//krumo($this->attr_changer_code);
			$between_start = '{name_jq_value:';
			$between_end = '}';
			$attr_changer_code = $this->attr_changer_code;
			preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $attr_changer_code, $matches );
			//krumo( $matches);
			foreach ( $matches[ 1 ] as $k => $match ) {
				$id = common::search_by_attr_to_get_other_attr( 'name' ,$matches[ 1 ][$k],'id', $form_data ,'form');
				//krumo( $id);
				//krumo($matches[ 0 ][ $k ]);
				$attr_changer_code = str_replace( $matches[ 0 ][ $k ],"jQuery('#".$id."').val()", $attr_changer_code );
			}
			
			$this->attr_changer_code = $attr_changer_code;
					//	krumo($this->attr_changer_code);

			$form_suffix .= '<script type="text/javascript">'.$this->attr_changer_code.'</script>';
		}
        $form_suffix .= '</form>' . $form_data[ 'tag' ][ 'after' ] . '</sst-form>';
        return $form_prefix . $form . $form_suffix;


    }
    /************************************
      _____                                           
     |  __ \                                          
     | |__) |  _ __    ___     ___    ___   ___   ___ 
     |  ___/  | '__|  / _ \   / __|  / _ \ / __| / __|
     | |      | |    | (_) | | (__  |  __/ \__ \ \__ \
     |_|      |_|     \___/   \___|  \___| |___/ |___/
                                                      
    **************************************/
		//static $process_data;

    function render_process( $process_data ) {

        if ( $process_data == NULL ) {
            $process_data = $this->process_data;
        }
		$this->process_data =  $process_data ;
//		krumo($this->process_data);
        return $this->render_form( $process_data[ 'form_data' ] );
    }
}