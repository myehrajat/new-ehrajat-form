<?php
/*
htmls5 require added 









*/
$sst['type']='select';
$sst['function']='sst_select';
$sst['epithet']='Select Field';
$sst['description']='';
$sst['slug']='select_field';
$sst['owner']='Ehrajat';
$sst['id']=11;

function sst_select($input_id,$vals=NULL){
	global $input_table,$standard_table;
	//dbg($vals);
	if(DEBUG){
		echo 'sst_select<br />';
	}
	include_once('select/select.php');

	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);
	$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($event_ids);
	$attributes['id'] = sst_create_id($obj_input);
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['multiple'] = sst_create_multiple($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$select_input = '<select '.implode('',$attributes).' >';
		//dbg($obj_input);
		//dbg($vals);
		$select_input .= sst_create_options($obj_standard->option_ids,$obj_input,false,$vals);
		$select_input .= '</select>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID $input_id='.$input_id ;
	}
	if(DEBUG){
		echo 'End sst_select<br />';
	}
	return $select_input;	
}
