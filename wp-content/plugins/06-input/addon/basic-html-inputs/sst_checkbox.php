<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='checkbox';
$sst['type']='simple-checkbox';
$sst['function']='sst_checkbox';
$sst['epithet']='Checkbox Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='checkbox_field';
$sst['owner']='Ehrajat';
$sst['id']=19;
function sst_checkbox($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;
}
