<?php
/*





*/
$sst['type']='checkbox';
$sst['function']='sst_checkbox';
$sst['epithet']='Check Box Field';
$sst['description']='';
$sst['slug']='check_box_field';
$sst['owner']='Ehrajat';
$sst['id']=2;
function sst_checkbox($input_id,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;

	if(DEBUG){
		echo 'sst_checkbox<br />';
	}
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input);

	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['value'] = sst_create_value($obj_standard,$obj_input,$vals);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$attributes['checked'] = sst_create_checked($obj_standard);
		$content = sst_create_content($obj_standard);

		$checkbox_input = '<input type="checkbox" '.implode('',$attributes).' >'.$content;
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_checkbox<br />';
	}
	return $checkbox_input;	
}
