<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='image';
$sst['type']='simple-image';
$sst['function']='sst_image';
$sst['epithet']='Image Field';
$sst['description']='This is simple image input type as a HTML code!';
$sst['slug']='image_field';
$sst['owner']='Ehrajat';
$sst['id']=9;
function sst_image($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	return $input_data;
}
