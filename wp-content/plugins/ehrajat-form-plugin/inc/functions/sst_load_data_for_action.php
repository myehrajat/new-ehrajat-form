<?php
function sst_load_data_for_action(){
	if(($_REQUEST['step'] and $_REQUEST['data_action_ids']) OR $_REQUEST['save_id'] ){
		if(empty(sst_load_temporary_data($_REQUEST['save_id']))){
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
				$vals = sst_update_temporary_data($_REQUEST);
				//dbg($vals);

				if($vals['data_action_ids']){
					$vals = sst_do_data_actions($_REQUEST);
				}
					//dbg($vals);

				$vals = sst_update_temporary_data($vals);
				if($_REQUEST['condition_ids']){
					sst_check_conditions();
				}
			}
			$vals = sst_load_temporary_data($_GET['save_id']);
	}
	return $vals;
}
?>