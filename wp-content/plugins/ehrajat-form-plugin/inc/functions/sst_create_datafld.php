<?php


function sst_create_datafld($obj_standard){
	//global $obj_standard;
	if($obj_standard->datafld){
		$datafld = ' datafld="'.$obj_standard->datafld.'" ';
	}
	return $datafld;
}


