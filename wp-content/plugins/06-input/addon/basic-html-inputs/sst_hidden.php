<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='hidden';
$sst['type']='simple-hidden';
$sst['function']='sst_hidden';
$sst['epithet']='Hidden Field';
$sst['description']='This is simple hidden input type as a HTML code!';
$sst['slug']='hidden_field';
$sst['owner']='Ehrajat';
$sst['id']=21;
function sst_hidden($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
