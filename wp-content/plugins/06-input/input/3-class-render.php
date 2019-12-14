<?php
class render extends database {
    #todo : validate html tags

    function create_tag_data( $tag_id, $child_before = '', $child_after = '' ) {
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
        $block_data = $this->generate_extra_data( $block_data );
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
                $elements['input'] = $inputs . $this->render_input( $input_data );
            }
        }
        if ( !empty( $block_data[ 'fieldsets_data' ] ) ) {
            $fieldsets = '';
            foreach ( $block_data[ 'fieldsets_data' ] as $fieldsets_data ) {
                $elements['fieldset'] = $fieldsets . $this->render_fieldset( $fieldsets_data );
            }
        }
        if ( !empty( $block_data[ 'childern' ] ) ) {
            foreach ( $block_data[ 'childern' ] as $new_block_data ) {
                 $elements['block'] = $this->render_block( $new_block_data );
            }
        }
		$block_prefix = '<sst-block id="' . $block_data[ 'unique_id' ] . '">'.$this->render_extra( $fieldset_data[ 'extra' ], 'before' ) .$block_data[ 'tag' ][ 'before' ];
        $block =  $elements[$block_data[ 'show_first' ]] .$elements[$block_data[ 'show_second' ]] . $elements[$block_data[ 'show_third' ]] ;
        $block_suffix =  $block_data[ 'tag' ][ 'after' ].$this->render_extra( $fieldset_data[ 'extra' ], 'after' ) .'</sst-block>';
        return $block_prefix.$block.$block_suffix;

    }

    function render_fieldset( $fieldset_data ) {
        if ( $fieldset_data == NULL ) {
            $fieldset_data = $this->fieldset_data;
        }
        $fieldset_data = $this->generate_extra_data( $fieldset_data );
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
                $elements['input'] = $inputs . $this->render_input( $input_data );
            }
        }
        if ( !empty( $fieldset_data[ 'blocks_data' ] ) ) {
            $blocks = '';
            foreach ( $fieldset_data[ 'blocks_data' ] as $blocks_data ) {
                $elements['block'] = $blocks . $this->render_block( $blocks_data );
            }
        }
        if ( !empty( $fieldset_data[ 'childern' ] ) ) {
            foreach ( $fieldset_data[ 'childern' ] as $new_fieldset_data ) {
               $elements['fieldset'] = $this->render_fieldset( $new_fieldset_data );
            }
        }
        $fieldset_prefix = '<sst-fieldset id="' . $fieldset_data[ 'unique_id' ] . '">' . $this->render_extra( $fieldset_data[ 'extra' ], 'before' ) . $fieldset_data[ 'tag' ][ 'before' ] . '<fieldset ' . $this->render_attrs( $fieldset_data[ 'attrs' ] ) . '>' . $this->render_legend( $fieldset_data[ 'legend' ] );

        $fieldset =  $elements[$block_data[ 'show_first' ]] .$elements[$block_data[ 'show_second' ]] . $elements[$block_data[ 'show_third' ]] ;


        $fieldset_suffix = '</fieldset>' . $fieldset_data[ 'tag' ][ 'after' ] . $this->render_extra( $fieldset_data[ 'extra' ], 'after' ) . '</sst-fieldset>';

        return $fieldset_prefix . $fieldset . $fieldset_suffix;

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

    function generate_extra_data( $data ) {
        if ( $data[ 'extra' ][ 'max' ] > 0 ) {
            $extra = new extra( $data[ 'extra' ][ 'max' ], $data[ 'unique_id' ] );
            $data[ 'extra' ][ 'add_controller' ] = $extra->extra_add_controller;
            $data[ 'extra' ][ 'remove_controller' ] = $extra->extra_remove_controller;
            $data[ 'extra' ][ 'controller_position' ] = EXTRA_CONTROLLER_POSITION;
            if ( EXTRA_CONTROLLER_POSITION == 'after'
                or EXTRA_CONTROLLER_POSITION == 'before' ) {
                $data[ 'extra' ][ 'controller_position' ] = 'after';
            }

        }
		return $data;
    }
	function render_form($form_data){
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
                $elements['input'] = $inputs . $this->render_input( $input_data );
            }
        }
        if ( !empty( $form_data[ 'blocks_data' ] ) ) {
            foreach ( $form_data[ 'blocks_data' ] as $blocks_data ) {
                $elements['block'] = $blocks . $this->render_block( $blocks_data );
            }
        }
        if ( !empty( $form_data[ 'fieldsets_data' ] ) ) {
            foreach ( $form_data[ 'fieldsets_data' ] as $fieldset_data ) {
               $elements['fieldset'] = $this->render_fieldset( $fieldset_data );
            }
        }
        $form_prefix = '<sst-form id="' . $form_data[ 'unique_id' ] . '">' . $form_data[ 'tag' ][ 'before' ] . '<form ' . $this->render_attrs( $form_data[ 'attrs' ] ) . '>';

        $form =  $elements[$form_data[ 'show_first' ]] .$elements[$form_data[ 'show_second' ]] . $elements[$form_data[ 'show_third' ]] ;


        $form_suffix = '</form>' . $form_data[ 'tag' ][ 'after' ] . '</sst-form>';
        return $form_prefix . $form . $form_suffix;
		

	}
}