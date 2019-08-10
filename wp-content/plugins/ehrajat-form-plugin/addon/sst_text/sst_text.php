<?php
/*










*/
$sst['type']='text';
$sst['function']='sst_text';
$sst['epithet']='Text Field';
$sst['description']='';
$sst['slug']='text_field';
$sst['owner']='Ehrajat';
$sst['id']=13;

function sst_text($input_id,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
	//echo 'sst_text<br />';
	if(DEBUG){
		echo 'sst_text<br />';
	}
	//dbg($vals);
	$obj_input = sst_get_by_id($input_id,$input_table);
	//dbg($obj_input);
	//dbg($obj_input->the_id);
	//dbg($obj_input->appearance_id);
	//dbg($obj_input->keyboard_id);
	//dbg($obj_input->event_ids);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input);
	
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		//dbg($obj_standard);
		$attributes['name'] = sst_create_name($obj_input);
		//dbg($vals);
		$attributes['value'] = sst_create_value($obj_standard,$obj_input,$vals);
		$attributes['maxlength'] = sst_create_maxlength($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['readonly'] = sst_create_readonly($obj_standard);
		$attributes['datafld'] = sst_create_datafld($obj_standard);
		$attributes['datascr'] = sst_create_datascr($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$text_input = '<input type="text" '.implode('',$attributes).'>';
		
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_text<br />';
	}
	return $text_input;
}
