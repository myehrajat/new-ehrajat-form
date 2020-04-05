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
function sst_email($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	return $input_data;
}
