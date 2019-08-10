<?php
/*










*/
$sst['type']='radio';
$sst['function']='sst_radio';
$sst['epithet']='Radio Field';
$sst['description']='';
$sst['slug']='radio_field';
$sst['owner']='Ehrajat';
$sst['id']=10;

function sst_radio($input_id){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
	if(DEBUG){
		echo 'sst_radio<br />';
	}
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);
	$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	//$attributes['events'] = sst_create_events($event_ids);
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	//dbg($obj_input->standard_id);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['value'] = sst_create_value($obj_standard);
		$attributes['checked'] = sst_create_checked($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$radio_input = '<input type="radio" '.implode('',$attributes).' >';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_radio<br />';
	}
	return $radio_input;	
}
