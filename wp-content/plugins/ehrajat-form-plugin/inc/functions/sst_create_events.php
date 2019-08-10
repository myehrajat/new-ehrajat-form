<?php
/*
@param $event_ids string num and range number
@return event based on event table add to existing and or make new one

*/
function sst_create_events($event_ids,$custom_event=NULL){
	if(DEBUG){
		echo 'sst_create_events<br />';
	}
	global $event_table;
	//dbg($custom_event);
	//$custom_event_obj = (object) $custom_event;//cast as object
	$on_events=array();
	if($event_ids){
		$event_ids = get_ids($event_ids);
		//dbg($event_ids);
		foreach($event_ids as $event_id){
			$obj_event = sst_get_by_id($event_id,$event_table);
			//dbg($obj_event);
			$event = trim(strtolower($obj_event->event));
			//dbg($event);
			if($event && $obj_event->jsfunction){
				if(in_array($event,$on_events)==false){//before not exist such event
					$arr_events[$event] = ' '.$event.'="'.$obj_event->jsfunction.'" ';
					$on_events[]= $event;//this is only for checking
					
				}else{
					$arr_events[$event] = substr($arr_events[$event],0,-2).';'.$obj_event->jsfunction.'" ';
					//dbg(1);
				}
			}
			
		}
		//dbg(1);
	}
	if(!empty($custom_event)){
		//for custom event
		foreach($custom_event as $event=>$jsfunction){
			if($event && $jsfunction){
				if(in_array($event,$on_events)==false){//before not exist such event
					$arr_events[$event] = ' '.$event.'="'.$jsfunction.'" ';
					$on_events[]= $event;//this is only for checking
					
				}else{
					$arr_events[$event] = substr($arr_events[$event],0,-2).';'.$jsfunction.'" ';
					//dbg(1);
				}
			}
		}
	}
	
	//dbg($arr_events);
	if(!empty($arr_events)){
		$events = implode(' ',$arr_events);
	}
	if(DEBUG){
		echo 'End sst_create_events<br />';
	}
	//dbg($events);
	return $events;
}
