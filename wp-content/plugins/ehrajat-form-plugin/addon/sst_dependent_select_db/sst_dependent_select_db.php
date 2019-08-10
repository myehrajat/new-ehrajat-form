<?php
/*
wpdb prefix in standard db is added to table automatically so you must avoid prepend it prefix manually
there are two ways to add label ,value ,id to your option the most basically and the easiest is 
	1.add the column in your table that conatin value/label/id only to value_col/label_col/id_col and left value_function/label_function/id_function blank
but if you need to use two columns or more in your options for value/label/id for example use the first_name column and last_name column in your label you must by first define what columns you need in value_col/label_col/id_col and seperate them by a comma "," or left blank or use * to select all columns and then use a function or php code to make your custom value/label/id but you should know how to access the data of each column you should remember these:
	columns value are accessible by $option['column_name'] remember that column_name must be named in value_col and seperated by comma from others

there are three method to use this field type: 
	1.get master from db and slaves from db with explicit condition (NOT self)
		an standard for the master must be defined with standard_db_id and standard_condition_ids
		an standard for the slave must be defined with standard_db_id unique id
		an input for the slave must be defined with the_id (unique id)
		an standard_db for the master must be defined with table without prefix value_col or value_function and label_col or label_function if you want you can use next id that need more standard_db and can get options from other tables also
		one or more standard_conditions for the master must be defined with operator/ value/ dependent_field_id/ dependent_select_option_ids/ dependent_standard_db_id
		
	2.get master from db and slaves from select_option with explicit condition (NOT self)
	3.get master from db and slaves from db without explicit condition and using self (NOT self)
		an standard for the master must be defined with standard_db_id and standard_condition_ids
		an standard for the slave must be defined with standard_db_id unique id
		an input for the slave must be defined with the_id (unique id)
		an standard_db for the master must be defined with table without prefix value_col or value_function and label_col or label_function if you want you can use next id that need more standard_db and can get options from other tables also
		one or more standard_conditions for the master must be defined with operator/ value/ dependent_field_id/ dependent_select_option_ids/ dependent_standard_db_id
		an standard_db for the slave must be defined with table without prefix value_col or value_function and label_col or label_function and the most important using %self% in where column that it ensure that your custom result %self% means selected values of master options if you want you can use next id that need more standard_db and can get options from other tables also






checkDependentValue

checkDependentValue
*/
//echo '11111111111111111111111111111<br />';
$sst['type']='dependent_select_db';
$sst['function']='sst_dependent_select_db';
$sst['epithet']='Dependent Select DB Field';
$sst['description']='
wpdb prefix in standard db is added to table automatically so you must avoid prepend it prefix manually
there are two ways to add label ,value ,id to your option the most basically and the easiest is 
	1.add the column in your table that conatin value/label/id only to value_col/label_col/id_col and left value_function/label_function/id_function blank
but if you need to use two columns or more in your options for value/label/id for example use the first_name column and last_name column in your label you must by first define what columns you need in value_col/label_col/id_col and seperate them by a comma "," or left blank or use * to select all columns and then use a function or php code to make your custom value/label/id but you should know how to access the data of each column you should remember these:
	columns value are accessible by $option["column_name"] remember that column_name must be named in value_col and seperated by comma from others

there are three method to use this field type: 
	1.get master from db and slaves from db with explicit condition (NOT self)
		an standard for the master must be defined with standard_db_id and standard_condition_ids
		an standard for the slave must be defined with standard_db_id unique id
		an input for the slave must be defined with the_id (unique id)
		an standard_db for the master must be defined with table without prefix value_col or value_function and label_col or label_function if you want you can use next id that need more standard_db and can get options from other tables also
		one or more standard_conditions for the master must be defined with operator/ value/ dependent_field_id/ dependent_select_option_ids/ dependent_standard_db_id
		
	2.get master from db and slaves from select_option with explicit condition (NOT self)
	3.get master from db and slaves from db without explicit condition and using self (self)
		an standard for the master must be defined with standard_db_id and standard_condition_ids
		an standard for the slave must be defined with standard_db_id unique id
		an input for the slave must be defined with the_id (unique id)
		an standard_db for the master must be defined with table without prefix value_col or value_function and label_col or label_function if you want you can use next id that need more standard_db and can get options from other tables also
		one or more standard_conditions for the master must be defined with operator/ value/ dependent_field_id/ dependent_select_option_ids/ dependent_standard_db_id
		an standard_db for the slave must be defined with table without prefix value_col or value_function and label_col or label_function and the most important using %self% in where column that it ensure that your custom result %self% means selected values of master options if you want you can use next id that need more standard_db and can get options from other tables also
