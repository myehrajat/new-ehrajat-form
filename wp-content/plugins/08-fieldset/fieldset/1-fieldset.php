<?php

class fieldset extends data_creator {
  var $fieldset_data;
  private $fieldset_obj;
  static $prevent_loop;

  function __construct( $fieldset_id, $force_prevent_loop = array() ) {
    parent::__construct();

    $this->prevent_loop = $force_prevent_loop;

    $this->get_fieldset_object( $fieldset_id );
    $this->fieldset_data = $this->create_fieldset_structure( $fieldset_id );
  }

  function get_fieldset_object( $fieldset_id ) {
    $fieldset_id = $this->get_ids( $fieldset_id, true );
    if ( $this->is_positive_number( $fieldset_id ) ) {
      $this->fieldset_obj = $this->get_by_id( $fieldset_id, $GLOBALS[ 'sst_tables' ][ 'fieldset' ] );
      return $this->fieldset_obj;
    } else {
      $this->error_log( 'fieldset id is empty or is not positive int.' );
      return NULL;
    }
  }

  function create_blocks( $fieldset_ids_str, $unique_id_suffix_repeat = 0 ) {
    $block_fieldset_id_cause_forever_loop = array();
    $all_blocks = array();

    $block_ids = $this->get_ids( $fieldset_ids_str );
    foreach ( $block_ids as $block_id ) {
      $block_obj = $this->get_by_id( $block_id, $GLOBALS[ 'sst_tables' ][ 'block' ] );
      $block_fieldset_ids = $this->get_ids( $block_obj->fieldset_ids );
      foreach ( $block_fieldset_ids as $block_fieldset_id ) {
        if ( in_array( $block_fieldset_id, $this->prevent_loop ) == true ) {
          $block_fieldset_id_cause_forever_loop[] = $block_fieldset_id;
          $this->error_log( 'the fieldset_id of ' . $this->fieldset_obj->id . ' has his a block_id which cause forever loop . the block_id ' . $block_id . ' which is triggered by fieldset has fieldset id in block definition which in fieldset previously created and again fieldset trigger block and block trigger fieldset which is a loop forever.' );
        }
      }
      $block = new block( $block_id, $block_fieldset_id_cause_forever_loop );
      $block->block_data = $this->apply_unique_id_suffix_repeat_block_data( $block->block_data, $unique_id_suffix_repeat );
      $all_blocks[] = $block->block_data;

    }
    return $all_blocks;
  }

  function apply_unique_id_suffix_repeat_block_data( $block_data, $unique_id_suffix_repeat ) {
    if ( $unique_id_suffix_repeat > 0 ) {
      if ( $block_data[ 'extra' ][ 'unique_id_suffix_repeat' ] > 0 ) {


        $block_data[ 'unique_id' ] = $this->str_replace_first( '≪0≫', str_repeat( '≪0≫', $unique_id_suffix_repeat + 1 ), $block_data[ 'unique_id' ] );

        foreach ( $block_data[ 'inputs_data' ] as $inputs_data_key => $inputs_data ) {
          $block_data[ 'inputs_data' ][ $inputs_data_key ][ 'unique_id' ] = $this->str_replace_first( '≪0≫', str_repeat( '≪0≫', $unique_id_suffix_repeat + 1 ), $inputs_data[ 'unique_id' ] );
          $block_data[ 'inputs_data' ][ $inputs_data_key ][ 'attrs' ][ 'name' ] = $this->str_replace_first( '[0]', str_repeat( '[0]', $unique_id_suffix_repeat + 1 ), $inputs_data[ 'attrs' ][ 'name' ] );
        }
      } else {
        $block_data[ 'unique_id' ] = $block_data[ 'unique_id' ] . '≪0≫';
        foreach ( $block_data[ 'inputs_data' ] as $inputs_data_key => $inputs_data ) {
          $block_data[ 'inputs_data' ][ $inputs_data_key ][ 'unique_id' ] = $inputs_data[ 'unique_id' ] . '≪0≫';
          $block_data[ 'inputs_data' ][ $inputs_data_key ][ 'attrs' ][ 'name' ] = $inputs_data[ 'attrs' ][ 'name' ] . '[0]';
        }
      }
    }
    return $block_data;
  }

