<?php


function sst_create_disabled($obj_standard){
	global $mode;
	if($mode=='view'){
		$disabled = ' disabled="disabled" ';
	}else{
		if($obj_standard->disabled){
			$disabled = ' disabled="'.$obj_standard->disabled.'" ';
		}
	}
	return $disabled;
}