';
$sst['slug']='dependent_select_db_field';
$sst['owner']='Ehrajat';
$sst['id']=6;

function sst_dependent_select_db($input_id){
	global $input_table,$standard_table,$standard_condition_table,$select_options_table;
	if(DEBUG){
		echo 'sst_select_db<br />';
	}
	require_once('dependentSelect\select_db.php');
	include_once('dependentSelect\include_all.php');
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);
	$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($event_ids);
	$attributes['id'] = sst_create_id($obj_input);
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input,$extra);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['multiple'] = sst_create_multiple($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		/*check is the select and its dependent are connected by the value of the self selected value or one predefined value */
		$self = false;
		if($obj_standard->meta_ids){
			$metas = sst_get_metas($obj_standard);
			if($metas['checkDependentValue']=='self'){
				$self = true;
			}
		}
		//dbg($self);
		/*checkSelectSubCatByValue(SelectSubCatByValues) and SelectSubCatByValue(thisSelect,operator,value,dependentId,optValues,optTexts)*/
		$dependency .= 'checkSelectSubCatByValue(Array(';
		$standard_condition_ids = get_ids($obj_standard->standard_condition_ids);	
		//dbg($standard_condition_ids);
		if(empty($standard_condition_ids)){//if there is no show error
			echo 'error no condition for dependent select is defined';	
		}else{//!empty($standard_condition_ids)
			$count_standard_condition_ids = count($standard_condition_ids);
			/*check is the select and its dependent are connected by the value of the self selected value or one predefined value */
			if($self){
				foreach($standard_condition_ids as $standard_condition_id){
					$obj_standard_condition = sst_get_by_id($standard_condition_id,$standard_condition_table);
					/*check that dependent options must be retrieved from databas for the self dependent*/
					if($obj_standard_condition->dependent_standard_db_id){
						//it has option ids no db id
						if($obj_standard->option_ids){
							$master_options = sst_create_options($obj_standard->option_ids,true);
						//dbg($master_options);
						//it has db ids no option id
						}elseif($obj_standard->standard_db_id){
							//sst_create_options_db return these ->	$options[]=array($label_value,$value_value);
							$master_options = sst_create_options_db($obj_standard->standard_db_id,true,false);
						}else{
							echo 'error not option_ids nor standard_db_id is defined';
						}
						$k=0;//first value is empty this.options[".$k."].value=NULL
						$master_options_count = count($master_options);
						//dbg($master_options);
						foreach($master_options as $key=>$value){
							//$value[1] is the value of master option that will be used for finding dependent select
								//dbg($value);
							$self_db_options = sst_create_options_db($obj_standard_condition->dependent_standard_db_id,true,true,$value[1]/*$value_to_replace*/);
							
							//dbg($self_db_options);
							$dependency .= "Array(this,'".$obj_standard_condition->operator."',this.options[".($k+1)."].value,'".$obj_standard_condition->dependent_field_id."',";
							
							if($self_db_options){
								foreach($self_db_options as $self_db_option){
									$self_labels[] = $self_db_option[0];
									$self_values[] = $self_db_option[1];
								}
								$dependency .= "Array('".implode("','",$self_values)."'),";
								$dependency .= "Array('".implode("','",$self_labels)."'))";
								$self_values = array();
								$self_labels = array();
							}else{
								$dependency .= "Array(''),Array(''))";
							}
							$k++;
							if($k<$master_options_count){
								$dependency .= ",";
							}elseif($count_standard_condition_ids>1){
								$dependency .= ",";
							}




						}$count_standard_condition_ids--;
					}
				}
			/*
			//Not self
			
			*/
			}elseif(!$self){
				//$dependency .= "Array(this,'==','".$obj_standard_condition->value."','".$obj_standard_condition->dependent_field_id."',";
				foreach($standard_condition_ids as $standard_condition_id){
/*------------------------Start of not self and having dependent_select_option_ids----------------------------*/
					$obj_standard_condition = sst_get_by_id($standard_condition_id,$standard_condition_table);
					$dependency .= "Array(this,'";
					$dependency .= $obj_standard_condition->operator;
					$dependency .= "','";
					$dependency .= $obj_standard_condition->value;//selectbox.options[i]
					$dependency .= "','";
					$dependency .= $obj_standard_condition->dependent_field_id;
					$dependency .= "',";
					/*
					//where dependent has option ids no db
					*/
					if($obj_standard_condition->dependent_select_option_ids){
						//dbg($obj_standard_condition->dependent_select_option_ids);
						$dependent_select_option_ids = get_ids($obj_standard_condition->dependent_select_option_ids);
						//dbg(count($dependent_select_option_ids));
						//$dependent_select_option_ids=sst_remove_nulled_values($dependent_select_option_ids);
						if(!empty($dependent_select_option_ids)){
							foreach($dependent_select_option_ids as $dependent_select_option_id){
								$obj_select_options = sst_get_by_id($dependent_select_option_id,$select_options_table);
								// these prevent that if any option_id doesnot exist or cant be retrieved not precessed for making option
								if($obj_select_options){
									//dbg($obj_select_options);
									$values[] = $obj_select_options->value;
									if($obj_select_options->label){
										$labels[] = $obj_select_options->label;
									}else{
										$labels[] = $obj_select_options->content;
									}
								}
							}
							$dependency .= "Array('".implode("','",$values)."'),";
							$dependency .= "Array('".implode("','",$labels)."'))";
							$values = array();
							$labels = array();
						}else{
							$dependency .= "Array(''),Array('')";
						}
					/*
					//where dependent has db ids not options
					*/
					//$obj_standard_condition
					}else{
/*------------------------End of not self and having dependent_select_option_ids----------------------------*/
/*------------------------Start of not self and having dependent_standard_db_id----------------------------*/
						//dbg($obj_standard_condition);
						//sst_create_options_db return these ->	$options[]=array($label_value,$value_value);
						$master_options = sst_create_options_db($obj_standard->standard_db_id,true,false);
						//$k=0;
						$master_options_count = count($master_options);
						//dbg($master_options);
						//foreach($master_options as $key=>$value){
							//$value[1] is the value of master option that will be used for finding dependent select
							//$self_db_options = sst_create_options_db($obj_standard_condition->dependent_standard_db_id,true,true,$value[1]/*$value_to_replace*/);
						$not_self_db_options = sst_create_options_db($obj_standard_condition->dependent_standard_db_id,true);
						if($not_self_db_options){
							foreach($not_self_db_options as $not_self_db_option){
								$not_self_labels[] = $not_self_db_option[0];
								$not_self_values[] = $not_self_db_option[1];
							}
							$dependency .= "Array('".implode("','",$not_self_values)."'),";
							$dependency .= "Array('".implode("','",$not_self_labels)."'))";
							$not_self_values = array();
							$not_self_labels = array();
						}else{
							$dependency .= "Array(''),Array(''))";
						}
						
						if($count_standard_condition_ids>1){
							$dependency .= ",";
						}
/*------------------------End of not self and having dependent_standard_db_id----------------------------*/
					}$count_standard_condition_ids--;
				}
			}
		}
			$dependency .= '));';
			//dbg($dependency);
		//if($self){
//			$dependency .= '}';
		//}

		$attributes['events'] = sst_append_events($attributes['events'],'onchange',$dependency);


		$select_input = '<select '.implode('',$attributes).' >';
		if($obj_standard->option_ids){
			$select_input .= sst_create_options($obj_standard->option_ids,false);
		}elseif($obj_standard->standard_db_id){
			$select_input .= sst_create_options_db($obj_standard->standard_db_id,false,false);
		}else{
			echo 'error';
		}
		$select_input .= '</select>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID $input_id='.$input_id ;
	}
	if(DEBUG){
		echo 'End sst_select_db<br />';
	}
	return $select_input;	
}
