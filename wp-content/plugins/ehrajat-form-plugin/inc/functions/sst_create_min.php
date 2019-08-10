<?php
function sst_create_min($obj_standard){
	//global $obj_standard;
	if($obj_standard->min){
		$min = ' min="'.$obj_standard->min.'" ';
	}
	return $min;
}
