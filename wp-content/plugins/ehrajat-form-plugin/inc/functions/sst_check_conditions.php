<?php
/**
modified:1396-10-20


*/
function sst_check_conditions(){
	global $condition_table,$method,$vals;
	if($vals['condition_ids']){
		$condition_ids = $_REQUEST['condition_ids'];
		$condition_ids = get_ids($condition_ids);
		//dbg($condition_ids);
		$i = count($condition_ids);
		$j=1;
		foreach($condition_ids as $condition_id){
			$obj_condition = sst_get_by_id($condition_id,$condition_table);
			if($obj_condition){
			//if(!empty($obj_condition->goto) or !empty($obj_condition->next_id)){
				if($j==1){
					$ecode .= sst_check_condition($obj_condition,'first');
				}elseif($i==$j AND empty($obj_condition->condition)){//&&$condition is NULL
				echo 'sssssssss';
					$ecode .= sst_check_condition($obj_condition,'last');
				}elseif(($j>1&&$j<$i) OR ($i==$j AND !empty($obj_condition->condition))){
					$ecode .= sst_check_condition($obj_condition,'middle');
				}
				$j++;
			//}
			}else{
				echo 'ERROR:: condition_ids => $condition_id : '.$condition_id ;
			}
		}
	return eval($ecode);
	}
	return false;
	//dbg($ecode);
}

