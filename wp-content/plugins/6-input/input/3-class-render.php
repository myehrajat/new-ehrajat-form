<?php
class render extends database {
  #todo : validate html tags
  function create_tag_data( $tag_id ) {
    $tag_id = $this->get_ids( $tag_id, true );
    if ( !empty( $tag_id ) ) {
      $tag_obj = $this->get_by_id( $tag_id, $GLOBALS[ 'sst_tables' ][ 'tags' ] );
      if ( !empty( $tag_obj ) ) {
        return array( 'before' => $tag_obj->tag_before, 'after' => $tag_obj->tag_after );
      }
    }
  }

  function render_tag( $before, $element, $after ) {
    $before = str_replace( '{{id}}', $this->input_data[ 'attrs' ][ 'id' ], $before );
    $after = str_replace( '{{id}}', $this->input_data[ 'attrs' ][ 'id' ], $after );
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