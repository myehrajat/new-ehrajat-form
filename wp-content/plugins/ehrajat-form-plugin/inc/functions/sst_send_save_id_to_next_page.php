<?php
/*
check the vals if there is save id it add save_id to end of url by get to make it accessible outside plugin by key
if there is save_id dont add again
it work for first and other steps 


*/
function sst_send_save_id_to_next_page($action,$vals=NULL,$save_id=NULL){//used only for post method
	if(!isset($_GET['save_id'])){
		$has_action_get = count(explode('?',$action));
		if($has_action_get<=1){
			$has_action_get=false;
		}else{
			$has_action_get=true;
		}
		if($vals['save_id']){
			if(!empty($action)){
				if($has_action_get){
					$action = $action.'&save_id='.$vals['save_id'];
				}else{
					$action = $action.'?save_id='.$vals['save_id'];
				}
			}
		}elseif($save_id){
			if(!empty($action)){
				if($has_action_get){
					$action = $action.'&save_id='.$save_id;
				}else{
					$action = $action.'?save_id='.$save_id;
				}
			}
		}
	}
	return $action;
}
