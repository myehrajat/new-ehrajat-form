<?php
/**************************************************
*version 1.0.0
*this function do everything about database all in one place
**************************************************/

function sst_do_on_activation_database(){
	/*you can change table names but never change keys of $tables*/
	require_once(DBPATH.'sst_create_tables.php');
	require_once(DBPATH.'sst_insert_languages.php');
}
/**************************************************
*version 1.0.0
*this function check the existence of cols and related values in a specific table
$arr = array key as column & array value as column value
**************************************************/
function check_is_in_table($arr,$table,$exclude_to_check_arr=NULL){
	global $wpdb;
	if($exclude_to_check_arr){
		foreach($exclude_to_check_arr as $exclude_to_check){
			unset($arr[$exclude_to_check]);
		}
	}
	//k reperesnt column and v represent value
	foreach($arr as $k=>$v){
		$arr_keys[]=$k;
	}
	$i=0;
	$sql.="SELECT * FROM `".$table."` WHERE ";
	foreach($arr as $one_var){
		$sql.= "`".$arr_keys[$i]."`=";
		$sql.= "'".$one_var."' AND ";
		$i++;
	}
	$sql.= "1=1 LIMIT 1";
	$result=$wpdb->get_results($sql);
	if(!empty($result)){
			return true;
	}else{
		if($wpdb->last_error){
			sst_error_log( 'check_is_in_table() MYSQL syntax error:' . $wpdb->print_error() );
			return false;
		}else{
			return false;
		}
	}
}