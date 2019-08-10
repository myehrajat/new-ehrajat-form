<?php
/*
modified:1396-10-25




*/
function sst_create_option($obj_option,$obj_input,$return_data_only=false,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
	if($return_data_only){
		$value = $obj_option->value;
		if($obj_option->label){
			$label=$obj_option->label;
		}elseif($obj_option->content){
			$label=$obj_option->content;
		}elseif($obj_option->value){
			$label=$obj_option->value;
		}
		
		$option = array($label,$value);
	}elseif(!$return_data_only){
		$attributes['selected'] = sst_create_selected($obj_option);
		$attributes['appearance'] = sst_create_appearance($obj_option->appearance_id);
		$attributes['disabled'] = sst_create_disabled($obj_option);
		$attributes['value'] = sst_create_value($obj_option,$obj_input,$vals);
		//dbg($obj_option);
		$attributes['label'] = sst_create_label($obj_option);
		$attributes['id'] = sst_create_id($obj_option);
		$attributes['events'] = sst_create_events($obj_option->event_ids);
		$attributes['language'] = sst_create_language($obj_option->language_id);
		$attributes['metas'] = sst_create_metas($obj_option);
		$option = '<option '.implode(' ',$attributes).' >'.$obj_option->content.'</option>';
	}	//dbg($obj_input);

	return $option;
}
/*
order_type
*/


###############################################3
function sst_create_options($option_ids,$obj_input,$return_data_only=false,$vals=NULL){
	global $select_options_table,$wpdb;
	
	if(DEBUG){
		echo 'sst_create_options<br />';
	}
	if($option_ids){
		$option_ids = get_ids($option_ids);
		if(!$return_data_only){
			$options.= '<option value="">-------</option>';
		}elseif($return_data_only){
			$options[]= '<option value="">-------</option>';
		}
		
		foreach($option_ids as $option_id){
			$obj_option = sst_get_by_id($option_id,$select_options_table);
			if(!$return_data_only){
				if($obj_option){
					switch($obj_option->type){
						case 'optgroup':
							$options .= sst_create_optgroups($obj_option);
						break;
						case 'option':
							//dbg($vals);
							$options .= sst_create_option($obj_option,$obj_input,false,$vals);
						break;
						default:
							//dbg($vals);
							$options .= sst_create_option($obj_option,$obj_input,false,$vals);
						break;
					}
				}else{
					echo 'SST#ERROR: INCORECT OPTION ID='.$option_id.' DEFINED<br>';
				}
			}elseif($return_data_only){
				$options[] = sst_create_option($obj_option,$obj_input,true,$vals);
			}
			//dbg($options,true);
			//$options.= '<option label="">انتخاب کنید</option>';
		}
 	}else{
		//in dependent select no options defined in standard , its defined in condition so we temporarily will not show this error
		//echo 'SST#ERROR: INCORECT NO OPTION IDS DEFINED';
	}
	
	if(DEBUG){
		echo 'End sst_create_options<br />';
	}
	return $options;	
}
###############################################3
function sst_create_optgroup($obj_option){
	if(DEBUG){
		echo 'sst_create_optgroup<br />';
	}
	$attributes['appearance'] = sst_create_appearance($obj_option->appearance_id);
	$attributes['disabled'] = sst_create_disabled($obj_option);
	$attributes['label'] = sst_create_label($obj_option);
	$attributes['id'] = sst_create_id($obj_option);
	$attributes['events'] = sst_create_events($obj_option->event_ids);
	$attributes['language'] = sst_create_language($obj_option->language_id);
	$attributes['metas'] = sst_create_metas($obj_option);
	$optgroup = '<optgroup '.implode(' ',$attributes).' >';
	if(DEBUG){
		echo 'end sst_create_optgroup<br />';
	}
	return $optgroup;
}
###############################################3
function sst_create_optgroups($obj_option){
	global $wpdb,$select_options_table;
	$optgroups = sst_create_optgroup($obj_option,$extra);
	$inoptgroup_sql="SELECT id FROM " .$wpdb->prefix.$select_options_table." WHERE `optgroup_id` = ".$obj_option->id;
	$obj_inoptgroups = $wpdb->get_results($inoptgroup_sql);
	foreach($obj_inoptgroups as  $obj_inoptgroup){
		$ingroup_ids[] = $obj_inoptgroup->id;
	}
	if(!empty($ingroup_ids)){
		$ingroup_ids = implode(',',$ingroup_ids);
		$optgroups .= sst_create_options($ingroup_ids,false);
	}
	$optgroups .= '</optgroup>';
	return $optgroups;
}
