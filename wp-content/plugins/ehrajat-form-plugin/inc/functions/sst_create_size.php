<?php
function sst_create_size($obj_standard){
	//global $obj_standard;
	if($obj_standard->size){
		$size = ' size="'.$obj_standard->size.'" ';
	}
	return $size;
}
