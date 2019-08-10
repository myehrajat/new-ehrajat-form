<?php
/**************************************************
 *version 1.0.0
 *these for styling and adding title/style/class these are styling global attribute ones which will not included in standard
 **************************************************/
/*all events
Source:https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes#List_of_global_attributes

onabort, onautocomplete, onautocompleteerror, onblur, oncancel, oncanplay, oncanplaythrough, onchange, onclick, onclose, oncontextmenu, oncuechange, ondblclick, ondrag, ondragend, ondragenter, ondragexit, ondragleave, ondragover, ondragstart, ondrop, ondurationchange, onemptied, onended, onerror, onfocus, oninput, oninvalid, onkeydown, onkeypress, onkeyup, onload, onloadeddata, onloadedmetadata, onloadstart, onmousedown, onmouseenter, onmouseleave, onmousemove, onmouseout, onmouseover, onmouseup, onmousewheel, onpause, onplay, onplaying, onprogress, onratechange, onreset, onresize, onscroll, onseeked, onseeking, onselect, onshow, onsort, onstalled, onsubmit, onsuspend, ontimeupdate, ontoggle, onvolumechange, onwaiting
*/
function sst_create_events( $event_ids ) {
	$event_ids = sst_get_ids( $event_ids );
	if ( !empty( $event_ids ) ) {
		$allowed_events = array('onabort', 'onautocomplete', 'onautocompleteerror', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncuechange', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragexit', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onpause', 'onplay', 'onplaying', 'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll', 'onseeked', 'onseeking', 'onselect', 'onshow', 'onsort', 'onstalled', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onvolumechange', 'onwaiting');
		foreach ( $event_ids as $event_id ) {
			$obj_event = sst_get_by_id( $event_id, $GLOBALS[ 'sst_tables' ][ 'event' ] );
			if( !empty($obj_event->jsfunction) or !empty($obj_event->event)){
				$events_group[strtolower($obj_event->event)][] = $obj_event->jsfunction;
			}
		}
		$events = array();
		foreach($events_group as $event=>$jsfunctions){
			if(in_array($event,$allowed_events)){
				$events[] = sst_create_attrs($event, $jsfunctions, false);
			}else{
				sst_error_log( 'It is not valid event : "'.'$event"' );
			}
		}
		return implode('',$events);
	} else {
		return false;
	}
}