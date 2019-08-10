<?php

function sst_create_pack($obj,$default_pack_level,$pre_post,$extra=NULL){//addextra
	//dbg($default_pack_level.'-'.$pre_post);
	if(DEBUG){
		echo 'sst_create_pack<br />';
	}
	global $pack_table,$default_pack_table;
	//static $ordered_pack_ids;
	$pack_id =$obj->pack_id;
	$default_pack_id = $obj->default_pack_id;
	$appearance_id = $obj->appearance_id;
	$the_id = sst_create_the_id($obj,$default_pack_level,$extra);
	if($default_pack_level=='form'&&$pre_post=='pre'){
		$ordered_pack_ids = sst_create_pack_order('null');
	}
	if($pre_post=='pre'){
		$ordered_pack_ids = sst_create_pack_order('add',$default_pack_id);//ordered from top (eg form) to down (eg label);
		//dbg($ordered_pack_ids);
	}elseif($pre_post=='post'){
		$ordered_pack_ids = sst_create_pack_order('add',$default_pack_id);//ordered from top (eg form) to down (eg label);
	}
	//dbg($ordered_pack_ids);

	if($pack_id){
		$obj_pack = sst_get_by_id($pack_id,$pack_table);
	}
	//dbg($pre_post);
	if($obj_pack){//it has its own pack id
		//dbg('it has its own pack id');
		if($pre_post=='pre' && ($pre_post!="" or $pre_post!=NULL)){
			$pack = $obj_pack->$pre_post.$the_id.sst_create_appearance($appearance_id).' >';
		}elseif($pre_post=='pre' && ($pre_post=="" or $pre_post==NULL)){
			$pack = '';//$obj_pack->$pre_post.$the_id.sst_create_appearance($appearance_id).' >';
		}elseif($pre_post=='post'){
			$pack = $obj_pack->$pre_post;
		}
	}else{//it has NOT its own pack id
		//dbg('it has NOT its own pack id');
		//dbg($ordered_pack_ids);
	//dbg($pre_post);
		if($ordered_pack_ids){
			$reversed = array_reverse($ordered_pack_ids);
		}
		$i=0;
		$j = count($ordered_pack_ids);
		while(!isset($found_default_pack_id) && $j>=$i){
			//echo $i;
			//dbg($pre_post);
			$obj_default_pack = sst_get_by_id($reversed[$i],$default_pack_table);
			//dbg($obj_default_pack->$default_pack_level);
			if($obj_default_pack->$default_pack_level){
				//echo 'has def pack';
				$found_default_pack_id = $obj_default_pack->$default_pack_level;
				//echo '<span style="color:#CC0000">default pack level:'.$default_pack_level.'<br /></span>';
				$obj_pack = sst_get_by_id($found_default_pack_id,$pack_table);
				//dbg($obj_pack);
				//dbg($pre_post);
				if($pre_post=='pre'){
					//echo 'pre:'.$default_pack_level.'<br />';
					$pack = $obj_pack->pre . $the_id . sst_create_appearance($appearance_id).' >';
				}elseif($pre_post=='post'){
					//echo 'post:'.$default_pack_level.'<br />';
					//dbg($obj_pack->post.'dddddddddddd') ;
					$pack = $obj_pack->post;
				}
			}elseif($default_pack_level=='form'){
				$found_default_pack_id = 0;
				if($pre_post=='pre'){
					//echo 'pre by form:'.$default_pack_level.'<br />';
					$pack = '<div'. $the_id .'>';
				}else{
					//echo 'post:'.$default_pack_level.'<br />';
					//echo 'defpost';
					$pack = '</div>';
				}
			}else{//there is no defined nor default pack for any level except form
				//dbg($obj_default_pack);
				//$found_default_pack_id = $obj_default_pack->$default_pack_level;
				//echo 'post default pack level:'.$default_pack_level.'<br />';
				//$obj_pack = sst_get_by_id($found_default_pack_id,$pack_table);
				//$pack = $obj_pack->post;
				//echo 'else';
			}
			//$pack = $obj_pack->post;
			$i++;
		}
//dbg($pre_post);

	}
	if(DEBUG){
		echo 'End sst_create_pack<br />';
	}
	return $pack;

}
