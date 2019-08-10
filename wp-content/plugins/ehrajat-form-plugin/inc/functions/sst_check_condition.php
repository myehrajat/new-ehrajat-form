<?php
/**
modified:1396-10-20


*/
function sst_check_condition($obj_condition,$position){
	global $vals;
	if($position=='first'){
			$ecode .= 'if';
	}elseif($position=='middle'){
			$ecode .= 'elseif';
	}elseif($position=='last'){
			$ecode .= 'else';
	}
	$ecode .= '(';
	if($obj_condition->condition){
		$ecode .= $obj_condition->condition;
	}else{
		$ecode .= '1==1';
	}
	$ecode .= '){';
	if($obj_condition->goto){
		$ecode .= 'header(\'Location: '.$obj_condition->goto.'\');';
	}else{
		$ecode .= 'return sst_create_form('.$obj_condition->next_id.');';
	}
		$ecode .= '}';
		//dbg($ecode);
	return $ecode;
}

