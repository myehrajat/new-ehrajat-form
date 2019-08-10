<?php
/*
1396-10-20





*/
function sst_decide_form_step_level($vals,$force,$mode,$condition_table,$method){
	//dbg($vals);
	if($force){
		return 'first';
	}elseif(!isset($vals['step'])){
		return 'first';
	}elseif($_REQUEST['record_id'] && $_REQUEST['mode']=='edit'){
		//dbg($vals);
		if(!isset($_REQUEST['step'])){
			return 'edit';
		}elseif(isset($vals['step'])){
			if(empty(sst_check_conditions())){
				return 'end';
			}else{
				return 'middle';
			}
		}
	}elseif($_REQUEST['record_id'] && $_REQUEST['mode']=='view'){
		return 'view';
	}elseif(isset($vals['step'])){
		if(empty(sst_check_conditions())){
			return 'end';
		}else{
			return 'middle';
		}
	}

}
	