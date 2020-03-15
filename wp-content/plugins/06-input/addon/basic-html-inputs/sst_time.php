<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='time';
$sst['type']='simple-time';
$sst['function']='sst_time';
$sst['epithet']='Time Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='time_field';
$sst['owner']='Ehrajat';
$sst['id']=15;
function sst_time($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
