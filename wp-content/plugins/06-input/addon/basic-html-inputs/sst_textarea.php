<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='textarea';
$sst['type']='simple-textarea';
$sst['function']='sst_textarea';
$sst['epithet']='Textarea Field';
$sst['description']='This is simple textarea input type as a HTML code!';
$sst['slug']='textarea_field';
$sst['owner']='Ehrajat';
$sst['id']=23;
function sst_textarea($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	return $input_data;
}
