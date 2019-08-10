<?php

function sst_create_form($form_id,$vals=NULL){
	//dbg($vals);
	global $form_table,$block_table,$mode,$input_table,$type_table,$record_id,$user;
	if(DEBUG){
		echo 'sst_create_form => form '.$form_id.' is creating...<br />';
	}
	//dbg($vals['%%user_id%%']);
	$obj_form = sst_get_by_id($form_id,$form_table);
	$show = sst_show_to($obj_form->show_to,$vals);
	//dbg($obj_form);
	$hide =  sst_hide_from($obj_form->hide_from,$vals);
	//dbg($hide);
	if($show and !$hide){
		$priority = sst_get_option('fieldOrBlockPriority');////field/block
		if($obj_form->func_before){
			$vals['eval_result']['before_form']=sst_do_eval($obj_form->func_before);
		}
		//dbg($obj_form);

		if($obj_form){
			$default_form_fields_and_save_id = sst_create_default_form_fields($obj_form,$vals);
			$save_id = $default_form_fields_and_save_id['save_id'];
			$form .= sst_create_pack($obj_form,'form','pre',NULL);
			//dbg(sst_create_pack($obj_form,'form','pre',NULL));
			$form .= $obj_form->header;
			$form .= sst_create_form_tag($obj_form,'pre',$vals,$save_id);
			//dbg($vals);
			if($priority == 'field'){
				if($obj_form->field_ids){
					//dbg(1);
					//dbg($vals);
					$form .= sst_create_fields($obj_form->field_ids,$vals/*,$extra*/);
				}
				if($obj_form->block_ids){
					//dbg(2);
					//dbg($vals);
					$form .= sst_create_blocks($obj_form->block_ids,$vals,NULL);
				}
			}elseif($priority == 'block'){
				if($obj_form->block_ids){
					//dbg(3);
					//dbg($vals);
					$form .= sst_create_blocks($obj_form->block_ids,$vals,NULL);
				}
				if($obj_form->field_ids){
					//dbg(4);
					//dbg($vals);
					$form .= sst_create_fields($obj_form->field_ids,$vals/*,$extra*/);
				}
			}else{
				if($obj_form->block_ids){
					$form .= sst_create_blocks($obj_form->block_ids,$vals,NULL);
				}
				if($obj_form->field_ids){
					$form .= sst_create_fields($obj_form->field_ids,$vals/*,$extra*/);
				}
				sst_save_option('fieldOrBlockPriority','block');
				//echo 'ERROR#SST:	fieldOrBlockPriority IS NOT YET SET';
			}
			//dbg($vals);
			//***$slashed_vals = unserialize($vals);
			//$vals = sst_stripslashes_vals($slashed_vals);
			//dbg($slashed_vals);
			//dbg($vals);
			//created 		$default_form_fields_and_save_id = sst_create_default_form_fields($obj_form,$vals); before 
			$form .= $default_form_fields_and_save_id['default_fields'];
			$form .= sst_create_form_tag($obj_form,'post');
			//dbg(sst_create_form_tag($obj_form,'post'));
			$form .= $obj_form->footer;
			//echo $obj_form->footer;
			//$ddd = sst_create_pack($obj_form,'form','post',NULL);
			//dbg($ddd);
			$form .= sst_create_pack($obj_form,'form','post',NULL);
			//dbg(sst_create_pack($obj_form,'form','post',NULL));
			if(DEBUG){
				echo 'End sst_create_form<br />';
			}
		}else{
			echo 'ERROR# THE FORM ID IS INCORRECT $form: '.$form_id.'<br />';
		}
		if($obj_form->func_before){//this will be shown before form but run after on fly form generated  but not yet showed
			$vals['eval_result']['after_form']=sst_do_eval($obj_form->func_after);
		}
	}else{
		echo "شما دسترسی مجاز برای دیدن این فرم را ندارید!";
	}
	return $form;
}

