<?php
/*
modified:1396-10-10
data_action types are:
	1-simple
	2-extra-simple
	3-option
	4-extra-option

*/


function sst_do_data_action($obj_data_action,$vals){
	global $data_action_colval_table,$wpdb,$mode,$user;
	//dbg($vals);
	$wpdb->insert_id=NULL;
	//dbg($vals);
	//dbg($user->ID);
	//if($mode='add'){
		#####################sst_do_data_action_function($obj_data_action->function_ids,$vals);
	if($obj_data_action->func_before){
		$vals['eval_result']['before_data_action']=sst_do_eval($obj_data_action->func_before);
	}
		switch($obj_data_action->type){
		case 'simple':
			$data_action_colvals = get_ids($obj_data_action->colval_ids);
			//dbg($data_action_colvals);
			if($data_action_colvals){
				foreach($data_action_colvals as $data_action_colval){
					$obj_data_action_colval = sst_get_by_id($data_action_colval,$data_action_colval_table);
					//dbg($obj_data_action_colval);
						//dbg($obj_data_action_colval);
					//if(($vals['sst_file_types'] or $vals['sst_array_types'])){//or any other array
						//dbg($data_action_colval);
						//$vals = sst_revise_vals($vals,$obj_data_action_colval,$obj_data_action);
					//}
					//dbg($obj_data_action_colval);
					
					if($obj_data_action_colval){
						switch($obj_data_action_colval->type){
							case 'file':
								//dbg($obj_data_action_colval->type);
								
								
								if($vals['sst_file_types'][$obj_data_action_colval->value]){//prevent empty file upload to be processed					
									//dbg('comes 1');
									$columns[] = $obj_data_action_colval->column;
									//dbg($vals['sst_file_types']);
									
									$value = sst_eval_data_action_value_file($obj_data_action,$obj_data_action_colval,$vals['sst_file_types'][$obj_data_action_colval->value],$vals,$user);
									//die;
									//vals needs to have the last place of file for editing mode and retrieving by save_id
									#TODO:correct all data of sst_file_types now complete_url corrected
									$vals['sst_file_types'][$obj_data_action_colval->value]['complete_url'] = $value;
									$vals['sst_file_types'][$obj_data_action_colval->value]['file_path'] = $obj_data_action_colval->file_destination;
									
									$vals = sst_update_temporary_data($vals);
									//dbg($vals['sst_file_types'][$obj_data_action_colval->value]);
									//$vals['sst_file_types'][$obj_data_action_colval->value]['file_path']=$obj_data_action_colval->column;
									//dbg("vals['sst_file_types'][obj_data_action_colval-value]['complete_url']:".$vals['sst_file_types'][$obj_data_action_colval->value]['complete_url']);
									
									//dbg($value);
									//dbg($vals);
									//sst_load_temporary_data()
									//sst_save_temporary_data()

									$values[] = '"'.$value.'"';
									if($obj_data_action_colval->reference){
									$vals['refs'][$obj_data_action_colval->reference] = $value;
									}
								}else{//when no file selected or not uploaded correctly
									//echo 'Error either file has an error or '.$obj_data_action_colval->value .'is not the same name of your input name<br />';
									//dbg('when no file selected or not uploaded correctly');
								}
							break;
							case 'variable':
							//dbg($obj_data_action_colval->column);
							//dbg($vals);
								$columns[] = $obj_data_action_colval->column;
								$value = sst_eval_data_action_value_variable($obj_data_action_colval->value,$vals,$user);
								$values[] = "'".$value."'";
								//dbg($value);
								if($obj_data_action_colval->reference){
									$vals['refs'][$obj_data_action_colval->reference] = $value;
								}
								//dbg($value);
		
							break;
							case 'simple_variable':
								$columns[] = $obj_data_action_colval->column;
								$value = sst_eval_data_action_value_simple_variable($obj_data_action_colval->value,$vals,$user);
								$values[] = "'".$value."'";
								if($obj_data_action_colval->reference){
									$vals['refs'][$obj_data_action_colval->reference] = $value;
								}
		
							break;
							case 'code':
							//dbg($obj_data_action_colval->column);
								//dbg($obj_data_action_colval);
								$columns[] = $obj_data_action_colval->column;
								$value = sst_eval_data_action_value_code($obj_data_action_colval->value,$vals,$user);
								//dbg($value);
								$values[] = "'".$value."'";
								if($obj_data_action_colval->reference){
									$vals['refs'][$obj_data_action_colval->reference] = $value;
				/*if(duplicat)*/
								}
							break;
							case 'mysql_code':
							//dbg($obj_data_action_colval->column);
								$columns[] = $obj_data_action_colval->column;
								$value = $obj_data_action_colval->value;
								//dbg($value);
								$values[] = $value;
								if($obj_data_action_colval->reference){
									$vals['refs'][$obj_data_action_colval->reference] = $value;
				/*if(duplicat)*/
								}
							break;
						}
					}else{
						echo 'error this $data_action_colval:'.$data_action_colval.' NOT exists or its type not defined<br />';	
					}
				}
			}else{//else of if($data_action_colvals){
				echo 'error no $data_action_colvals defined for '.$obj_data_action->id.'<br />' ;
			}
			//echo $mode;
			$count = count($columns)-1;
			$not_duplicate = sst_check_duplicate($obj_data_action,$columns,$values);
			//dbg($not_duplicate);
			if($mode=='add' or $mode=='edit'){
				if($mode=='edit'){
					static $tables;
					if(!is_array($tables)){
						$tables = array();
					}
					if(@!array_key_exists($obj_data_action->table,$tables)){
						//THE   ORDER BY `id` ASC PART IS IMPORTANT
						$all_records = "SELECT * FROM ". $wpdb->prefix.$obj_data_action->table." WHERE save_id = '".$_REQUEST['record_id']."'  ORDER BY `id` ASC";
						//dbg($all_records);
						$inserted_results = $wpdb->get_results($all_records);
						
						$delete_query = "DELETE FROM ". $wpdb->prefix.$obj_data_action->table." WHERE save_id = '".$_REQUEST['record_id']."'";
						
						$delete_result = $wpdb->query($delete_query);
						$tables[$obj_data_action->table] = $inserted_results;
						$not_duplicate = false;
						//dbg($inserted_results);
					}
				}
				
				//dbg($not_duplicate);
				if($not_duplicate==false){
					
					$insert_query = 'INSERT INTO '.$wpdb->prefix.$obj_data_action->table.' (';
					if( $mode=='edit'){//
						reset($tables[$obj_data_action->table]);
						$first_key = key($tables[$obj_data_action->table]);
						

						//this cause error when add more data action and try edit those which are older and hs not previously such data inserted before
						//the extra check prevent error and check is any data exist will update it 
						//dbg($tables[$obj_data_action->table][$first_key]->id);
						if(isset($tables[$obj_data_action->table][$first_key]->id)){
							$insert_query .= '`id`,';
						}
					}
					$insert_query .= '`'.implode('`,`',$columns).'`) VALUES ';
					$insert_query .= "(";
					if( $mode=='edit'){
						//this cause error when add more data action and try edit those which are older and hs not previously such data inserted before
//the fall back of such is update a row will become new and change id on update
						//the extra check prevent error and check is any data exist will update it 

						if(isset($tables[$obj_data_action->table][$first_key]->id)){
							$insert_query .= $tables[$obj_data_action->table][$first_key]->id.",";
							unset($tables[$obj_data_action->table][$first_key]);
						}
						
					}
					//dbg($values);
					$insert_query .= "".implode(",",$values).")";
					//dbg($insert_query);
					//}
				//dbg($insert_query);
					$wpdb->query($insert_query);
					//dbg($insert_query);
					//$wpdb->show_errors();
					if($wpdb->insert_id){// and $inserted
						$vals['inserts'][$obj_data_action->insert_reference] = $wpdb->insert_id;
						//dbg($vals['inserts'][$obj_data_action->insert_reference]);
						//dbg($obj_data_action->insert_referencedbg);
						//$vals['inserts'][$obj_data_action->insert_reference];
						//dbg(sst_get_by_id($wpdb->insert_id,$obj_data_action->table));
						echo '<div  style="font-size:18px; color:#0C0">اطلاعات مربوطه با شماره آی دی '.$wpdb->insert_id.' در جدول '.$obj_data_action->table.' ذخیره گردید.</div>';
					}else{
						//$inserted = false;
						echo '<div  style="font-size:18px; color:#F00">خطایی رخ داده و اطلاعاتی ذخیره نشده است. این خطا ممکن است به دلیل تکراری بودن بخشی از اطلاعات یا هر ایرادی در دستور SQL باشد.</div><div>the query: '.$insert_query.'</div>';
						$wpdb->show_errors=true;
						 $wpdb->print_error();

					}
					//dbg();
					//dbg($vals['inserts'][$obj_data_action->insert_reference]);
				}else{
					echo '<div  style="font-size:18px; color:#F00">اطلاعات مربوطه تکراری است و ذخیره نگردید.</div>';
				}
				
			}elseif($mode=='edit'){
				//if($not_duplicate==false){
					//$update_query = "";
					/*
					$update_query = 'UPDATE '.$wpdb->prefix.$obj_data_action->table.' SET ';
					foreach($columns as $column_key=>$column){
						$update_query .= $column."=";
						$update_query .= $values[$column_key]."";
						if($count>$column_key){
							$update_query .= ',';
						}
					}
					$update_query .= " WHERE save_id='".$_REQUEST['record_id']."'";
					//dbg($update_query );
					$affected=$wpdb->query($update_query);
					$vals['inserts'][$obj_data_action->insert_reference] = $_REQUEST['record_id'];
					if($affected){// and $inserted
						echo '<div  style="font-size:18px; color:#0C0">اطلاعات وارد شده به روز رسانی گردید.</div>';
					}else{
						echo '<div  style="font-size:18px; color:#F00">به دلیل بروز خطا اطلاعات وارد شده به روز رسانی نگردید.</div>';
					}
					
					$vals = sst_update_temporary_data($vals);
			//	}else{
			//		echo 'edit:duplicate entry is not allowed';
			//}
			*/
			}elseif($mode=='view'){
				
			}
		break;
		//this can be be employed to save multiple extra blocks at once and you must only make a hidden field and mention it in the extra_special
		//column and any more extra will be checked that is set new hidden and while is set they will be saved
		case 'extra-simple'://a simple but with may more record(more than one simple at once)
			$data_action_colvals = get_ids($obj_data_action->colval_ids);
			$i=0;//first extra must be suffixed by _1 and must be sequentially 
			do{
				$i=$i++;
				foreach($data_action_colvals as $data_action_colval){
					
					$obj_data_action_colval = sst_get_by_id($data_action_colval,$data_action_colval_table);
					$columns[] = $obj_data_action_colval->column;
					$values[] = sst_eval_data_action_value($obj_data_action_colval,$vals);
				}
				$insert_query = 'INSERT INTO '.$obj_data_action->table.' ('.implode(',',$columns).') VALUES ';
				$insert_query .= '(\''.implode("','",$values).'\')';
				//dbg($insert_query);
				$wpdb->query($insert_query);
				
			//	$insert_query = 'INSERT INTO '.$obj_data_action->table.' ('.implode(',',$columns).') VALUES ';
			//	$insert_query .= '(\''.implode("','",$values).'\')';
			}while(isset($vals[$obj_data_action->extra_special.'_'.$i]));//this is an special input that may be hidden by blocks that must be hidden
		break;
		case 'option'://record one by name of field and value like option in wp
		
		break;
		case 'extra-option'://may many record that only save keys and values not any thing more
		
		break;
		}
	if($obj_data_action->func_after){
		$vals['eval_result']['after_data_action']=sst_do_eval($obj_data_action->func_after);
	}
	//dbg($vals);
	//}elseif($mode='edit'){
		
	//}
//dbg($values);

//dbg($refs);
//dbg($inserts);
//dbg($vals);
return $vals;
}