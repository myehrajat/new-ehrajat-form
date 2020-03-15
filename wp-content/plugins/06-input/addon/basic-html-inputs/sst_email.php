<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='email';
$sst['type']='simple-email';
$sst['function']='sst_email';
$sst['epithet']='Email Field';
$sst['description']='This is simple email input type as a HTML code!';
$sst['slug']='email_field';
$sst['owner']='Ehrajat';
$sst['id']=11;
function sst_email($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;
}
