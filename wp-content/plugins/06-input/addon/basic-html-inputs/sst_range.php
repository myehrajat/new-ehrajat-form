<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='range';
$sst['type']='simple-range';
$sst['function']='sst_range';
$sst['epithet']='Range Field';
$sst['description']='This is simple range input type as a HTML code!';
$sst['slug']='range_field';
$sst['owner']='Ehrajat';
$sst['id']=6;
function sst_range($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	return $input_data;
}
