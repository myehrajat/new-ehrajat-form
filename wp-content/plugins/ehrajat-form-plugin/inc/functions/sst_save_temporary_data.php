<?php

function sst_save_temporary_data(){

	global $wpdb,$temporary_data_table;
	//dbg($_REQUEST);
	if(isset($_REQUEST)){
		$check_back = sst_load_temporary_data($_REQUEST["save_id"]);
		//dbg('check_back' );
		//dbg($check_back );
		/*

Warning: ltrim() expects parameter 1 to be string, array given in D:\sys\htdocs\wp-includes\wp-db.php on line 2846

Warning: mysqli_query() expects parameter 2 to be string, array given in D:\sys\htdocs\wp-includes\wp-db.php on line 1942

Warning: preg_match() expects parameter 2 to be string, array given in D:\sys\htdocs\wp-includes\wp-db.php on line 1885

Warning: preg_match() expects parameter 2 to be string, array given in D:\sys\htdocs\wp-includes\wp-db.php on line 1887

the @ in front of $wpdb is to prevent such error and i have not checked is this working correct or not.check it!
*/
		$obj_check_back = @ $wpdb->get_results($check_back);//if $obj_check_back has been found means the save id has been detected that means once it has been submitted so may user use back key or editing or viewing

		if(($_REQUEST['step'] == 1 && !$obj_check_back) or ($_REQUEST['mode']=='edit' && $_REQUEST['record_id']) ){//first form submiting for add or edit
			//dbg(" FIRST STEP sst_save_temporary_data");
				if($_FILES){
					//dbg($_FILES);
					//dbg("FIRST STEP sst_save_temporary_data");
					$files = sst_file_upload($_FILES);
					//dbg('files');
					//dbg($files);
				}
				if($files){
					if($_REQUEST['mode']=='edit' && $_REQUEST['record_id']){
						$vals = array_merge(sst_load_temporary_data($_REQUEST["save_id"]),$_REQUEST,$files);
					}else{
						$vals = array_merge($_REQUEST,$files);
					}
					//dbg('vals');
					//dbg($vals);
				}else{
					if($_REQUEST['mode']=='edit' && $_REQUEST['record_id']){
						
						//dbg(sst_load_temporary_data($_REQUEST["record_id"]));
						//dbg($_REQUEST);
						$vals = array_merge(sst_load_temporary_data($_REQUEST["record_id"]),$_REQUEST);
					}else{
						$vals = $_REQUEST;
					}
					//dbg($vals);
				}
				//dbg('vals1');
				//dbg($vals);
				if($_REQUEST['mode']=='edit' && $_REQUEST['record_id']){
					//dbg($vals);
					$vals = sst_update_temporary_data($vals);
				}else{
					$vals_query = "INSERT INTO ".$wpdb->prefix.$temporary_data_table." (`key`, `value`) VALUES "."('".$_REQUEST['save_id']."','".addslashes(serialize($vals))."')";
				}
				//dbg('vals_query');
				//dbg($vals_query);
		}elseif(($_REQUEST['step'] > 1 || $obj_check_back) or !($_REQUEST['mode']=='edit' && $_REQUEST['record_id']) ){//or is not first step or user use back key
			//dbg("NOT FIRST STEP sst_save_temporary_data");
			//dbg($obj_check_back);
			$vals = sst_load_temporary_data($_REQUEST['save_id']);
			//if(($_REQUEST['mode']='edit' or $_REQUEST['record_id'])){
					//dbg($_FILES);
					//dbg(2);
					//cause duplicate upload even in the first step TODO :check it for later and next sptep 
				//$files = sst_file_upload($_FILES);
					//dbg($files);
			//}
			if($files){
				$vals = array_merge($vals,$_REQUEST,$files);//if request and vals have ele with the same name request has priority now files topest priority 
			}else{
				$vals = array_merge($vals,$_REQUEST);//if request and vals have ele with the same name request has priority 
			}
			$vals_query = "UPDATE ".$wpdb->prefix.$temporary_data_table." SET `value` = '".addslashes(serialize($vals))."' WHERE `key` = '".$_REQUEST['save_id']."' LIMIT 1";
			
		}else{
			echo 'ERROR:: THERE IS NOT ANY $step';
		}	
		if($vals_query){
			$y=$wpdb->query($vals_query);
		}
		
		//dbg($y);
		//dbg($vals_query);
	}else{
		echo 'ERROR:: THERE IS NOT ANY $_REQUEST';
	}
					//dbg($vals);
					//dbg($vals);
	$vals = sst_load_temporary_data($_REQUEST['save_id']);
					//dbg('vals3');
					//dbg($vals);
	return $vals;
}


















function sst_update_temporary_data($edited_vals){
	global $wpdb,$temporary_data_table;
	if($edited_vals['save_id']){
		$save_id_key = $edited_vals['save_id'];
	}else{
		echo "ERROR:FOR sst_update_temporary_data you have not provide save_id and $vals seem has not it or may even $vals is empty";
	}
	//$vals = sst_load_temporary_data($vals['save_id']);
	$vals_query = "UPDATE ".$wpdb->prefix.$temporary_data_table." SET `value` = '".addslashes(serialize($edited_vals))."' WHERE `key`='".$save_id_key."' LIMIT 1";
			
	//dbg($vals_query);
	$y = $wpdb->query($vals_query);
	//dbg($y);
	$vals = sst_load_temporary_data($edited_vals['save_id']);
	//dbg($vals);
	return $vals;
}