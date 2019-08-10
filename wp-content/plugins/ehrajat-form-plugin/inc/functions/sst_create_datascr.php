<?php
function sst_create_datascr($obj_standard){
	//global $obj_standard;
	if($obj_standard->datascr){
		$datascr = ' datascr="'.$obj_standard->datascr.'" ';
	}
	return $datascr;
}




