<?php
function sst_do_eval($eval){
	if(DEBUG){
		echo 'RUN sst_do_eval';
	}
	//dbg($eval);
	//dbg(php_syntax_error($eval));
	$value = eval($eval);
	//dbg($value);
	return $value;

}

?>