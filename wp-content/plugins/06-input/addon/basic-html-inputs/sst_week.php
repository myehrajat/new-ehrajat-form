<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='week';
$sst['type']='simple-week';
$sst['function']='sst_week';
$sst['epithet']='Week Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='week_field';
$sst['owner']='Ehrajat';
$sst['id']=16;
function sst_week($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
