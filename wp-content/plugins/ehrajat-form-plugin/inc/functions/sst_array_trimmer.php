<?php

function sst_array_trimmer($values){
	foreach($values as $key=>$value){
		if($trim){
			$values[$key] = trim($value);
		}
	}
	return $values;
}