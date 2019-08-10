<?php
function sst_delete_option($key){
	global $wpdb,$options_table;
	$query = 'DELETE FROM '.$wpdb->prefix.$options_table.' WHERE `key`=\''.$key.'\' LIMIT 1';
	$result = $wpdb->query($query);
	if($result){
		return $result;
	}else{
		echo 'SST#ERROR OPTION CAN NOT BE DELETED OR MAY THERE IS NOT AN OPTION WITH "'.$key.'" NAME';
		return false;
	}
}