<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='file';
$sst['type']='simple-file';
$sst['function']='sst_file';
$sst['epithet']='File Field';
$sst['description']='This is simple file input type as a HTML code!';
$sst['slug']='file_field';
$sst['owner']='Ehrajat';
$sst['id']=10;
function sst_file($input_data_json,$process_data_json=NULL){
	
	$input_data = data_decoder($input_data_json);
	return $input_data;
}
