<?php


function sst_create_cols($obj_standard){
	//global $obj_standard;
	if($obj_standard->cols){
		$cols = ' cols="'.$obj_standard->cols.'" ';
	}
	return $cols;
}




