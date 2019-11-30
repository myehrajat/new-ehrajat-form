<?php
class access extends database {
	var $visible;
	var $editable;
	var $addable;
	function __construct($user_access_id){
		parent::__construct();
		$this->table_names();
		$this->restrict_access( $user_access_id);
	}
	 function table_names() {
		// dbg($this->full_prefix);
        $GLOBALS[ 'sst_tables' ][ 'user_access' ] = $this->full_prefix . 'user_access';
	 }

	function restrict_access( $user_access_id){
		
       $user_access_id =  $this->get_ids(  $user_access_id,true );
		if(!empty($user_access_id)){
            $this->user_access_obj = $this->get_by_id( $user_access_id , $GLOBALS[ 'sst_tables' ][ 'user_access' ] );
			//dbg($this->user_access_obj );
			if(!empty($this->user_access_obj)){
				$default_view = strtolower($this->user_access_obj->default_view);
				$except_view =  $this->get_ids( $this->user_access_obj->except_view );
				if($default_view!='enable' and $default_view!='disable'){
					$default_view = DEFAULT_VIEW;
				}else{
					$this->error_log( 'default_view must match enable or disable.' );
				}
				switch($default_view){
					case 'enable':
						if(in_array($this->user_id,$except_view)){
							$this->visible = 'no';
						}else{
							$this->visible = 'yes';
						}
						break;
					case 'hide':
						if(in_array($this->user_id,$except_view)){
							$this->visible = 'yes';
						}else{
							$this->visible = 'no';
						}
						break;
					default:
						$this->error_log( 'default_view is incorect even default_view in config is incorect. For scurity reason we set it to false' );
						$this->visible = 'no';
						break;
				}
				$default_edit = strtolower($this->user_access_obj->default_edit);
				$except_edit =  $this->get_ids( $this->user_access_obj->except_edit);
				if($default_edit!='enable' and $default_edit!='disable'){
					$default_view = DEFAULT_EDIT;
				}
				switch($default_edit){
					case 'enable':
						if(in_array($this->user_id,$except_edit)){
							$this->editable = 'no';
						}else{
							$this->editable = 'yes';
						}
						break;
					case 'disable':
						if(in_array($this->user_id,$except_edit)){
							$this->editable = 'yes';
						}else{
							$this->editable = 'no';
						}
						break;
					default:
						$this->error_log( 'default_edit is incorect even default_edit in config is incorect. For security reason set it to false' );
						$this->editable = 'no';
						break;
				}
				$default_add = strtolower($this->user_access_obj->default_add);
				$except_add =  $this->get_ids( $this->user_access_obj->except_add);
				if($default_add!='enable' and $default_add!='disable'){
					$default_view = DEFAULT_ADD;
				}
				switch($default_add){
					case 'enable':
						if(in_array($this->user_id,$except_add)){
							$this->addable  = 'no';
						}else{
							$this->addable  = 'yes';
						}
						break;
					case 'disable':
						if(in_array($this->user_id,$except_add)){
							$this->addable  = 'yes';
						}else{
							$this->addable  = 'no';
						}
						break;
					default:
						$this->error_log( 'default_add is incorect even default_edit in config is incorect. For security reason set it to false' );
						$this->addable = 'no';
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
