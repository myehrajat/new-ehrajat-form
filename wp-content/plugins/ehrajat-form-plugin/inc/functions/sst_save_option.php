<?php
//dbg($options_table);
function sst_save_option($key,$value){
	global $wpdb, $options_table;
		//i dont know why global some times not work for $options_table

	//dbg();
	$query = 'SELECT * FROM '.$wpdb->prefix.$options_table.' WHERE `key`=\''.addslashes($key).'\' LIMIT 1';
	$results = $wpdb->get_results($query);
	if(!$results){
		$query = 'INSERT INTO '.$wpdb->prefix.$options_table.' (`key`,`value`) VALUES (\''.addslashes($key).'\','.'\''.addslashes($value).'\')';
		//dbg($query);
		$result = $wpdb->query($query);
		if($result){
			$option_id = $wpdb->insert_id;
		}else{
			echo '<br>SST#ERROR Option is not inserted:<br>key:'.$key.'<br>value:'.$value.'<br>';
		}
		return $option_id;
	}else{
		echo 'SST#ERROR: THERE IS AN OPTION WITH THIS NAME SO YOU CANT USE '.$key.' FOR NEW OPTION'.'<br>';
		return false;
	}
}
?>