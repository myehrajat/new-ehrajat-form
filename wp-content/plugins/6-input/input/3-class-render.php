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

    function replace_attribute_short_codes( $str, $between_start = '{attr:', $between_end = '}' ) {
        global $wpdb;
        if ( !empty( $str ) ) {
            preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $str, $matches );
            foreach ( $matches[ 1 ] as $k => $match ) {
                $str = str_replace( $matches[ 0 ][ $k ], $this->input_data[ 'attrs' ][ $match ], $str );
            }
        }
        return $str;
    }

    function render_tag( $element, $tag_id ) {
        $tag = $this->create_tag_data( $tag_id );
        $before = $this->replace_all_variable_short_codes( $tag[ 'before' ] );
        $after = $this->replace_all_variable_short_codes( $tag[ 'after' ] );


        $before = $this->replace_attribute_short_codes( $before );
        $after = $this->replace_attribute_short_codes( $after );
        return $before . $element . $after;
    }

    function render_datalist() {
        if ( !empty( $this->input_data[ 'option_data' ] ) ) {
            if ( empty( $this->input_data[ 'attrs' ][ 'list' ] ) ) {
                $this->input_data[ 'attrs' ][ 'list' ] = 'random_id_' . $this->random_string();
            }
            $datalist = '<datalist id="' . $this->input_data[ 'attrs' ][ 'list' ] . '">';
            foreach ( $this->input_data[ 'option_data' ] as $option ) {
                $datalist .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>';
            }
            $datalist .= '</datalist>';
            return $datalist;
        }
    }

    function render_select_list() {
        if ( empty( $this->input_data[ 'multiple' ] )and!empty( $this->input_data[ 'unselected_text' ] )and $this->input_data[ 'size' ] <= 1 ) {
            $select_list .= '<option disabled="disabled" label="' . $this->input_data[ 'unselected_text' ] . '">' . $this->input_data[ 'unselected_text' ] . '</option>';
        }
        if ( $this->input_data[ 'show_first' ] == 'option' ) {
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
        } elseif ( $this->input_data[ 'show_first' ] == 'optgroup' ) {
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
        } else {
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
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
}