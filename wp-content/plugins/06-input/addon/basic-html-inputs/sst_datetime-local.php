<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='datetime-local';
$sst['type']='simple-datetime-local';
$sst['function']='sst_datetime_local';
$sst['epithet']='Datetime-local Field';
$sst['description']='This is simple datetime-local input type as a HTML code!';
$sst['slug']='datetime-local_field';
$sst['owner']='Ehrajat';
$sst['id']=13;
function sst_datetime_local($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;
}
