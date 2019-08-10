<?php



function sst_create_readonly($obj_standard){
	//global $obj_standard;
	if($obj_standard->readonly){
		$readonly = ' readonly="'.$obj_standard->readonly.'" ';
	}
	return $readonly;
}
