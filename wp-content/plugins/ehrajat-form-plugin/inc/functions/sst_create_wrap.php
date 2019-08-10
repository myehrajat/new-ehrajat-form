<?php
function sst_create_wrap($obj_standard){
	//global $obj_standard;
	if($obj_standard->wrap){
		$wrap = ' wrap="'.$obj_standard->wrap.'" ';
	}
	return $wrap;
}





