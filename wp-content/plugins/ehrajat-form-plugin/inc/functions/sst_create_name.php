<?php
function sst_create_name($obj_input){
	//global $obj_standard;
	//dbg($obj_standard);
	$name = trim($name);
	$name = ' name="';
	$name .= $obj_input->name;
	$name .= '" ';
	return $name;
}
