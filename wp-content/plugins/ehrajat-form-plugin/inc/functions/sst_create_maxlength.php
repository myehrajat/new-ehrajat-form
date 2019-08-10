<?php
function sst_create_maxlength($obj_standard){
	//global $obj_standard;
	if($obj_standard->maxlength){
		$maxlength = ' maxlength="'.$obj_standard->maxlength.'" ';
	}
	return $maxlength;
}
