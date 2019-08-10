<?php
/*
added html5 required









*/
$sst['type']='select_db';
$sst['function']='sst_select_db';
$sst['epithet']='Select DB Field';
$sst['description']='';
$sst['slug']='select_db_field';
$sst['owner']='Ehrajat';
$sst['id']=12;

//TODO:creating group by WHERE clause
//		using 2 or mor cols for label or value or anything else
//		creating order
function sst_select_db($input_id,$vals=NULL){
	global $input_table,$standard_table;
	if(DEBUG){
		echo 'sst_select_db<br />';
	}
	//dbg($vals);
	require_once('select_db/select_db.php');

	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);
	$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($event_ids);
	$attributes['id'] = sst_create_id($obj_input);
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['multiple'] = sst_create_multiple($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$select_input = '<select '.implode('',$attributes).' >';
		//dbg($obj_standard);
		$select_input .= '<option value="">------</option>';
		$select_input .= sst_create_options_db($obj_standard->standard_db_id,false,false,NULL,NULL,true,$obj_input,$vals);
		$select_input .= '</select>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID $input_id='.$input_id ;
	}
	if(DEBUG){
		echo 'End sst_select_db<br />';
	}
	return $select_input;	
}
