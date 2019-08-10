<?php

function sst_get_option($key){
	global $wpdb,$options_table;
	//i dont know why global some times not work for $options_table

	$query = 'SELECT * FROM '.$wpdb->prefix.$options_table.' WHERE `key`=\''.$key.'\' LIMIT 1';
	$results = $wpdb->get_results($query);
	//dbg($results);
//dbg($results);
	if($results){
		$value =$results[0]->value;
		//$value = $results[0]->value;
		return $value;
	}else{
		//echo 'SST#ERROR OPTION CAN NOT BE RETRIEVED THE OPTIONS NAME IS INCORRECT';
		return FALSE;
	}
	
}