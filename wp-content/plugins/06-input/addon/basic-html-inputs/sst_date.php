<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='date';
$sst['type']='simple-date';
$sst['function']='sst_date';
$sst['epithet']='Date Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='date_field';
$sst['owner']='Ehrajat';
$sst['id']=12;
function sst_date($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;
}
