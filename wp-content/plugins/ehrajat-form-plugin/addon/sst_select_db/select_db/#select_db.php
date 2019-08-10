<?php
//echo '2222222222<br />';
###############################################3
###############################################3
function sst_get_options_db($standard_db_id,$obj_option=NULL,$where_replace=false,$value_to_replace = NULL){
	//dbg($obj_option );
	//dbg($standard_db_id);
	global $wpdb,$standard_db_table;
	static $counter = 0;
	$standard_db_obj = sst_get_by_id($standard_db_id,$standard_db_table);
	if($standard_db_obj){
		$result['value_col'] = $standard_db_obj->value_col;
		$result['value_function'] = $standard_db_obj->value_function;
		$result['label_col'] = $standard_db_obj->label_col;
		$result['label_function'] = $standard_db_obj->label_function;
		$result['id_col'] = $standard_db_obj->id_col;
		$result['id_function'] = $standard_db_obj->id_function;
		$result['table'] = $standard_db_obj->table;
		//$result['custom_query'] = $standard_db_obj->custom_query;
		
		$table = "SELECT * FROM " .$wpdb->prefix.$standard_db_obj->table;
		if($standard_db_obj->order){
			$order = " ORDER BY ".$standard_db_obj->order;
		}
		if($standard_db_obj->where){
			if($previous_options_data){
				dbg('i think it never used');
				//dbg($previous_options_data[$counter][1]);
				$where = " WHERE ".str_replace('%self%',$previous_options_data[$counter][1],eval('return "'.$standard_db_obj->where.'";'));
				$counter++;
			}else{
				//dbg($previous_options_data[$counter][1]);
				//dbg($previous_options_data);
				//dbg($standard_db_obj->where);
				$ecode='return \''.addslashes(str_replace('%self%','\''.$value_to_replace.'\'',$standard_db_obj->where)).'\';';
				//dbg($ecode);
				//dbg($value_to_replace);
				$where = " WHERE ".eval($ecode);
				//$counter =0;
				//dbg(1);
				//dbg($where);
				//dbg(2);
				//$where = " WHERE ".eval('return"'.$standard_db_obj->where.'";');
			}
				//$where = " WHERE ".str_replace('%self%',$result['value_function'],eval('return"'.$standard_db_obj->where.'";'));
			//dbg($where);
		}
		if($standard_db_obj->group){
			$group = " GROUP BY ".$standard_db_obj->group;
		}
		if($standard_db_obj->having){
			$having = " HAVING ".$standard_db_obj->having;
		}
		if($standard_db_obj->limit){
			$limit = " LIMIT ".$standard_db_obj->limit;
		}
		if($standard_db_obj->join){
			//$join = $standard_db_obj->join;
		}
		$result['next_id'] = $standard_db_obj->next_id;
	}else{
		echo 'SST#ERROR: INCORECT STANDARD DB ID $standard_db_id='.$standard_db_id;
	}
	//dbg($where);
	$sql = $table.$join.$where.$group.$having.$order.$limit;
	//dbg($sql);
	$result['obj_options'] = $wpdb->get_results($sql);
	//dbg($result);

	//$wpdb->show_errors();//has yet error in pack
	//dbg($result);
	return $result;
}
###############################################3
function sst_create_options_db_next($next_id,$obj_option){
	if($next_id){//this is used  when you're gathering data from multiple table
//dbg(222222222222);
		$new_result = sst_get_options_db($next_id,$obj_option,false);
		$new_obj_options = $new_result['obj_options'];
		$new_label = $new_result['label_col'];
		$new_label_function = $new_result['label_function'];
		$new_value = $new_result['value_col'];
		$new_value_function = $new_result['value_function'];
		$new_id = $new_result['id_col'];
		$new_id_function = $new_result['id_function'];
		$next_id =  $new_result['next_id'];
		if($new_label){
		$new_label_cols=get_ids($new_label);
			foreach($new_label_cols as $new_label_col){
				$labels[$new_result['table']][$new_label_col]=$new_obj_options[0]->$new_label_col;
			}
		}
		if($new_value){
			$new_value_cols=get_ids($new_value);
			foreach($new_value_cols as $new_value_col){
				$values[$new_result['table']][$new_value_col]=$new_obj_options[0]->$new_value_col;
				//dbg($values);
			}
		}
		if($new_id){
			$new_id_cols=get_ids($new_id);
			foreach($new_id_cols as $new_id_col){
				$ids[$new_result['table']][$new_id_col]=$new_obj_options[0]->$new_id_col;
				//dbg($ids);
			}
		}
	}
	return array('labels'=>$labels,'values'=>$values,'ids'=>$ids,'next_id'=>$next_id);
}
function sst_create_options_db($standard_db_id,$return_data_only=false,$where_replace=false,$value_to_replace = NULL){
	//static 
	if($where_replace){
		$result = sst_get_options_db($standard_db_id,NULL,true,$value_to_replace);
		//dbg($result);
	}else{
		$result = sst_get_options_db($standard_db_id,NULL,false);
	}
	//dbg($standard_db_id);
	
	$obj_options = $result['obj_options'];
	$label = $result['label_col'];
	$table = $result['table'];
	$label_function = $result['label_function'];
	$value = $result['value_col'];
	$value_function = $result['value_function'];
	$id = $result['id_col'];
	$id_function = $result['id_function'];
	$next_id =  $result['next_id'];
	$options_for_duplicate_test = array();
	$rand = rand(1000,1000000);
	//dbg($obj_options);
	if($obj_options){
				if($return_data_only==false){
					$options .= '<option value="">------</option>';
				}
		foreach($obj_options as $obj_option){
			/*if($next_id){//this is used  when you're gathering data from multiple table
			//dbg(222222222222);
				$new_result = sst_get_options_db($next_id,$obj_option,false);
				$new_obj_options = $new_result['obj_options'];
				$new_label = $new_result['label_col'];
				$new_label_function = $new_result['label_function'];
				$new_value = $new_result['value_col'];
				$new_value_function = $new_result['value_function'];
				$new_id = $new_result['id_col'];
				$new_id_function = $new_result['id_function'];
				if($new_label){
				$new_label_cols=get_ids($new_label);
					foreach($new_label_cols as $new_label_col){
						$labels[$new_result['table']][$new_label_col]=$new_obj_options[0]->$new_label_col;
					}
				}
				if($new_value){
					$new_value_cols=get_ids($new_value);
					foreach($new_value_cols as $new_value_col){
						$values[$new_result['table']][$new_value_col]=$new_obj_options[0]->$new_value_col;
						//dbg($values);
					}
				}
				if($new_id){
					$new_id_cols=get_ids($new_id);
					foreach($new_id_cols as $new_id_col){
						$ids[$new_result['table']][$new_id_col]=$new_obj_options[0]->$new_id_col;
						//dbg($ids);
					}
				}
			}*/
			if($next_id){
				//$new = sst_create_options_db_next($next_id,$obj_option);
					//dbg($new);
					//dbg(99999);
				sst_create_options_db($next_id);
			//	if($new['next_id']){
					//$next_id
			//	}
			}
			$label_value = sst_access_cols($table,$obj_option,$label,$label_function);
			$value_value = sst_access_cols($table,$obj_option,$value,$value_function);
			$id_value = sst_access_cols($table,$obj_option,$id,$id_function);
			//dbg(in_array($value_value.$rand.$label_value,$options_for_duplicate_test,true));
			//the need of $rand must be checked
			//if(in_array($value_value.$rand.$label_value,$options_for_duplicate_test,true)===false){
			if(in_array($value_value.$label_value,$options_for_duplicate_test,true)===false){
				if($return_data_only==false){
					$options .= '<option value="'.$value_value.'" label="'.$label_value.'" id="'.$id_value.'">'.$label_value.'</option>';
				}else{//the keys as labels and values as options values
					$options[]=array($label_value,$value_value);
				}
			}
			//$options_for_duplicate_test[] = $value_value.$rand.$label_value;
			$options_for_duplicate_test[] = $value_value.$label_value;
		}
	}else{
		//echo 'SST#ERROR: INCORECT TABLE OR COLUMNS IN SST_SELECT_DB OR MAY THERE IS NO RECORDS</br>' ;
		//echo 'SST#ERROR: INCORECT TABLE OR COLUMNS IN SST_SELECT_DB $query='.$sql.' and $value_col='.$value_col.' and $label_col='.$label_col.' and $id_col='.$id_col.'</br>' ;
	}
	//dbg($options);
	//dbg($options_for_duplicate_test);
	//dbg($options);
	
	return $options;
}

/*
this function return the value of an option and determine that $option is the array that can be used to access data needed to create an option
*/
function sst_access_cols($table,$obj_option,$col_names,$function){
	//dbg($obj_option);
	static $option;
	//global $obj_option;
			if($function){//if label function filled the the eval trigger its code
				//if($col_names and $col_names<>'*'){
				//	$cols=get_ids($col_names);//here we just make those defined column accessible
				//}elseif(!$col_names or $col_names=='*'){
					foreach($obj_option as $ky=>$vl ){//looping for $ky is for getting all available columns to use in function
						$cols[]=$ky;
					}
				//}
				//now by upper line we can access all/selected columns by $labels['column_name']/$values['column_name']/$ids['column_name'] and we can use them in our functions
				foreach($cols as $col){
					$option[$table][$col] = $obj_option->$col;
					$x_value = eval($function);
				}
			}else{//there is no function so use the only column to get the data needed for option
				if(isset($obj_option->$col_names)){
					$x_value = $obj_option->$col_names;
				}
			}
			//dbg($option);

			return $x_value;
}