<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='color';
$sst['type']='simple-color';
$sst['function']='sst_color';
$sst['epithet']='Color Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='color_field';
$sst['owner']='Ehrajat';
$sst['id']=18;
function sst_color($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;
}
