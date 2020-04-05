<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='datetime';
$sst['type']='simple-datetime';
$sst['function']='sst_datetime';
$sst['epithet']='Datetime Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='datetime_field';
$sst['owner']='Ehrajat';
$sst['id']=17;
function sst_datetime($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	return $input_data;
}
