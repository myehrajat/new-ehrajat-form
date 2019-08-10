<?php
/**************************************************
*version 1.0.0
*this function is for including all php files in a single folder
**************************************************/

function sst_glob_includer($path){
	$files = glob($path.'*.php');
	foreach($files as $file){
		include_once($file);
	}
}
