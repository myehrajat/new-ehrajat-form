<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='text';
$sst['type']='text';
$sst['function']='sst_text';
$sst['epithet']='Text Field';
$sst['description']='This is simple text input type as a HTML code!';
$sst['slug']='text_field';
$sst['owner']='Ehrajat';
$sst['id']=13;
function sst_text($input_id,$vals=NULL){
	$common = new common; 	
	$obj_input = $common->get_by_id( $input_id, $GLOBALS['sst_tables']['input'] );
	$global_attr = sst_create_attr_html_global($obj_input->attr_html_global_id);
	
	dbg($global_attr);
	
	/*
	$obj_input = sst_get_by_id($input_id,$GLOBALS['sst_tables']['input_type']);
	//GLOBAL create label="qwerty" title="qwerty"  style="qwerty" class="qwerty"
	$attributes['appearance'] = sst_create_appearances($obj_input->appearance_ids);//it doesn't contain id
	//GLOBAL create tabindex="qwerty" accesskey="qwerty"
	$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	//GLOBAL create onclick="qwerty" onfocus="qwerty" and so on
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	//GLOBAL create lang="qwerty" dir="qwerty"
	$attributes['language'] = sst_create_language($obj_input->language_id);
	//GLOBAL create id="qwerty asdas"
	$attributes['id'] = sst_create_id($obj_input->the_id);
	
	$obj_standard = sst_get_by_id($obj_input->standard_id,$GLOBALS['sst_tables']['standard']);
	
	dbg($obj_standard,true);
	if($obj_standard){
			$attributes['name'] = sst_create_name($obj_input);

		//dbg($obj_standard);
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
*/}
