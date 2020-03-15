<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='submit';
$sst['type']='simple-submit';
$sst['function']='sst_submit';
$sst['epithet']='Submit Field';
$sst['description']='This is simple submit input type as a HTML code!';
$sst['slug']='submit_field';
$sst['owner']='Ehrajat';
$sst['id']=5;
function sst_submit($input_data_json){
	$input_data = json_decode($input_data_json,true);
	return $input_data;

}
