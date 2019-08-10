<?php
/*
modified:1396-10-10
*/

function sst_eval_data_action_value_simple_variable($data_action_colval_value,$vals,$user){
	$value = addslashes(eval('return $vals["'.$data_action_colval_value.'"];'));
	//dbg($value);
	return $value;
}
