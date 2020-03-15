<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='text';
$sst['type']='simple-text';
$sst['function']='sst_text';
$sst['epithet']='Text Field';
$sst['description']='This is simple text input type as a HTML code!';
$sst['slug']='text_field';
$sst['owner']='Ehrajat';
$sst['id']=1;
function sst_text($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;
}
