<?php

function sst_create_inputs($input_ids,$vals=NULL){
	//dbg($vals);
	global $mode,$input_table,$type_table,$record_id,$user;
	///dbg($vals);
	if(DEBUG){
		echo 'sst_create_inputs<br />';
	}
	$input_ids = get_ids($input_ids);
	foreach($input_ids as $input_id){
		//dbg($vals);
		$inputs .= sst_create_input($input_id,$vals);
	}
	if(DEBUG){
		echo 'End sst_create_inputs<br />';
	}
	return $inputs;
}
