<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='radio';
$sst['type']='simple-radio';
$sst['function']='sst_radio';
$sst['epithet']='Radio Field';
$sst['description']='This is simple dat input type as a HTML code!';
$sst['slug']='radio_field';
$sst['owner']='Ehrajat';
$sst['id']=20;
function sst_radio($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
