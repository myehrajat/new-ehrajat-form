<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='month';
$sst['type']='simple-month';
$sst['function']='sst_month';
$sst['epithet']='Month Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='month_field';
$sst['owner']='Ehrajat';
$sst['id']=14;
function sst_month($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
