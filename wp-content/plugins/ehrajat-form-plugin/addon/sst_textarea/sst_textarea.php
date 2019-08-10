<?php
/*










*/
$sst['type']='textarea';
$sst['function']='sst_textarea';
$sst['epithet']='Text Area Field';
$sst['description']='';
$sst['slug']='textarea_field';
$sst['owner']='Ehrajat';
$sst['id']=14;

function sst_textarea($input_id,$vals=NULL){
	if(DEBUG){
		echo 'sst_textarea<br />';
	}
	global $input_table,$standard_table;
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input);

	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input,$extra);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['readonly'] = sst_create_readonly($obj_standard);
		$attributes['cols'] = sst_create_cols($obj_standard);
		$attributes['rows'] = sst_create_rows($obj_standard);
		$attributes['wrap'] = sst_create_wrap($obj_standard);
		$attributes['label'] = sst_create_label($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$content = sst_create_content($obj_standard);
		if($vals<>NULL){
			$slashed_vals = unserialize($vals);
			$vals = sst_stripslashes_vals($slashed_vals);
			$content = htmlentities($vals[$obj_input->name]);
		}
		$textarea_input = '<textarea '.implode('',$attributes).' >'.$content.'</textarea>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_textarea<br />';
	}
	return $textarea_input;	
}
