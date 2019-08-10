<?php


function sst_load_temporary_data($record_id=NULL){
	//dbg(11111111111111);
	global $wpdb,$temporary_data_table;
	if($record_id==NULL){
		$select_vals = "SELECT * " . "FROM " . $wpdb->prefix.$temporary_data_table . " WHERE `key` = '".$_REQUEST['save_id']."' LIMIT 1";

	}else{
		$select_vals = "SELECT * " . "FROM " . $wpdb->prefix.$temporary_data_table . " WHERE `key` = '".$record_id."' LIMIT 1";
		//dbg($select_vals);
	}
	//dbg($select_vals);
	$result_vals = $wpdb->get_results($select_vals);
	//dbg($result_vals);
	//if(empty($result_vals)){
		//echo 'ERROR 	sst_load_temporary_data CANT FETCH THE $vals';
	//}
	$slashed_vals = unserialize($result_vals[0]->value);
	$vals = sst_stripslashes_vals($slashed_vals);
	//dbg($vals);
	return $vals;

}
