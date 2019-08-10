<?php
/*
modified:1396-10-10


*/

function sst_eval_data_action_value_code($data_action_colval_value,$vals,$user){
	//dbg(addslashes($obj_data_action_colval->value));
	//dbg($obj_data_action_colval->value);
	$value = eval($data_action_colval_value);
	//dbg($value);
	return $value;
}
