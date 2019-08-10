<?php
/*
@return array in default_fields=> save_id hidden input step hidden input and submit bottun and  save_id =>save_id
*/
function sst_create_default_form_fields($obj_form,$vals=NULL){
//dbg($vals);
	$default_fields .= '<input name="data_action_ids" type="hidden" value="'.$obj_form->data_action_ids.'" />';
	//echo $obj_form->condition_ids;
	if($obj_form->condition_ids){
		$default_fields .= '<input name="condition_ids" type="hidden" value="'.$obj_form->condition_ids.'" />';
	}
	if(isset($vals['save_id'])){
		//***$vals = unserialize(stripslashes($vals));
		$save_id = $vals['save_id'];
		//dbg($save_id);
	}elseif(isset($_REQUEST['save_id'])){
		$save_id = $_REQUEST['save_id'];
	}else{
		$save_id = uniqid(user_ID,true);
	}
	//dbg($vals['save_id']);
	$default_fields .= '<input name="save_id" type="hidden" value="'.$save_id.'" />';
	if(!isset($_REQUEST['step'])){
		$step = 1;
	}else{
		$step++;
	}
	$default_fields .= '<input name="step" type="hidden" value="'.$step.'" />';
	$default_fields .= '<input name="submit" type="submit" value="ثبت و ذخیره" />';
	return array('default_fields'=>$default_fields,'save_id'=>$save_id);
}
