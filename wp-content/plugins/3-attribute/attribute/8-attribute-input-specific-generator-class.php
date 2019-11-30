<?php
interface attribute_input_specific_generator_interface{
    function create_attr_input_specific();
    function create_all_options( $specific_obj ) ;
    function create_optgroups( $optgroup_ids ) ;
    function get_list_values( $list_ids ) ;
    function looper( $json, $json_pointer ) ;
}
	
class attribute_input_specific_generator extends attribute_input_common_generator implements attribute_input_specific_generator_interface{
    var $input_html_type;
    var $attr_input_specific_id;
    var $specific_obj;
    var $specific_attr;
    var $text;
    var $option_data;

    function __construct( string $attr_input_specific_id = NULL, string $input_html_type = NULL ) {
        $this->input_html_type = $input_html_type;

        $this->attr_input_specific_id = $this->get_ids( $attr_input_specific_id, true );
        if ( !empty( $this->attr_input_specific_id ) ) {
            if ( !empty( $this->input_html_type ) ) {
                switch ( $this->input_html_type ) {
                    case "text":
                    case "search":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] );
                        break;
                    case "tel":
                    case "url":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_tel_url' ] );
                        break;
                    case "submit":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_submit' ] );
                        break;
                    case "range":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_range' ] );
                        break;
                    case "password":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_password' ] );
                        break;
                    case "number":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_number' ] );
                        break;
                    case "image":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_image' ] );
                        break;
                    case "file":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_file' ] );
                        break;
                    case "email":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_email' ] );
                        break;
                    case "date":
                    case "datetime-local":
                    case "month":
                    case "time":
                    case "week":
                    case "datetime":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_date_time_related' ] );
                        break;
                    case "color":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_color' ] );
                        break;
                    case "checkbox":
                    case "radio":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_checkbox_radio' ] );
                        break;
                    case "select":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select' ] );
                        break;
                    case "textarea":
                        $this->specific_obj = $this->get_by_id( $this->attr_input_specific_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_textarea' ] );
                        break;
                    default:
                        $this->specific_obj = NULL;
                        $this->error_log( 'input_type arguments is invalid.' );
                        return NULL;
                        break;
                }
                if ( !empty( $this->specific_obj ) ) {
                    $this->create_attr_input_specific();
																		

                } else {
                    $this->specific_obj = NULL;
                    $this->error_log( 'cant find specific id in the table ' . $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] . '.' );
                    return NULL;
                }
            } else {
                $this->specific_obj = NULL;
                $this->error_log( 'input_type arguments the second argument is empty.' );
                return NULL;
            }
        } else {
            $this->specific_obj = NULL;
            $this->error_log( 'input_specific_id arguments the first argument is empty.' );
            return NULL;
        }
    }



    function create_attr_input_specific() {
        if ( !empty( $this->attr_input_specific_id ) ) {
            $attr_input_specific_arr = array();
            switch ( $this->input_html_type ) {
                case "text":
                case "search":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'dirname' => $this->specific_obj->dirname,
                        'list' => $this->specific_obj->list,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );

                    break;
                case "tel":
                case "url":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "submit":
                    $specific = $this->create_multiple_attrs( array(
                        'autofocus' => $this->specific_obj->autofocus,
                        'formaction' => $this->specific_obj->formaction,
                        'formenctype' => $this->specific_obj->formenctype,
                        'formmethod' => $this->specific_obj->formmethod,
                        'formnovalidate' => $this->specific_obj->formnovalidate,
                        'formtarget' => $this->specific_obj->formtarget,
                    ), $this->input_html_type );
                    break;
                case "range":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'max' => $this->specific_obj->max,
                        'min' => $this->specific_obj->min,
                        'multiple' => $this->specific_obj->multiple,
                        'step' => $this->specific_obj->step,
                    ), $this->input_html_type );
                    $this->list_elements = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "password":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    break;
                case "number":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'max' => $this->specific_obj->max,
                        'min' => $this->specific_obj->min,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'step' => $this->specific_obj->step,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "image":
                    $specific = $this->create_multiple_attrs( array(
                        'alt' => $this->specific_obj->alt,
                        'autofocus' => $this->specific_obj->autofocus,
                        'formaction' => $this->specific_obj->formaction,
                        'formenctype' => $this->specific_obj->formenctype,
                        'formmethod' => $this->specific_obj->formmethod,
                        'formnovalidate' => $this->specific_obj->formnovalidate,
                        'formtarget' => $this->specific_obj->formtarget,
                        'height' => $this->specific_obj->height,
                        'src' => $this->specific_obj->src,
                        'width' => $this->specific_obj->width,
                    ), $this->input_html_type );
                    break;
                case "file":
                    $specific = $this->create_multiple_attrs( array(
                        //https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/file#Unique_file_type_specifiers
                        'accept' => $this->specific_obj->accept_ids,
                        'autofocus' => $this->specific_obj->autofocus,
                        'capture' => $this->specific_obj->capture,
                        'multiple' => $this->specific_obj->multiple,
                        'required' => $this->specific_obj->required,
                    ), $this->input_html_type );
                    break;
                case "email":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'multiple' => $this->specific_obj->multiple,
                        'pattern' => $this->specific_obj->pattern,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "date":
                case "datetime-local":
                case "month":
                case "time":
                case "week":
                case "datetime":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                        'max' => $this->specific_obj->max,
                        'min' => $this->specific_obj->min,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'step' => $this->specific_obj->step,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "color":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'list' => $this->specific_obj->list,
                    ), $this->input_html_type );
                    $this->option_data = $this->get_list_values( $this->specific_obj->list_ids );
                    break;
                case "checkbox":
                case "radio":
                    $specific = $this->create_multiple_attrs( array(
                        'autofocus' => $this->specific_obj->autofocus,
                        'checked' => $this->specific_obj->checked,
                        'required' => $this->specific_obj->required,
                    ), $this->input_html_type );
                    break;
                case "select":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'multiple' => $this->specific_obj->multiple,
                        'required' => $this->specific_obj->required,
                        'size' => $this->specific_obj->size,
                    ), $this->input_html_type );
					//dbg('first',false);
                    $this->unselected_text = $this->specific_obj->unselected_text;
					//dbg('second',false);
                    $this->create_all_options( $this->specific_obj );
					//dbg('third',false);
                    $this->show_first = $this->specific_obj->show_first;
                    break;
                case "textarea":
                    $specific = $this->create_multiple_attrs( array(
                        'autocomplete' => $this->specific_obj->autocomplete,
                        'autofocus' => $this->specific_obj->autofocus,
                        'cols' => $this->specific_obj->cols,
                        'maxlength' => $this->specific_obj->maxlength,
                        'minlength' => $this->specific_obj->minlength,
                        'placeholder' => $this->specific_obj->placeholder,
                        'readonly' => $this->specific_obj->readonly,
                        'required' => $this->specific_obj->required,
                        'rows' => $this->specific_obj->rows,
                        'wrap' => $this->specific_obj->wrap,
                    ), $this->input_html_type );
                    $this->text = $this->specific_obj->text;
                    break;
            }
        } else {
            $this->error_log( 'specific attrs id provided is empty string.' );
            return NULL;
        }
    }

    function create_all_options( $specific_obj ) {

        $original_input_data = $this->input_data;
        if ( !empty( $specific_obj->optgroup_ids ) ) {
            $this->create_optgroups( $this->is_eval_run( $specific_obj->optgroup_ids ) );
        }

        if ( !empty( $specific_obj->option_ids ) ) {
            $this->option_data = $this->get_list_values( $specific_obj->option_ids );
        }
        $this->input_data = $original_input_data;

    }
    var $optgroup_data;

    function create_optgroups( $optgroup_ids ) {
        $optgroup_ids = $this->get_ids( $optgroup_ids );
        foreach ( $optgroup_ids as $i => $optgroup_id ) {
            $optgroup_obj = $this->get_by_id( $optgroup_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select_optgroup' ] );
            if ( $optgroup_obj ) {
                $optgroup_global_attr_obj = new attribute_global_generator( $this->is_eval_run( $optgroup_obj->attr_html_global_id ) );
                $this->input_data = array();
                $optgroup_attrs[] = $this->create_attribute( 'label', $optgroup_obj->label );
                $optgroup_data[ $i ][ 'attrs' ] = array_merge( $optgroup_global_attr_obj->input_data[ 'attrs' ], $this->input_data[ 'attrs' ] );
                $optgroup_data[ $i ][ 'options' ] = $this->get_list_values( $optgroup_obj->option_ids );
            } else {
                $this->error_log( 'optgroup id provided can not find in optgroup table' );
            }
        }
        $this->optgroup_data = $optgroup_data;
    }


    function get_list_values( $list_ids ) {
        if ( $this->input_html_type != 'select' ) {
            $original_input_data = $this->input_data;
        }
        $list_ids = $this->get_ids( $list_ids );
        $i = 0;
        if ( !empty( $list_ids ) ) {
            foreach ( $list_ids as $list_id ) {
                $this->input_data = array();
                $opt_attrs = array( 'specific' => array(), 'global' => array() );
                if ( $this->input_html_type == 'select' ) {
                    $list_obj = $this->get_by_id( $list_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_select_options' ] );
                    $specific_attr = $this->create_multiple_attrs( array(
                        'disabled' => $list_obj->disabled,
                        'selected' => $list_obj->selected,
                    ), 'option' );
                } else {
                    $list_obj = $this->get_by_id( $list_id, $GLOBALS[ 'sst_tables' ][ 'attr_input_attr_list' ] );
                    $specific_attr = $this->create_multiple_attrs( array(
                        'disabled' => $list_obj->disabled,
                    ), 'option' );

                }
                if ( $this->input_data[ 'attrs' ] == NULL ) {
                    $this->input_data[ 'attrs' ] = array();
                }
                $opt_attrs[ 'specific' ] = $this->input_data[ 'attrs' ];
                if ( !empty( $list_obj->attr_html_global_id ) ) {
                    $global_obj = new attribute_global_generator( $this->is_eval_run( $list_obj->attr_html_global_id ) );
                    if ( $this->input_data[ 'attrs' ] == NULL ) {
                        $this->input_data[ 'attrs' ] = array();
                    }

                    $opt_attrs[ 'global' ] = $global_obj->input_data[ 'attrs' ];
					//dbg($global_obj->input_data[ 'attrs' ]);
                }
                if ( in_array( $list_obj->source_type, array( 'json', 'query', 'value' ) ) ) {
                    switch ( $list_obj->source_type ) {
                        case 'value':

                            $val = $this->is_eval_run( $list_obj->value );
                            if ( $val ) {
                                if ( $this->input_html_type == 'select' ) {
                                    $this->input_data = array();
                                    $this->create_attribute( 'value', $val );
                                    $this->create_attribute( 'label', $this->is_eval_run( $list_obj->label ) );
                                    $options[ $i ][ 'text' ] = $this->is_eval_run( $list_obj->text );

                                } else {
                                    $this->create_attribute( 'value', $val );
                                    $this->create_attribute( 'label', $this->is_eval_run( $list_obj->label ) );

                                }
                                $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                $i++;
                            } else {
                                $this->error_log( 'list | option VALUE is empty.' );
                            }
                            break;
                        case 'query':
                            global $wpdb;
                            $results = $wpdb->get_results( $list_obj->query );
                            if ( !empty( $results )and!empty( $list_obj->query_value_function ) ) {
                                if ( $this->input_html_type == 'select' ) {

                                    foreach ( $results as $result ) {
                                        $this->input_data = array();
                                        $this->create_attribute( 'value', $this->run_eval( $list_obj->query_value_function, $result ) );
                                        $this->create_attribute( 'label', $this->run_eval( $list_obj->query_label_function, $result ) );
                                        $options[ $i ][ 'text' ] = $this->run_eval( $list_obj->query_text_function, $result );
                                        $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                        $i++;
                                    }
                                } else {
                                    foreach ( $results as $result ) {
                                        $this->input_data = array();
                                        $this->create_attribute( 'value', $this->run_eval( $list_obj->query_value_function, $result ) );
                                        $this->create_attribute( 'label', $this->run_eval( $list_obj->query_label_function, $result ) );
                                        $options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
                                        $i++;
                                    }
                                }

                            } else {
                                $this->error_log( 'list | option values as query return nothing or may query_value_function is empty.' );
                            }
                            break;
                        case 'json':
							$encoded_json = $this->file_get_contents_with_timer( $list_obj->json_url,NULL );
							if($encoded_json==true){
								$json = json_decode( $encoded_json );
								if ( $json ) {
									$array_of_lists_labels = array();
									$array_of_lists_texts = array();
									$array_of_lists_values = $this->looper( $json, $list_obj->json_value_pointer );
									if ( !empty( $array_of_lists_values ) ) {
										$array_of_lists_labels = $this->looper( $json, $list_obj->json_label_pointer );
										if ( $this->input_html_type == 'select' ) {
											$array_of_lists_texts = $this->looper( $json, $list_obj->json_text_pointer );
											foreach ( $array_of_lists_values as $k => $array_of_lists_value ) {
												$array_of_lists[ $k ][ 'value' ] = $array_of_lists_value;
												$array_of_lists[ $k ][ 'label' ] = $array_of_lists_labels[ $k ];
												$array_of_lists[ $k ][ 'text' ] = $array_of_lists_texts[ $k ];
											}
											foreach ( $array_of_lists as $array_of_list ) {
												$this->input_data = array();
												$this->create_attribute( 'value', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'value' ] . ';', $json ) );
												$this->create_attribute( 'label', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'label' ] . ';', $json ) );
												$options[ $i ][ 'text' ] = $this->run_eval( 'return $eval_var->' . $array_of_list[ 'text' ] . ';', $json );
												$options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
												$i++;
											}
										} else {
											foreach ( $array_of_lists_values as $k => $array_of_lists_value ) {
												$array_of_lists[ $k ][ 'value' ] = $array_of_lists_value;
												$array_of_lists[ $k ][ 'label' ] = $array_of_lists_labels[ $k ];
											}
											foreach ( $array_of_lists as $array_of_list ) {
												$this->create_attribute( 'value', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'value' ] . ';', $json ) );
												$this->create_attribute( 'label', $this->run_eval( 'return $eval_var->' . $array_of_list[ 'label' ] . ';', $json ) );
												$options[ $i ][ 'attrs' ] = array_merge( $opt_attrs[ 'global' ], $opt_attrs[ 'specific' ], $this->input_data[ 'attrs' ] );
												$i++;
											}

										}
									} else {
										$this->error_log( 'list values as json_value_pointer return nothing.' );
										//return false;
									}
								} else {
									$this->error_log( 'json url provided is cant be parsed as json may  malformatted.' );
									//return false;
								}
							}else{
								$this->error_log( 'your json url dont return 200 code');
							}
                            break;
                        default:
                            $this->error_log( 'mistyped source_type' );
                            //return false;
                            break;
                    }
                } else {
                    $this->error_log( 'list provided should only be query or json or value in source_type.' );
                    //return false;
                }
            }
            if ( $this->input_html_type != 'select' ) {
                $this->input_data = $original_input_data;
            }
            //return $all_attrs;
            return $options;

        } else {
            //list ids is empty;
            return NULL;
        }
    }

    /*****
    	
    	this is used for json decoded iritatror pointer
    	we dont check the correctness todo because its hard and im lazy
    ******/
    function looper( $json, $json_pointer ) {
        // echo debug_backtrace()[ 1 ][ 'function' ];
        //save all final data in $po without any $i
        static $po;
        if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
            $po = array();
        }
        $strlen = strlen( $json_pointer );
        //this function is recursive it call himself untill finding occur $i become false 
        $occur = strpos( $json_pointer, '$i' );
        /** yet there is $i so loop **/
        if ( $occur !== false ) {
            //remove arry signs to get obj name
            $obj_name = substr( $json_pointer, 0, $occur - 1 );
            // check is obj name yet array according to php limit which will not allow to use array sing in var and get val or count so we extract its num to use later so use eval to persaud php take it account
            $count = $this->run_eval( 'return count($eval_var->' . $obj_name . ');', $json );
            //create possible vars by counted
            for ( $x = 0; $x < $count; $x++ ) {
                $new_pointer = $this->str_replace_first( '$i', $x, $json_pointer );
                $this->looper( $json, $new_pointer );
            }
        } else {
            $po[] = $json_pointer;
        }
        return $po;
    }
}