  function create_fieldset_structure( $fieldset_id, $parent_fieldset = NULL ) {
    $fieldset_obj = $this->get_fieldset_object( $fieldset_id );
    $all_fieldsets[ $fieldset_id ] = $this->create_inputs( $fieldset_obj ); //$fieldset_id;


    $all_fieldsets[ $fieldset_id ][ 'id' ] = $fieldset_obj->id;


    $all_fieldsets[ $fieldset_id ] = $this->create_unique_id_data( $all_fieldsets[ $fieldset_id ] );
    $all_fieldsets[ $fieldset_id ] = $this->create_access_data( $all_fieldsets[ $fieldset_id ], $fieldset_obj );
    $all_fieldsets[ $fieldset_id ] = $this->create_tag_data( $all_fieldsets[ $fieldset_id ], $fieldset_obj );


    //this part change unique_ids and names of fields and javascript extra handle add and remove
    if ( $fieldset_obj->extra > 0 ) {
      $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_fieldset[ 'extra' ][ 'unique_id_suffix_repeat' ] + 1;
    } else {
      $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_fieldset[ 'extra' ][ 'unique_id_suffix_repeat' ];
    }
    $all_fieldsets[ $fieldset_id ] = $this->create_show_order_data( $all_fieldsets[ $fieldset_id ], $fieldset_obj, 'fieldset' );
    $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'max' ] = $fieldset_obj->extra;
    $all_fieldsets[ $fieldset_id ][ 'unique_id' ] = $all_fieldsets[ $fieldset_id ][ 'unique_id' ] . str_repeat( '≪0≫', $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
    if ( !empty( $all_fieldsets[ $fieldset_id ][ 'inputs_data' ] ) ) {
      foreach ( $all_fieldsets[ $fieldset_id ][ 'inputs_data' ] as $l => $input ) {
        $repeated_name = str_repeat( '[0]', $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
        $repeated_id = str_repeat( '≪0≫', $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
        $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'attrs' ][ 'name' ] = $input[ 'attrs' ][ 'name' ] . $repeated_name;
        $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'unique_id' ] = $input[ 'unique_id' ] . $repeated_id;
        $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'tag' ][ 'after' ] = str_replace( $input[ 'attrs' ][ 'id' ], $input[ 'attrs' ][ 'id' ] . $repeated_id, $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'tag' ][ 'after' ] );;
        $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'tag' ][ 'before' ] = str_replace( $input[ 'attrs' ][ 'id' ], $input[ 'attrs' ][ 'id' ] . $repeated_id, $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'tag' ][ 'before' ] );;
      }
    } else {
      $this->error_log( 'there is no input in fieldset' );
    }
    $this->prevent_loop[ $fieldset_id ] = $fieldset_id;
    $all_fieldsets[ $fieldset_id ][ 'blocks_data' ] = $this->create_blocks( $fieldset_obj->block_ids, $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );

    //$all_fieldsets[ $fieldset_id ][ 'blocks_data' ] = $this->create_blocks( $fieldset_obj->block_ids );
    if ( !empty( $fieldset_obj->fieldset_ids ) ) {
      $child_fieldset_ids = $this->get_ids( $fieldset_obj->fieldset_ids );
      foreach ( $child_fieldset_ids as $k => $child_fieldset_id ) {
        if ( in_array( $child_fieldset_id, $this->prevent_loop ) == false ) {
          $this->prevent_loop[ $child_fieldset_id ] = $child_fieldset_id;
          $all_fieldsets[ $fieldset_id ][ 'children' ][ $k ] = $this->create_fieldset_structure( $child_fieldset_id, $all_fieldsets[ $fieldset_id ] );
          unset( $this->prevent_loop[ $child_fieldset_id ] );
        } else {
          //dbg('the fieldset_ids of '.$fieldset_id. ' has his parent id which cause a forever loop . The parent id which make problem :'.$child_fieldset_id);
          $this->error_log( 'the fieldset_ids of ' . $fieldset_id . ' has his parent id which cause a forever loop . The parent id which make problem :' . $child_fieldset_id . '. So we skip creating it and continue the others' );
          unset( $this->prevent_loop[ $child_fieldset_id ] );
        }
      }

    }else{
		$all_fieldsets[ $fieldset_id ][ 'children' ] = NULL;
	}
    return $all_fieldsets[ $fieldset_id ];
  }

  function create_legend_data( $legend_id ) {
    $this->fieldset_data[ 'legend' ] = array();
    if ( $this->is_positive_number( $legend_id ) ) {
      $legend_obj = $this->get_by_id( $legend_id, $GLOBALS[ 'sst_tables' ][ 'legend' ] );
      $global_attr_obj = new attribute_global_generator( $this->get_ids( $legend_obj->attr_html_global_id, true ) );
      $custom_attr_obj = new attribute_custom_generator( $legend_obj->attr_custom_ids );
      if ( empty( $global_attr_obj->input_data[ 'attrs' ] ) ) {
        $global_attr_obj->input_data[ 'attrs' ] = array();
      }
      if ( empty( $custom_attr_obj->input_data[ 'attrs' ] ) ) {
        $custom_attr_obj->input_data[ 'attrs' ] = array();
      }
      $this->fieldset_data[ 'legend' ][ 'attrs' ] = array_merge( $global_attr_obj->input_data[ 'attrs' ], $custom_attr_obj->input_data[ 'attrs' ] );
      $this->fieldset_data[ 'legend' ][ 'text' ] = $legend_obj->text;

      $this->fieldset_data[ 'legend' ] = $this->create_tag_data( $this->fieldset_data[ 'legend' ], $legend_obj );
    } else {
      $this->error_log( 'fieldset id is empty or is not positive int.' );
      return NULL;
    }
  }

  function get_fieldset_attrs( $fieldset_obj ) {
    $global_attr_obj = new attribute_global_generator( $this->get_ids( $fieldset_obj->attr_html_global_id, true ) );
    $custom_attr_obj = new attribute_custom_generator( $fieldset_obj->attr_custom_ids );
    $specific_attr_obj = new attribute_generator;
    $specific_attr_obj->create_multiple_attrs( array( 'disabled' => $fieldset_obj->disabled,
      'form' => $fieldset_obj->form,
      'name' => $fieldset_obj->name ), 'fieldset' );
    if ( empty( $global_attr_obj->input_data[ 'attrs' ] ) ) {
      $global_attr_obj->input_data[ 'attrs' ] = array();
    }
    if ( empty( $custom_attr_obj->input_data[ 'attrs' ] ) ) {
      $custom_attr_obj->input_data[ 'attrs' ] = array();
    }
    if ( empty( $specific_attr_obj->input_data[ 'attrs' ] ) ) {
      $specific_attr_obj->input_data[ 'attrs' ] = array();
    }
    $this->fieldset_data[ 'attrs' ] = array_merge(
      $global_attr_obj->input_data[ 'attrs' ],
      $custom_attr_obj->input_data[ 'attrs' ],
      $specific_attr_obj->input_data[ 'attrs' ] );
  }


  function create_inputs( $fieldset_obj = NULL ) {
    if ( $fieldset_obj == NULL ) {
      $fieldset_obj = $this->fieldset_obj;
    }
    $this->fieldset_data = array();
    if ( !empty( $fieldset_obj ) ) {
      $this->fieldset_data[ 'id' ] = $fieldset_obj->id;
      $this->fieldset_data[ 'input_ids' ] = $this->get_ids( $fieldset_obj->input_ids );


      $this->get_fieldset_attrs( $fieldset_obj );
      $this->create_legend_data( $this->get_ids( $fieldset_obj->legend_id, true ) );

      if ( !empty( $this->fieldset_data[ 'input_ids' ] ) ) {
        foreach ( $this->fieldset_data[ 'input_ids' ] as $k => $input_id ) {
          $input_obj = new input( $input_id );
          $this->fieldset_data[ 'inputs_data' ][] = $input_obj->input_data;
        }
      } else {
        $this->fieldset_data[ 'input_ids' ] = NULL;
        $this->fieldset_data[ 'inputs_data' ] = NULL;
        //$this->error_log( 'no input ids after processing input ids of your fieldset.' );
        //return NULL;
      }

    } else {
      $this->error_log( 'fieldset id is empty or after processing is empty.' );
      return NULL;
    }
    return $this->fieldset_data;
  }

  function render( $fieldset_data = NULL ) {

    return $this->render_fieldset( $fieldset_data );
  }

}