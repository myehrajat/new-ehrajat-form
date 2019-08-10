<?php
/*
Second field required id
First field required standard_condition_ids
standard_condition required operator and value and dependent_field_id and dependent_select_option_ids(if options not defined no option appeared)
*/
$sst['type']='dependent_select';
$sst['function']='sst_dependent_select';
$sst['epithet']='Dependent Select Field';
$sst['description']='you must define standard_condition_ids that make decision that which condition show which options for the selected option and need an other select field which must have a unique id and without defining options or standard_db_id and dependent options must be inserted in the standard_condition record with it dependent input id and its matched options 
the other thing that must have in mind is that every if check for checking this select value is series of if condition check without else checking
Second field required id
First field required standard_condition_ids
standard_condition required operator and value and dependent_field_id and dependent_select_option_ids(if options not defined no option appeared)
';
$sst['slug']='dependent_select_field';
$sst['owner']='Ehrajat';
$sst['id']=5;


function sst_dependent_select($input_id){
	global $input_table,$standard_table,$standard_condition_table;
	if(DEBUG){
		echo 'sst_select<br />';
	}
	/*<script language="javascript" src="dd-list.js"></script>*/
	include_once('dependentSelect/select.php');
	include_once('dependentSelect/include_all.php');
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);
	$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($event_ids);
	$attributes['id'] = sst_create_id($obj_input);
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	//dbg($obj_standard);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['multiple'] = sst_create_multiple($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$dependency = 'checkSelectSubCatByValue(Array(';
		$standard_condition_ids = sst_remove_nulled_values(get_ids($obj_standard->standard_condition_ids));
		
		//dbg($standard_condition_ids);
		if(!empty($standard_condition_ids)){
			$i = 0;
			$count = count($standard_condition_ids);
			foreach($standard_condition_ids as $standard_condition_id){
				$obj_standard_condition = sst_get_by_id($standard_condition_id,$standard_condition_table);
			if($obj_standard_condition){
				$dependency .= "Array(this,'";
				if($obj_standard_condition->operator){
					$dependency .= $obj_standard_condition->operator;
				}else{
					echo 'condition id '.$standard_condition_id.' that you have defined for this input :'.$input_id.' does not contain operator<br />';	
				}
				$dependency .= "','";
				if($obj_standard_condition->value){
					$dependency .= $obj_standard_condition->value;
				}else{
					echo 'condition id '.$standard_condition_id.' that you have defined for this input :'.$input_id.' does not contain value<br />';	
				}
				$dependency .= "','";
				if($obj_standard_condition->dependent_field_id){
					$dependency .= $obj_standard_condition->dependent_field_id;
				}else{
					echo 'condition id '.$standard_condition_id.' that you have defined for this input :'.$input_id.' does not contain dependent_field_id<br />';	
				}
				$dependency .= "',";
				global $select_options_table;
				$dependent_select_option_ids = get_ids($obj_standard_condition->dependent_select_option_ids);
				if(!empty($dependent_select_option_ids)){
					foreach($dependent_select_option_ids as $dependent_select_option_id){
						$obj_select_options = sst_get_by_id($dependent_select_option_id,$select_options_table);
						$values[] = $obj_select_options->value;
						if($obj_select_options->label){
							$labels[] = $obj_select_options->label;
						}else{
							$labels[] = $obj_select_options->content;
						}
					}
					$dependency .= "Array('".implode("','",$values)."'),";
					$dependency .= "Array('".implode("','",$labels)."'))";
					$values = array();
					$labels = array();
				}else{
					$dependency .= "Array(''),Array('')";
				}
				$i++;
				if($count>$i){
					$dependency .= ',';
				}
			}else{
			echo 'condition id '.$standard_condition_id.' that you have defined for this input :'.$input_id.' does not exists<br />';	
			}
			}
		}else{
			echo 'error no condition for dependent select is defined with this input id :'.$input_id.'<br />';	
		}
		$dependency .= '));';
		$attributes['events'] = sst_append_events($attributes['events'],'onchange',$dependency);
		//$attributes['events'] = sst_append_events($attributes['events'],'onload',$dependency);
		$select_input = '<select '.implode('',$attributes).' >';
		$select_input .= sst_create_options($obj_standard->option_ids,false);
		//dbg(sst_create_options($obj_standard->option_ids,false));
		//dbg($obj_standard->option_ids);
		$select_input .= '</select>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID $input_id='.$input_id ;
	}
	if(DEBUG){
		echo 'End sst_select<br />';
	}
	return $select_input;	
	
}

