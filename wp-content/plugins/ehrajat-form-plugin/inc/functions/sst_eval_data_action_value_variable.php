<?php
/*
modified:1396-10-10

*/
function sst_eval_data_action_value_variable($data_action_colval_value,$vals,$user){
	//dbg($obj_data_action_colval);
	//dbg($vals);
	$value = eval("return ".$data_action_colval_value.";");
	//$value = eval($obj_data_action_colval->value.";");
	//dbg($value);
	return $value;
}


