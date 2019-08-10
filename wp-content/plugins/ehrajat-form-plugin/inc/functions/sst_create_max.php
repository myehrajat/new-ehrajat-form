<?php
function sst_create_max($obj_standard){
	//global $obj_standard;
	if($obj_standard->max){
		$max = ' max="'.$obj_standard->max.'" ';
	}
	return $max;
}
