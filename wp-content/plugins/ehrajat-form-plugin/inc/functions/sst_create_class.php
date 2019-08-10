<?php

/*
creation:1395-10-05
modified:1395-10-05

*/
function sst_create_class($obj_input){
	//global $obj_standard;
	//dbg($obj_standard);
	$class = explode(',',$obj_input->class);
	$class = implode(' ',$class);
	$class = trim($class);
	$class = ' class="';
	$class .= $class;
	$class .= '" ';
	return $class;
}
?>
