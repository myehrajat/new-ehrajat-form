<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='search';
$sst['type']='simple-search';
$sst['function']='sst_search';
$sst['epithet']='Search Field';
$sst['description']='This is simple search input type as a HTML code!';
$sst['slug']='search_field';
$sst['owner']='Ehrajat';
$sst['id']=2;
function sst_search($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	return $input_data;
}
