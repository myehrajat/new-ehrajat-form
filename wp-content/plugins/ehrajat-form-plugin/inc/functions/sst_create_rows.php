<?php


function sst_create_rows($obj_standard){
	//global $obj_standard;
	if($obj_standard->rows){
		$rows = ' rows="'.$obj_standard->rows.'" ';
	}
	return $rows;
}



