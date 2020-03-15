<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='select';
$sst['type']='simple-select';
$sst['function']='sst_select';
$sst['epithet']='Select Field';
$sst['description']='This is simple select input type as a HTML code!';
$sst['slug']='select_field';
$sst['owner']='Ehrajat';
$sst['id']=22;
function sst_select($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
