<?php
function sst_create_required($obj_input){
	//global $obj_standard;
	//dbg($obj_standard);
	if($obj_input->required){
		$required = ' required ';
	}
	return $required;
}
