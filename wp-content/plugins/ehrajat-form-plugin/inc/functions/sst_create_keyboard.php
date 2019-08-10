<?php
function sst_create_keyboard($keyboard_id){
	if(DEBUG){
		echo 'sst_create_keyboard<br />';
	}
	if($keyboard_id){
		$obj_keyboard = sst_get_by_id($keyboard_id,$keyboard_table);
		//dbg($obj_keyboard);
		
		if(DEBUG){
			echo 'End sst_create_keyboard<br />';
		}
	}
}
