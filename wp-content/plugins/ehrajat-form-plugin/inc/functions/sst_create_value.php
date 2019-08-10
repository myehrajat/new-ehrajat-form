<?php
/*
modified:1396-10-12



ALTER TABLE `wp_sst_standard`
ADD COLUMN `value_type`  varchar(255) NULL AFTER `slug`;
*/
function sst_create_value($obj_standard,$obj_input,$vals=NULL){

	global $mode,$form_table,$type_table,$user;
	//dbg($servals);
	//dbg($vals);
	if($servals){
		$vals = $servals;
	}	//dbg($vals['eval_result']['before_data_action'][$vals['c']]);
	//dbg($vals);
	if($mode=='add'){
		$value = ' value="'.$obj_standard->value.'" ';
		switch ($obj_standard->value_type) {
			case "variable"://for loop value set %%loop%% to get loop value becareful loop start 0 and set $vals['%%loop%%'] for loop number
				//dbg($vals['eval_result']['before_data_action'][$vals['%%loop%%']]->id);
				//dbg($vals['%%loop%%']);
				$value = ' value="'.sst_eval_data_action_value_variable($obj_standard->value,$vals,$user).'" ';
			break;			
			case "simple_variable":
				$value = ' value="'.sst_eval_data_action_value_simple_variable($obj_standard->value,$vals,$user).'" ';
			break;
			case "code":
				$value = ' value="'.sst_eval_data_action_value_code($data_action_colval_value,$vals,$user).'" ';
			break;
			case "none":
			case "simple":
			case "":
			case NULL:
			case false:
			default:
				$value = ' value="'.$obj_standard->value.'" ';
			break;
		}

	}else{//edit/view
		//when we are editing and need to eval the code of addon type and need to be serialize 
		$slashed_vals = unserialize($vals);
		
		$vals = sst_stripslashes_vals($slashed_vals);
		//dbg($vals);
		$obj_type = sst_get_by_id($obj_input->type_id,$type_table);
		//if($obj_type->type=='select'){//for simple select 
		//dbg($vals);
		//}
		//dbg($obj_type->type);
		if($obj_type->type=='select'){//for simple select 
			$value = ' value="'.htmlentities($obj_standard->value).'" ';
		}else{
			$value = ' value="'.htmlentities($vals[$obj_input->name]).'" ';
		}
		
		if($obj_type->type=='select'){
			//dbg($obj_input->name);
			if($vals[$obj_input->name]==$obj_standard->value){
				$value .= ' selected ';
			}
		}
	}
	return $value;
}
