<?php
/*





*/
$sst['type']='button';
$sst['function']='sst_button';
$sst['epithet']='Button Field';
$sst['description']='';
$sst['slug']='button_field';
$sst['owner']='Ehrajat';
$sst['id']=1;

function sst_button($input_id){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;

	if(DEBUG){
		echo 'sst_button<br />';
	}
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input,$extra);

	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input,$extra);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['value'] = sst_create_value($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$button_input = '<input type="button" '.implode('',$attributes).' >';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_button<br />';
	}

	return $button_input;	
}
