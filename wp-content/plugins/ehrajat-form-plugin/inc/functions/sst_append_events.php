<?php
function sst_append_events($created_events,$on_event,$event){
	$pos=strpos($created_events,$on_event.'="');
	if ($pos !== false) {
		//$created_events = str_replace($on_event.'="',$on_event.'="'.$event,$created_events,1);
	}else{
		$created_events .= ' '.$on_event.'="'.$event.'"';
	}
	return $created_events;
}
