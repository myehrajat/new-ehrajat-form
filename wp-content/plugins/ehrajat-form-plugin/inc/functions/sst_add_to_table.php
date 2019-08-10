<?php
function sst_add_to_table($table,$arr){
	global $wpdb;
	foreach($arr as $k=>$v){
		$arr_keys[]=$k;
	}
	$sql="INSERT  INTO ".$wpdb->prefix.$table."(`".implode('`,`',$arr_keys)."`) VALUES ('".implode("','",$arr)."')";
	$result=$wpdb->query($sql);
	//dbg($sql);
	if($result){
		$insert_id = $wpdb->insert_id;
		return $insert_id;
	}else{
		return false;	
	}
}
