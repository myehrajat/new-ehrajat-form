<?php
function sst_remove_nulled_values($values,$trim=true){
	if($trim){
		$values = sst_array_trimmer($values);
	}
	foreach($values as $key=>$value){
		if(empty($value) or $value==NULL){
			unset($values[$key]);	
		}
	}
	return $values;
}
