<?php


function sst_create_selected($obj_standard){
	//global $obj_standard;
	if($obj_standard->selected){
		$selected = ' selected ';
	}
	return $selected;
}



