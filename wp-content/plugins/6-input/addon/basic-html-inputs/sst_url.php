<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='url';
$sst['type']='simple-url';
$sst['function']='sst_url';
$sst['epithet']='Url Field';
$sst['description']='This is simple url input type as a HTML code!';
$sst['slug']='url_field';
$sst['owner']='Ehrajat';
$sst['id']=4;
function sst_url($input_id,$vals=NULL){
	$attr = new input_attr($input_id);
}