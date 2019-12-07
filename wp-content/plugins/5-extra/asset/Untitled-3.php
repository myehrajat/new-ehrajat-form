<?php

class input extends render {
		public $input_data;

    private $common_attr_obj;
    private $global_attr_obj;
    private $specific_attr_obj;
    private $custom_attr_obj;
    private $input_obj;

    function __construct( $input_id = NULL ) {

        $input_id = $this->get_ids( $input_id, true );
        if ( !empty( $input_id ) ) {

            $this->input_obj = $this->get_by_id( $input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
            if ( !empty( $this->input_obj ) ) {
                $this->all_attributes( $input_id );

            } else {

                $this->error_log( 'input object cant retrieve.' );
                return NULL;
            }
        } else {
            $this->error_log( 'input id is empty or after processing is empty.' );
            return NULL;
        }

    }

    function common_atrributes( string $input_id ) {
        $this->common_attr_obj = new attribute_input_common_generator( $input_id );
        $input_type_id = $input_obj->type_id;
        $this->input_data[ 'input_type' ] = $this->common_attr_obj->input_type;
        $this->input_data[ 'input_html_type' ] = $this->common_attr_obj->input_html_type;
    }

    function global_atrributes( string $global_id ) {
        $this->global_attr_obj = new attribute_global_generator( $this->get_ids( $global_id, true ) );
    }

    function specific_atrributes( string $specific_id ) {
        if ( $this->input_data[ 'input_html_type' ] !== 'hidden' ) {
            $specific_id = $this->get_ids( $specific_id, true );
            if ( !empty( $specific_id ) ) {
                $this->specific_attr_obj = new attribute_input_specific_generator( $specific_id, $this->input_data[ 'input_html_type' ] );
                if ( !empty( $this->specific_attr_obj ) ) {
                    /***********
                    following input can use list
                    /text,search,tel,url,range,number,email,date,datetime-local,month,time,week,datetime,color,select
                    **************/
                    $this->input_data[ 'option_data' ] = $this->specific_attr_obj->option_data;
                    $this->input_data[ 'optgroup_data' ] = $this->specific_attr_obj->optgroup_data;
                    $this->input_data[ 'unselected_text' ] = $this->specific_attr_obj->unselected_text;
                    $this->input_data[ 'text' ] = $this->specific_attr_obj->text;
                    $this->input_data[ 'show_first' ] = $this->specific_attr_obj->show_first;
                } else {
                    $this->error_log( 'input specific id is incorrect.' );
                    $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
                    $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
                    return NULL;
                }
            } else {
                $this->error_log( 'input specific id is empty.' );
                return NULL;
            }

        }
    }

    function custom_atrributes( string $custom_id ) {
        $this->custom_attr_obj = new attribute_custom_generator( $input_obj->attr_custom_ids );
    }

    function all_attributes( $input_id ) {

        $all_attr = array();

        $this->common_atrributes( $input_id );
        //dbg('common_atrributes',false);
        $this->global_atrributes( $this->input_obj->attr_html_global_id );
        //dbg('global_atrributes',false);
        $this->specific_atrributes( $this->input_obj->attr_input_specific_id );
        //dbg('specific_atrributes',false);
        $this->custom_atrributes( $this->input_obj->attr_custom_ids );
        if ( empty( $this->common_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->common_attr_obj->input_data[ 'attrs' ] = array();
        }
        if ( empty( $this->global_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->global_attr_obj->input_data[ 'attrs' ] = array();
        }
        if ( empty( $this->specific_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->specific_attr_obj->input_data[ 'attrs' ] = array();
        }
        if ( empty( $this->custom_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->custom_attr_obj->input_data[ 'attrs' ] = array();
        }
        //dbg($this->specific_atrributes->input_data[ 'attrs' ]);

        $this->input_data[ 'attrs' ] = array_merge(
            $this->global_attr_obj->input_data[ 'attrs' ],
            $this->common_attr_obj->input_data[ 'attrs' ],
            $this->custom_attr_obj->input_data[ 'attrs' ],
            $this->specific_attr_obj->input_data[ 'attrs' ]
        );
        if ( class_exists( 'access' ) ) {
            $access = new access( $this->input_obj->access_id );
            $this->input_data[ 'access' ][ 'visbile' ] = $access->visible;
            $this->input_data[ 'access' ][ 'editable' ] = $access->editable;
            $this->input_data[ 'access' ][ 'addable' ] = $access->addable;
        }

        $this->input_data[ 'unique_id' ] = $this->random_string( 12 );
        if ( class_exists( 'extra' ) ) {
            if ( $this->input_obj->extra > 0 ) {
                //dbg($this->input_data[ 'attrs' ]['name']); 
                $this->input_data[ 'attrs' ][ 'name' ] = $this->input_data[ 'attrs' ][ 'name' ] . '[0]';
                $this->input_data[ 'unique_id' ] = $this->input_data[ 'unique_id' ] . '≪0≫';
            }
            $this->input_data['extra'][ 'max' ] = $this->input_obj->extra;
			$extra = new extra(  $this->input_data['extra'][ 'max' ], $this->input_data[ 'unique_id' ] );
			$this->input_data[ 'extra']['add_controller' ] = $extra->extra_add_controller;
			$this->input_data[ 'extra']['remove_controller' ] = $extra->extra_remove_controller;
			$this->input_data[ 'extra']['controller_position' ] = EXTRA_CONTROLLER_POSITION;        
		}
		$this->input_data['tag']['tag_id'] = $this->input_obj->tag_id;
        $tags = $this->render_tag( $this->input_data['tag']['tag_id'],$this->input_data[ 'attrs' ] );
		$this->input_data['tag']['before'] = $tags['before'];
		$this->input_data['tag']['after'] = $tags['after'];

    }

	function render($input_data = NULL) {
		return $this->render_input($input_data);
	}
}