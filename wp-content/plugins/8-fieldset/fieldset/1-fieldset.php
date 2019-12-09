<?php

class fieldset extends render {
    var $fieldset_data;
    private $fieldset_obj;
    static $prevent_loop;

    function __construct( $fieldset_id ) {
        $this->prevent_loop = array();
        $this->get_fieldset_object( $fieldset_id );
        $this->fieldset_data = $this->create_fieldset_structure( $fieldset_id );
        krm( $this->fieldset_data );

        // $this->create_fieldsets();
    }
    /*
     */
    function create_fieldset_structure( $fieldset_id, $parent_fieldset = NULL ) {
        $fieldset_obj = $this->get_fieldset_object( $fieldset_id );
        $all_fieldsets[ $fieldset_id ] = $this->create_inputs( $fieldset_obj ); //$fieldset_id;
        //this part change unique_ids and names of fields and javascript extra handle add and remove
        if ( $this->fieldset_obj->extra > 0 ) {
            $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_fieldset[ 'extra' ][ 'unique_id_suffix_repeat' ] + 1;
        } else {
            $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] = $parent_fieldset[ 'extra' ][ 'unique_id_suffix_repeat' ];
        }
        $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'max' ] = $this->fieldset_obj->extra;
        $all_fieldsets[ $fieldset_id ][ 'unique_id' ] = $all_fieldsets[ $fieldset_id ][ 'unique_id' ] . str_repeat( '≪0≫', $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
        foreach ( $all_fieldsets[ $fieldset_id ][ 'inputs_data' ] as $l => $input ) {
            $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'attrs' ][ 'name' ] = $input[ 'attrs' ][ 'name' ] . str_repeat( '[0]', $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
            $all_fieldsets[ $fieldset_id ][ 'inputs_data' ][ $l ][ 'unique_id' ] = $input[ 'unique_id' ] . str_repeat( '≪0≫', $all_fieldsets[ $fieldset_id ][ 'extra' ][ 'unique_id_suffix_repeat' ] );
        }

        $this->prevent_loop[ $fieldset_id ] = $fieldset_id;
        if ( !empty( $this->fieldset_obj->fieldset_ids ) ) {
            $child_fieldset_ids = $this->get_ids( $this->fieldset_obj->fieldset_ids );
            foreach ( $child_fieldset_ids as $k => $child_fieldset_id ) {
                if ( in_array( $child_fieldset_id, $this->prevent_loop ) == false ) {
                    $this->prevent_loop[ $child_fieldset_id ] = $child_fieldset_id;
                    $all_fieldsets[ $fieldset_id ][ 'childern' ][ $k ] = $this->create_fieldset_structure( $child_fieldset_id, $all_fieldsets[ $fieldset_id ] );
                    unset( $this->prevent_loop[ $child_fieldset_id ] );
                } else {
                    //dbg('the fieldset_ids of '.$fieldset_id. ' has his parent id which cause a forever loop . The parent id which make problem :'.$child_fieldset_id);
                    $this->error_log( 'the fieldset_ids of ' . $fieldset_id . ' has his parent id which cause a forever loop . The parent id which make problem :' . $child_fieldset_id . '. So we skip creating it and continue the others' );
                    unset( $this->prevent_loop[ $child_fieldset_id ] );
                }
            }

        }
        return $all_fieldsets[ $fieldset_id ];
    }
	function create_legend_data($legend_id){
		$this->fieldset_data[ 'legend' ]=array();
        if ( $this->is_positive_number( $legend_id ) ) {
            $legend_obj = $this->get_by_id( $legend_id, $GLOBALS[ 'sst_tables' ][ 'legend' ] );
			$global_attr_obj = new attribute_global_generator( $this->get_ids(  $legend_obj->attr_html_global_id, true ) );
			$custom_attr_obj = new attribute_custom_generator( $legend_obj->attr_custom_ids );
			if ( empty( $global_attr_obj->input_data[ 'attrs' ] ) ) {
				$global_attr_obj->input_data[ 'attrs' ] = array();
			}
			if ( empty( $custom_attr_obj->input_data[ 'attrs' ] ) ) {
				$custom_attr_obj->input_data[ 'attrs' ] = array();
			}
			$this->fieldset_data[ 'legend' ]['attrs'] =  array_merge( $global_attr_obj->input_data[ 'attrs' ] ,$custom_attr_obj->input_data[ 'attrs' ]);
			$this->fieldset_data[ 'legend' ]['text'] = $legend_obj->text;
            $this->fieldset_data[ 'legend' ][ 'tag' ][ 'tag_id' ] = $this->get_ids($legend_obj->tag_id,true);
            $tags = $this->render_tag( $this->fieldset_data[ 'legend' ][ 'tag' ][ 'tag_id' ] );
            $this->fieldset_data[ 'legend' ][ 'tag' ][ 'before' ] = $tags[ 'before' ];
            $this->fieldset_data[ 'legend' ][ 'tag' ][ 'after' ] = $tags[ 'after' ];
			
        } else {
            $this->error_log( 'fieldset id is empty or is not positive int.' );
            return NULL;
        }
	}
	function get_fieldset_attrs($fieldset_obj){
            $global_attr_obj = new attribute_global_generator( $this->get_ids(  $fieldset_obj->attr_html_global_id, true ) );
			$custom_attr_obj = new attribute_custom_generator( $fieldset_obj->attr_custom_ids );
			$specific_attr_obj = new attribute_generator;
			$specific_attr_obj->create_multiple_attrs( array('disabled'=>$fieldset_obj->disabled,
															 'form'=>$fieldset_obj->form,
															 'name'=>$fieldset_obj->name), 'fieldset' );
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
				$global_attr_obj->input_data[ 'attrs' ] ,
				$custom_attr_obj->input_data[ 'attrs' ],
				$specific_attr_obj->input_data[ 'attrs' ]);	}
    function get_fieldset_object( $fieldset_id ) {
        $fieldset_id = $this->get_ids( $fieldset_id, true );
        if ( $this->is_positive_number( $fieldset_id ) ) {
            $this->fieldset_obj = $this->get_by_id( $fieldset_id, $GLOBALS[ 'sst_tables' ][ 'fieldset' ] );
        } else {
            $this->error_log( 'fieldset id is empty or is not positive int.' );
            return NULL;
        }
    }

    function create_inputs( $fieldset_obj = NULL ) {
        if ( $fieldset_obj == NULL ) {
            $fieldset_obj = $this->fieldset_obj;
        }
        $this->fieldset_data = array();
        if ( !empty( $fieldset_obj ) ) {
            $this->fieldset_data[ 'id' ] = $fieldset_obj->id;
            $this->fieldset_data[ 'input_ids' ] = $this->get_ids( $fieldset_obj->input_ids );
			
			
			$this->get_fieldset_attrs($fieldset_obj);
			$this->create_legend_data($this->get_ids( $fieldset_obj->legend_id ,true));
			
			
            if ( !empty( $this->fieldset_data[ 'input_ids' ] ) ) {
                $this->fieldset_data[ 'unique_id' ] = $this->random_string( 12 );
                foreach ( $this->fieldset_data[ 'input_ids' ] as $k => $input_id ) {
                    $input_obj = new input( $input_id );
                    $this->fieldset_data[ 'inputs_data' ][] = $input_obj->input_data;
                }
                if ( class_exists( 'access' ) ) {
                    $access = new access( $fieldset_obj->access_id );
                    $this->fieldset_data[ 'access' ][ 'visbile' ] = $access->visible;
                    $this->fieldset_data[ 'access' ][ 'editable' ] = $access->editable;
                    $this->fieldset_data[ 'access' ][ 'addable' ] = $access->addable;
                }
                $this->fieldset_data[ 'tag' ][ 'tag_id' ] = $this->get_ids($fieldset_obj->tag_id,true);
                $tags = $this->render_tag( $this->fieldset_data[ 'tag' ][ 'tag_id' ] );
                $this->fieldset_data[ 'tag' ][ 'before' ] = $tags[ 'before' ];
                $this->fieldset_data[ 'tag' ][ 'after' ] = $tags[ 'after' ];
                //dbg( $this->fieldset_data[ 'tag' ]);
            } else {
                $this->error_log( 'no input ids after processing input ids of your fieldset.' );
                return NULL;
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