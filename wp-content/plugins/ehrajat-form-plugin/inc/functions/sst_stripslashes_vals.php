<?php
function sst_stripslashes_vals($slashed_vals){
	//dbg($slashed_vals);
	if(is_array($slashed_vals)){
	foreach($slashed_vals as $key=>$value){//its string
		if(!is_array($value) and !is_object($value)){//its string
			$vals[$key]=stripslashes($value);
		}elseif(is_array($value)){
			$vals[$key] = sst_stripslashes_vals($value);
		}elseif(is_object($value)){
			$vals[$key]=$value;
		}else{
			echo 'SST#ERROR: TEMPORARY DATA SAVED IN DATABASE IS : '.gettype($value).' and this type is not supported...';
		}
	}
	}else{
		//echo 'SST#ERROR: TEMPORARY DATA SAVED IN DATABASE IS : '.gettype($value).' and this type is not supported...';

	}
	return $vals;
}


