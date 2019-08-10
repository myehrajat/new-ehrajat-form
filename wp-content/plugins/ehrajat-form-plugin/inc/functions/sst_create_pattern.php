<?php
function sst_create_pattern($obj_standard){
	//global $obj_standard;
	if($obj_standard->pattern){
		$pattern = ' pattern="'.trim($obj_standard->pattern).'" ';
	}
	return $pattern;
}
