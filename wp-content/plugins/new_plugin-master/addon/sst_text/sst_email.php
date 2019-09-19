<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='email';
$sst['type']='email';
$sst['function']='sst_email';
$sst['epithet']='Email Field';
$sst['description']='This is simple email input type as a HTML code!';
$sst['slug']='email_field';
$sst['owner']='Ehrajat';
$sst['id']=11;
function sst_email($input_id,$vals=NULL){
	$attr = new input_attr($input_id);
}
