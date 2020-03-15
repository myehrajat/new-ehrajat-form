<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='number';
$sst['type']='simple-number';
$sst['function']='sst_number';
$sst['epithet']='Number Field';
$sst['description']='This is simple number input type as a HTML code!';
$sst['slug']='number_field';
$sst['owner']='Ehrajat';
$sst['id']=8;
function sst_number($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
