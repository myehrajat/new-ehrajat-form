<?php
function sst_create_label($obj_standard){
	//global $obj_standard;
	if($obj_standard->label){
		$label = ' label="'.$obj_standard->label.'" ';
	}
	return $label;
}





