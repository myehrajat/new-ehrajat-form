<?php
//get a record
//$identifier is for debugging only and when you want to what has been returned use specific identifier
function sst_get_by_id($id,$table_name,$debug_identifier=false){
	global $wpdb;
	//dbg($wpdb);
			//dbg($debug_mode);
	if($id){
		//dbg($table_name);
		if($table_name){
			$sql="SELECT * 
			FROM " . $wpdb->prefix . $table_name.
			" WHERE id = ".$id.
			" LIMIT 1";
			if($debug_identifier!=null){
				dbg('<strong>'.$identifier.' start'.'</strong>');
				dbg($sql);

			}
			
			//$sql=$wpdb->prepare( $sql.sprintf,sprintf(''));
			$results = $wpdb->get_results($sql);
			$result=$results[0];
			if($debug_identifier!=null){
				dbg($result);
				dbg('<strong>'.$identifier.' end'.'</strong>');
			}
		}else{
			//echo 'ERROR# NO ID IS TABLE NAME TRANSFERED TO sst_get_by_id <br />';
		}
	}else{
			//echo 'ERROR# NO ID IS TRANSFERED TO sst_get_by_id() THE TABLE NAME IS: '.$table_name.'<br />';
	}
	return $result;
}
