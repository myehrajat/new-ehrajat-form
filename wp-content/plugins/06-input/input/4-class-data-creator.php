<?php
class data_creator extends render{
	function __construct(){
				parent::__construct();

	}
	function create_own_data_data($data,$obj){
		$data['own_data']['epithet']=$obj->epithet;
		$data['own_data']['slug']=$obj->slug;
		$data['own_data']['description']=$obj->description;
		$data['own_data']['owner']=$obj->owner;
		$data['own_data']['created']=$obj->created;
		$data['own_data']['modified']=$obj->modified;
		return $data;
	}
    function create_access_data($data,$obj) {
		
        if ( class_exists( 'access' ) ) {
            $access = new access( $obj->access_id );
			
            $data[ 'access' ][ 'visible' ] = $access->visible;
            $data[ 'access' ][ 'editable' ] = $access->editable;
            $data[ 'access' ][ 'addable' ] = $access->addable;
            $data[ 'access' ][ 'deletable' ] = $access->deletable;
        }

		return $data;
    }
	
	 function create_unique_id_data($data) {
        $data[ 'unique_id' ] = $this->random_string( 12 );
		 return $data;
    }
	
	function create_show_order_data($data,$obj,$type){
		$available_options = array('input','block','fieldset');
		switch($type){
			case'input':
				$default_first = INPUT_SHOW_FIRST;
				$default_second = INPUT_SHOW_SECOND;
				$default_third = INPUT_SHOW_THIRD;
				break;
			case'block':
				$default_first = BLOCK_SHOW_FIRST;
				$default_second = BLOCK_SHOW_SECOND;
				$default_third = BLOCK_SHOW_THIRD;
				break;
			case'fieldset':
				$default_first = FIELDSET_SHOW_FIRST;
				$default_second = FIELDSET_SHOW_SECOND;
				$default_third = FIELDSET_SHOW_THIRD;
				break;
			default:
				$default_first = GENERAL_SHOW_FIRST;
				$default_second = GENERAL_SHOW_SECOND;
				$default_third = GENERAL_SHOW_THIRD;
				break;
		}
		$show_first = strtolower($obj->show_first);
		if(in_array($show_first,$available_options)==true){
			$data['order'][ 'show_first' ]  = $show_first;
		}elseif(in_array($default_first,$available_options)==true){
			$data['order'][ 'show_first' ]  = $default_first;
		}else{
			$data['order'][ 'show_first' ]  = 'input';
		}
		unset($available_options[$block[ 'show_first' ]]);
		
		$show_second = strtolower($obj->show_second);
		if(in_array($show_second,$available_options)==true){
			$data['order'][ 'show_second' ]  = $show_second;
		}elseif(in_array($default_second,$available_options)==true){
			$data['order'][ 'show_second' ]  = $default_second;
		}else{
			$data['order'][ 'show_second' ]  = 'block';
		}
		unset($available_options[$block[ 'show_second' ]]);

		$show_third = strtolower($obj->show_third);
		if(in_array($show_third,$available_options)==true){
			$data['order'][ 'show_third' ]  = $show_third;
		}elseif(in_array($default_third,$available_options)==true){
			$data['order'][ 'show_third' ]  = $default_third;
		}else{
			$data['order'][ 'show_third' ]  = 'fieldset';
		}
		return $data;
	}
    function create_tag_data($data,$obj) {
        $data[ 'tag' ][ 'tag_id' ] = $this->get_ids( $obj->tag_id, true );
        $tags = $this->render_tag( $data[ 'tag' ][ 'tag_id' ], $data );
        $data[ 'tag' ][ 'before' ] = $tags[ 'before' ];
        $data[ 'tag' ][ 'after' ] = $tags[ 'after' ];
		return $data;
    }
	/*
	get block or field set data and generate extra data based on it
	it will generate array and html for add and remove and position based on EXTRA_CONTROLLER_POSITION
	*/
	function create_extra_data( $data ) {
        if ( $data[ 'extra' ][ 'max' ] > 0 and $this->mode=='add') {
            $extra = new extra( $data[ 'extra' ][ 'max' ], $data[ 'unique_id' ] );
			
            $data[ 'extra' ][ 'add_controller_data' ] = $extra->extra_add_controller_arr;
            $data[ 'extra' ][ 'remove_controller_data' ] = $extra->extra_remove_controller_arr;
			
            $data[ 'extra' ][ 'add_controller' ] = $extra->extra_add_controller;
            $data[ 'extra' ][ 'remove_controller' ] = $extra->extra_remove_controller;
			
            $data[ 'extra' ][ 'controller_position' ] = EXTRA_CONTROLLER_POSITION;
            if ( strtolower(EXTRA_CONTROLLER_POSITION) !== 'after'
                or strtolower(EXTRA_CONTROLLER_POSITION) !== 'before' ) {
                $data[ 'extra' ][ 'controller_position' ] = 'after';
            }
        }
		return $data;
    }

}