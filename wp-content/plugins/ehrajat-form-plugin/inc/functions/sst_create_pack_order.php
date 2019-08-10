<?php

function sst_create_pack_order($command,$num=0){
	static $ordered_pack_ids;
	switch($command){
		case 'add':
			if($num && end($ordered_pack_ids)<>$num){
			
				//echo '<h1> add </h1>';
				$ordered_pack_ids[]=$num;
				//dbg($ordered_pack_ids);
			}
		break;
		case 'delete':
		
				array_pop($ordered_pack_ids);
				//echo '<h1> pop </h1>';
				//dbg($ordered_pack_ids);
		break;
		case 'null';
			$ordered_pack_ids = array();
				//dbg($ordered_pack_ids);
		break;
		default:
			//$ordered_pack_ids = array();
				//dbg($ordered_pack_ids);
		break;
	}
	return $ordered_pack_ids;
}
