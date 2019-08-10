<?php
function sst_create_step($obj_standard){
	//global $obj_standard;
	if($obj_standard->step){
		$step = ' step="'.$obj_standard->step.'" ';
	}
	return $step;
}
