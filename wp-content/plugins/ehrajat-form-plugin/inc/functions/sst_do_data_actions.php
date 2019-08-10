<?php

function sst_do_data_actions($vals){
	//dbg($vals);
	global $data_action_table,$method;
	$data_action_ids = $_REQUEST['data_action_ids'];
	//dbg($data_action_ids);
	$data_action_ids = get_ids($data_action_ids);
	foreach($data_action_ids as $data_action_id){
		$obj_data_action = sst_get_by_id($data_action_id,$data_action_table);
		if($obj_data_action){
			//dbg($obj_data_action);
			$vals=sst_do_data_action($obj_data_action,$vals);
			//dbg($vals);
			$inserted_array=sst_save_insertion_to_check_partial($obj_data_action , $vals);
			// check that is there any data action before that not inserted? if yes prevent doing more
			if(sst_check_in_partial($inserted_array)){
				sst_delete_partial($inserted_array);
				//dbg($inserted_array);
				break;
			}
		}else{
			echo 'error :this data_action_id:'.$data_action_id.' cant found';
		}
	}
	//dbg($vals);
	return $vals;
}
function sst_save_insertion_to_check_partial($obj_data_action , $vals){
	  static $inserted = array();
	  static $i=0;
	  $inserted[$i]['insert_id']= $vals['inserts'][$obj_data_action->insert_reference];
	  $inserted[$i]['table']= $obj_data_action->table;
	  $i++;
	  //dbg($inserted);
	  return $inserted;
}

function sst_check_in_partial($array) {//key //value
	$count = count($array)-1;
   while($count>=0){
	   if($array[$count]['insert_id']==NULL){
           return true;
	   }
	   $count--;
	}
	return false;
}
function sst_delete_partial($inserted_array){
	global $wpdb;
	foreach($inserted_array as $inserted){
		if($inserted['insert_id']){
			$delete_sql= "DELETE FROM ". $wpdb->prefix.$inserted['table']. " WHERE `id`='".$inserted['insert_id']."';";
			$delete_result = $wpdb->query($delete_sql);
			if($delete_result){
				echo '<div  style="font-size:18px; color:#F00">اطلاعات مربوط به شماره آی دی '.$inserted['insert_id'].' که در جدول '.$inserted['table'].' ذخیره شده بود به دلیل ذخیره ناقص حذف گردید.</div>';
			}
		}
	}
	
}