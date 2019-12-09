<?php
class render extends database {
    #todo : validate html tags

    function create_tag_data( $tag_id, $child_before = '', $child_after = '' ) {
        if ( !isset( $tag_ids ) ) {
            static $tag_ids = array();
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
                        $result = $this->create_tag_data( $tag_obj->parent_tag_id, $new_child_before, $new_child_after );
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

    function replace_attribute_short_codes( $str, $attrs, $between_start = '{attr:', $between_end = '}' ) {
        global $wpdb;
        if ( !empty( $str ) ) {
            preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $str, $matches );
            foreach ( $matches[ 1 ] as $k => $match ) {
                $str = str_replace( $matches[ 0 ][ $k ], $attrs[ $match ], $str );
            }
        }
        return $str;
    }

    function render_tag( $tag_id, $attrs = NULL, $element = NULL ) {

        $tag = $this->create_tag_data( $tag_id );

        $before = $this->replace_all_variable_short_codes( $tag[ 'before' ] );
        $after = $this->replace_all_variable_short_codes( $tag[ 'after' ] );
        //if( $tag_id==27){dbg($before);}

        if ( !empty( $attrs ) ) {
            $before = $this->replace_attribute_short_codes( $before, $attrs );
            $after = $this->replace_attribute_short_codes( $after, $attrs );
        }
        if ( !empty( $element ) ) {
            return $before . $element . $after;
        } else {
            return array( 'before' => $before, 'after' => $after );
        }
    }

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
        if ( $input_data == NULL ) {
            $input_data = $this->input_data;
        }
        if ( $input_data[ 'extra' ][ 'max' ] > 0 ) {
            $extra = new extra( $input_data[ 'extra' ][ 'max' ], $input_data[ 'unique_id' ] );
            $input_data[ 'extra' ][ 'add_controller' ] = $extra->extra_add_controller;
            $input_data[ 'extra' ][ 'remove_controller' ] = $extra->extra_remove_controller;
            $input_data[ 'extra' ][ 'controller_position' ] = EXTRA_CONTROLLER_POSITION;
        }
        //dbg($input_data );
        if ( $input_data[ 'access' ][ 'visbile' ] == 'no'
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
            case "file":
            case "checkbox":
            case "radio":
                $input = '<input' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>';
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
                $select_list = $this->render_select_list( $input_data );
                $input = '<select' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>' . $select_list . '</select>';
                break;
            case "textarea":
                $input = '<textarea' . $this->render_attrs( $input_data[ 'attrs' ] ) . '>' . $input_data[ 'text' ] . '</textarea>';
                break;
        }
        $input = $input_data[ 'tag' ][ 'before' ] . $input . $input_data[ 'tag' ][ 'after' ];

        if ( $input_data[ 'extra' ][ 'controller_position' ] == 'before' ) {
            $input = $input_data[ 'extra' ][ 'add_controller' ] . $input_data[ 'extra' ][ 'remove_controller' ] . $input;
        } elseif ( $input_data[ 'extra' ][ 'controller_position' ] == 'after' ) {
            $input = $input . $input_data[ 'extra' ][ 'add_controller' ] . $input_data[ 'extra' ][ 'remove_controller' ];
        } else {
            $input = $input . $input_data[ 'extra' ][ 'add_controller' ] . $input_data[ 'extra' ][ 'remove_controller' ];
        }

        $input = '<sst-input id="' . $input_data[ 'unique_id' ] . '" >' . $input . '</sst-input>';
        $this->input = $input;
        return $this->input;

    }

    function render_block( $block_data ) {

        if ( $block_data == NULL ) {
            $block_data = $this->block_data;
        }
        if ( $block_data[ 'extra' ][ 'max' ] > 0 ) {
            $extra = new extra( $block_data[ 'extra' ][ 'max' ], $block_data[ 'unique_id' ] );
            $block_data[ 'extra' ][ 'add_controller' ] = $extra->extra_add_controller;
            $block_data[ 'extra' ][ 'remove_controller' ] = $extra->extra_remove_controller;
            $block_data[ 'extra' ][ 'controller_position' ] = EXTRA_CONTROLLER_POSITION;

        }
        if ( $block_data[ 'access' ][ 'visbile' ] == 'no'
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
                $inputs .= $this->render_input( $input_data );
            }
        }
        $block = $block_data[ 'tag' ][ 'before' ] . $inputs . $input_data[ 'tag' ][ 'after' ];
        //dbg($block_data[ 'tag' ]);
        if ( $block_data[ 'extra' ][ 'controller_position' ] == 'before' ) {
            $block = $block_data[ 'extra' ][ 'add_controller' ] . $block_data[ 'extra' ][ 'remove_controller' ] . $block;
        } elseif ( $block_data[ 'extra' ][ 'controller_position' ] == 'after' ) {
            $block = $block . $block_data[ 'extra' ][ 'add_controller' ] . $block_data[ 'extra' ][ 'remove_controller' ];
        } else {
            $block = $block . $block_data[ 'extra' ][ 'add_controller' ] . $block_data[ 'extra' ][ 'remove_controller' ];
        }

        $block = '<sst-block id="' . $block_data[ 'unique_id' ] . '">' . $block . '</sst-block>';
        return $block;

    }
	    function render_fieldset( $fieldset_data ) {
			
		}

}