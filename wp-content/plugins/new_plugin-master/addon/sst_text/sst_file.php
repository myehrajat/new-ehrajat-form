<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='file';
$sst['type']='file';
$sst['function']='sst_file';
$sst['epithet']='File Field';
$sst['description']='This is simple file input type as a HTML code!';
$sst['slug']='file_field';
$sst['owner']='Ehrajat';
$sst['id']=10;
function sst_file($input_id,$vals=NULL){
	$attr = new input_attr($input_id);
}
