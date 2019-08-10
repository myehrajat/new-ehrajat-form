<?php

function sst_create_checked($obj_standard){
	//global $obj_standard;
	if($obj_standard->checked){
		$checked = ' checked ';
	}
	return $checked;
}




