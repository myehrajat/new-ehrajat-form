<?php
class field {
    protected $common;
    var $field_obj;
	var $tag_obj;
    var $inputs_data;
    var $inputs;
    var $field;
	var $user_access_obj;
	var $show_or_hide;
	var $enable_or_disable;
	function __construct( $field_id ) {
        $this->common = new common();
		$this->get_field_object($field_id);
		$this->restrict_access();
		$this->create_inputs();
    }
	function get_field_object($field_id){
        $field_id = $this->common->get_ids( $field_id, true );
		if ( !empty( $field_id ) ) {
            $this->field_obj = $this->common->get_by_id( $field_id, $GLOBALS[ 'sst_tables' ][ 'field' ] );
        } else {
            $this->error_log( 'field id is empty or is now positive int.' );
            return NULL;
        }
	}
    function create_inputs() {
            if ( !empty( $this->field_obj ) ) {
                $input_ids = $this->common->get_ids( $this->field_obj->input_ids);
                if ( !empty( $input_ids ) ) {
                    foreach ( $input_ids as $input_id ) {
						$input_obj = new input( $input_id );
						if($this->enable_or_disable == 'disable'){
							$input_obj->input_data['attrs']['disabled'] = 'disabled';
						}
                        $this->inputs_data[] = $input_obj;
                        $this->inputs[] = $input_obj->render();
                    }
                } else {
                    $this->error_log( 'no input ids after processing input ids of your field.' );
                    return NULL;
                }
            } else {
                $this->error_log( 'field id is empty or after processing is empty.' );
                return NULL;
            }

    }

    function render() {
       $tag_id =  $this->common->get_ids( $this->field_obj->tag_id,true );
		if(!empty($tag_id)){
            $this->tag_obj = $this->common->get_by_id( $tag_id , $GLOBALS[ 'sst_tables' ][ 'tags' ] );
			if(!empty( $this->tag_obj )){
				if($this->show_or_hide == 'show'){

					$this->field = $this->tag_obj->tag_before.implode('',$this->inputs).$this->tag_obj->tag_after;
					return $this->field;
				}
			}else{
            $this->error_log( 'tag id provided for field can retireve object.' );
            return NULL;
			}
		}else{
            return NULL;
		}
    }
	function restrict_access(){
       $user_access_id =  $this->common->get_ids( $this->field_obj->user_access_id,true );
		if(!empty($user_access_id)){
            $this->user_access_obj = $this->common->get_by_id( $user_access_id , $GLOBALS[ 'sst_tables' ][ 'user_access' ] );
			if(!empty($this->user_access_obj)){
				$default_show_or_hide = strtolower($this->user_access_obj->default_show_or_hide);
				$except_show_or_hide =  $this->common->get_ids( $this->user_access_obj->except_show_or_hide );
				if($default_show_or_hide!='show' and $default_show_or_hide!='hide'){
					//dbg('gggggggggggggg');
					$default_show_or_hide = DEFAULT_SHOW_OR_HIDE;
				}
				//dbg($default_show_or_hide);
				//dbg($except_show_or_hide);
				//dbg($this->common->user_id);
				switch($default_show_or_hide){
					case 'show':
						if(in_array($this->common->user_id,$except_show_or_hide)){
							$this->show_or_hide = 'hide';
						}else{
							$this->show_or_hide = 'show';
						}
						break;
					case 'hide':
						if(in_array($this->common->user_id,$except_show_or_hide)){
							$this->show_or_hide = 'show';
						}else{
							$this->show_or_hide = 'hide';
						}
						break;
					default:
						$this->error_log( 'default_show_or_hide is incorect even DEFAULT_SHOW_OR_HIDE in config is incorect.' );
						$this->show_or_hide = 'hide';
						break;
				}
				$default_enable_or_disable = strtolower($this->user_access_obj->default_enable_or_disable);
				$except_enable_or_disable =  $this->common->get_ids( $this->user_access_obj->except_enable_or_disable);
				if($default_enable_or_disable!='enable' and $default_enable_or_disable!='disable'){
					$default_show_or_hide = DEFAULT_ENABLE_OR_DISABLE;
				}
				switch($default_enable_or_disable){
					case 'enable':
						if(in_array($this->common->user_id,$except_enable_or_disable)){
							$this->enable_or_disable = 'disable';
						}else{
							$this->enable_or_disable = 'enable';
						}
						break;
					case 'disable':
						if(in_array($this->common->user_id,$except_enable_or_disable)){
							$this->enable_or_disable = 'enable';
						}else{
							$this->enable_or_disable = 'disable';
						}
						break;
					default:
						$this->error_log( 'default_enable_or_disable is incorect even DEFAULT_ENABLE_OR_DISABLE in config is incorect.' );
						$this->enable_or_disable = 'hide';
						break;
				}
			}else{
				$this->error_log( 'user_access_id cant fitnd its obj.' );
				return NULL;
			}
		}else{
            $this->error_log( 'user_access_id after proceesing return enpty id.' );
            return NULL;
		}
		
	}
}
