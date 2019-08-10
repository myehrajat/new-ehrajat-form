<?php

function sst_create_field($field_id,$vals=NULL){
	//dbg($vals);
	global $field_table,$mode,$input_table,$type_table,$record_id,$user;
//dbg($vals);
	if(DEBUG){
		echo 'sst_create_field<br />';
	}
	

	if($field_id){
		$obj_field = sst_get_by_id($field_id,$field_table);
		$show = sst_show_to($obj_field->show_to,$vals);
		$hide =  sst_hide_from($obj_field->hide_from,$vals);
		//dbg($hide);
		if($show and !$hide){
			if($obj_field){
				//dbg($vals);
				$field .= sst_create_pack($obj_field,'field','pre');
				$field .= sst_create_field_label($obj_field->label_id_before);
				$field .= sst_create_pack($obj_field,'input','pre');
				$field .= sst_create_inputs($obj_field->input_ids,$vals);
				$field .= sst_create_pack($obj_field,'input','post');
				$field .= sst_create_field_label($obj_field->label_id_after);
				$field .= sst_create_pack($obj_field,'field','post');
			}else{
				echo 'ERROR# object field by the id :'.$field_id.' cant be retrieved<br />';
			}
			if(DEBUG){
				echo 'End sst_create_field<br />';
			}
		}else{
			//echo "شما دسترسی مجاز برای دیدن این فیلد را ندارید!<br>";
		}
	}else{
		echo 'ERROR# NO FIELD ID DEFINED IN sst_create_field()<br />';
	}
	return $field;//only for test
}
