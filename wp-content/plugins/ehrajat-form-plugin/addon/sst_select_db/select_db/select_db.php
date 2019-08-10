<?php
###############################################3
function sst_get_options_db($standard_db_id,$obj_option=NULL,$where_replace=false,$value_to_replace = NULL,$option=NULL){
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
		
		$result['custom_query'] = $standard_db_obj->custom_query;
		//dbg($result);
		//$result['custom_query'] = $standard_db_obj->custom_query;
		if($result['custom_query']=="" or $result['custom_query']==NULL){
			$table = "SELECT * FROM " .$wpdb->prefix.$standard_db_obj->table;
			if($standard_db_obj->order){
				$order = " ORDER BY ".$standard_db_obj->order;
			}
			if($standard_db_obj->where){
					$ecode='return \''.str_replace('%self%','\''.$value_to_replace.'\'',$standard_db_obj->where).'\';';
					$where = " WHERE ".eval($ecode);
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
				$join = $standard_db_obj->join;
			}
			$sql = $table.$join.$where.$group.$having.$order.$limit;
			//dbg($sql);
		}else{
			//dbg(111);
			$sql = $result['custom_query'];
			//dbg($sql);
		}
		$result['next_id'] = $standard_db_obj->next_id;
	}else{
		echo 'SST#ERROR: INCORECT STANDARD DB ID $standard_db_id='.$standard_db_id;
	}
	//dbg($sql);
	$result['obj_options'] = $wpdb->get_results($sql);
	//dbg($result['obj_options']);
	return $result;
}







function sst_create_options_db($standard_db_id,$return_data_only=false,$where_replace=false,$value_to_replace = NULL,$opt=NULL,$reset=false,$obj_input,$vals=NULL){
	global $mode;
	static $option;
	static $options;
	//dbg($vals);
	if($reset){
		$option=NULL;
		$options=NULL;	
	}
	if($where_replace){
		$result = sst_get_options_db($standard_db_id,NULL,true,$value_to_replace,$opt);
	}else{
		$result = sst_get_options_db($standard_db_id,NULL,false,NULL,$opt);
	}
	$table =$result['table'];
	$obj_options = $result['obj_options'];
	$label = $result['label_col'];
	$label_function = $result['label_function'];
	$value = $result['value_col'];
	$value_function = $result['value_function'];
	$id = $result['id_col'];
	$id_function = $result['id_function'];
	if($result['next_id']){
		$next_id =  $result['next_id'];
	}else{
		
	}
	$options_for_duplicate_test = array();
	$rand = rand(1000,1000000);
	if($obj_options){
			if($mode=='edit'){
				$slashed_vals = unserialize($vals);
				//dbg($slashed_vals);
				$vals = sst_stripslashes_vals($slashed_vals);
				//dbg($vals);
				$def_value = htmlentities($vals[$obj_input->name]);
				//dbg($def_value);
			}
		foreach($obj_options as $obj_option){
			if(is_array($option)){
				$option=array_merge($option,sst_access_cols($table,$obj_option));
			}else{
				$option=sst_access_cols($table,$obj_option);
			}
			if($label and !$label_function){
				$label_value = $obj_option->$label;
			}else{
				$label_value = eval($label_function);
			}
			if($value and !$value_function){
				$value_value = $obj_option->$value;
			}else{
				//dbg($value_function);
				$value_value = eval($value_function);
			}
			if($id and !$id_function){
				$id_value = $obj_option->$id;
			}else{
				$id_value = eval($id_function);
			}
			if($next_id){
				$option=sst_create_options_db($next_id,false,true,NULL,$option);
			}
			//dbg($option['vam']['id']);
			/*if($mode=='edit'){
				//dbg($vals);
				$slashed_vals = unserialize($vals);
				//dbg($slashed_vals);
				$vals = sst_stripslashes_vals($slashed_vals);
				//dbg($vals);
				$def_value = htmlentities($vals[$obj_input->name]);
				//dbg($def_value);
			}*/
			if(in_array($value_value.$label_value,$options_for_duplicate_test,true)===false and $value_value.$label_value!=''){
				if($return_data_only==false){
					$options .= '<option value="'.$value_value.'" label="'.$label_value.'" id="'.$id_value.'" ';
					if($def_value== $value_value){
						$options .= ' selected ';
					}
					$options .= '>'.$label_value.'</option>';
				}else{//the keys as labels and values as options values
				
					$options[]=array($label_value,$value_value);
				}
			}

			$options_for_duplicate_test[] = $value_value.$label_value;
		}
	}else{
		//echo 'SST#ERROR: INCORECT TABLE OR COLUMNS IN SST_SELECT_DB OR MAY THERE IS NO RECORDS</br>' ;
		//echo 'SST#ERROR: INCORECT TABLE OR COLUMNS IN SST_SELECT_DB $query='.$sql.' and $value_col='.$value_col.' and $label_col='.$label_col.' and $id_col='.$id_col.'</br>' ;
	}
	//dbg($options,true);
	return $options;
}

/*
this function return the value of an option and determine that $option is the array that can be used to access data needed to create an option
*/
function sst_access_cols($table,$obj_option){
	foreach($obj_option as $ky=>$vl ){//looping for $ky is for getting all available columns to use in function
		$cols[]=$ky;
	}
				//now by upper line we can access all/selected columns by $labels['column_name']/$values['column_name']/$ids['column_name'] and we can use them in our functions
	foreach($cols as $col){
		$option[$table][$col] = $obj_option->$col;
	}
	return $option;
}