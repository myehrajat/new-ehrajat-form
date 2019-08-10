<?php
/*
created:1396-10-23

*/
function sst_show_to($show_to_ids,$vals){
	$show_to_ids = get_ids($show_to_ids,true);
	//dbg($vals['%%user_id%%']);
	//dbg($show_to_ids);
	if(in_array($vals['%%user_id%%'],$show_to_ids) OR empty($show_to_ids)){
		return true;//show it
	}else{
		return false;//refuse to show
	}
	   
}
function sst_hide_from($hide_from_ids,$vals){
	$hide_from_ids = get_ids($hide_from_ids,true);
	if(in_array($vals['%%user_id%%'],$hide_from_ids)){
		//dbg('true');
		return true;//hide it
	}else{
		//dbg('false');
		return false;//accept to show
	}
	   
}