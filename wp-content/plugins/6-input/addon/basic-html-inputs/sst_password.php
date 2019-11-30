<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='password';
$sst['type']='simple-password';
$sst['function']='sst_password';
$sst['epithet']='Password Field';
$sst['description']='This is simple password input type as a HTML code!';
$sst['slug']='password_field';
$sst['owner']='Ehrajat';
$sst['id']=7;
function sst_password($input_id,$vals=NULL){
	$attr = new input_attr($input_id);
}
