<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='tel';
$sst['type']='simple-tel';
$sst['function']='sst_tel';
$sst['epithet']='Tel Field';
$sst['description']='This is simple tel input type as a HTML code!';
$sst['slug']='tel_field';
$sst['owner']='Ehrajat';
$sst['id']=3;
function sst_tel($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
