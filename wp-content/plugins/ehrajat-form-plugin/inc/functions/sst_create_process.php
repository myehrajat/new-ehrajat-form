<?php
/*
1396-10-20





*/

function sst_create_process($vals,$force=false , $return=false){					
	global $temporary_data_table,$wpdb,$form_table,$block_table,$mode,$input_table,$type_table,$record_id,$user;
	//	dbg($step_level);
	//dbg($vals);
							
	$step_level = sst_decide_form_step_level($vals,$force,$mode,$condition_table,$method);
	//dbg($step_level);
	switch($step_level){
		//this is the first page
		case "first":
			//dbg($vals);
			//dbg("FIRST STEP sst_create_process");
			$form_id = $_REQUEST['form'];
			if($return==false){
				echo sst_create_form($form_id,$vals);
			}else{
				//echo sst_create_form($form_id);
				return sst_create_form($form_id,$vals);
			}
		break;
		case "edit":
			//$vals = sst_load_temporary_data($_REQUEST['record_id']);
			if(isset($vals['form'])){
				
			
			if($return==false){
				echo sst_create_form($vals['form'],$vals);
			}else{
				//dbg($vals);
				return sst_create_form($vals['form'],$vals);
			}
			if($_REQUEST['data_action_ids']){
				$vals = sst_do_data_actions($vals);//for edit
				$vals = sst_save_temporary_data();//this save data after processing by colval and do actions if you want to reserve raw data commentize his
			}
			echo sst_check_conditions();
			}else{
				echo "ERROR: may be vals value in vals table deleted and form id is not defined in vals array";
			}
		break;
		case "view":
			
		break;
		case "end":
		case "middle":
			if($_REQUEST['delfile'] || $_REQUEST['input_name']){
				if($_REQUEST['delfile']){
					unset($_REQUEST['delfile']);
				}
				if($_REQUEST['input_name']){
					unset($_REQUEST['input_name']);
				}
			}
			unset($_REQUEST['submit']);
			if($_REQUEST['page_id']){
				unset($_REQUEST['page_id']);//page id of wordpress is omitt from vals
			}
			$vals = sst_save_temporary_data();
			$vals = sst_update_temporary_data($vals);
			if($vals['data_action_ids']){
				//dbg('submitted edit and form to save come here');
				//func after and befor dataaction added after runnig this func
				$vals = sst_do_data_actions($vals);
				//$vals = sst_update_temporary_data($vals['form']);//this save data after processing by colval and do actions if you want to reserve raw data commentize his
			}
			$vals = sst_update_temporary_data($vals);
			echo sst_check_conditions();
		break;
	}
}