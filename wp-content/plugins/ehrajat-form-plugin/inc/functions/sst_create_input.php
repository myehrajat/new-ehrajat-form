<?php

function sst_create_input($input_id,$vals=NULL){
	global $mode,$input_table,$type_table,$record_id,$user;
	//dbg($vals);
	if(DEBUG){
		echo 'sst_create_input<br />';
	}
	//dbg($vals);
	$obj_input = sst_get_by_id($input_id,$input_table);
	if($obj_input){
		$obj_type = sst_get_by_id($obj_input->type_id,$type_table);
		if($obj_type){
			//dbg($obj_type->function);
			//$input .= sst_create_pack($obj_input,'input','pre',$extra);//previously used
			  $ecode.='return ';
			  $ecode .= $obj_type->function;
			  $ecode .= '(';
			  $ecode .= $input_id;
			  $ecode .= ',"'.addslashes(serialize($vals));
			  $ecode .= '");';
			if($obj_type->function == 'sst_select'){
		     //dbg($vals);	
			}
			$input .= eval($ecode);
			//if($obj_type->function == 'sst_select'){
		     //dbg($input);	
			//}

			//$input .= sst_create_pack($obj_input,'input','post'/*,$extra*/);//previously used
		}else{
			echo 'SST#ERROR: INCORECT TYPE ID';
		}
	}else{
		echo 'SST#ERROR: INCORECT INPUT ID :'.$input_id;
	}
	if(DEBUG){
		echo 'End sst_create_input<br />';
	}
	$input =sst_create_field_label($obj_input->label_id_before).$input.sst_create_field_label($obj_input->label_id_after);
	//dbg($input ,true);
	return $input;
}

