<?php
function sst_create_block($obj_block,$vals=NULL){
	//dbg($vals);
	global $mode,$input_table,$type_table,$record_id,$user;
	//dbg($vals);
	if(DEBUG){
		echo 'sst_create_block is creating...<br />';
	}
	$show = sst_show_to($obj_block->show_to,$vals);
	$hide =  sst_hide_from($obj_block->hide_from,$vals);
	if($show and !$hide){
		if(sst_get_option('fieldOrBlockPriority')=='block'||sst_get_option('fieldOrBlockPriority')=='field'){
			$priority = sst_get_option('fieldOrBlockPriority');
		}else{
			$priority = 'block';
			//sst_save_option('fieldOrBlockPriority','block');
		}
		if($obj_block){
			$fields .= sst_create_pack($obj_block,'block','pre');
			if($priority == 'field' ){
				if($obj_block->field_ids){
					//dbg($vals);
					$fields .= sst_create_fields($obj_block->field_ids,$vals);
				}
				if($obj_block->block_ids){
					$fields .= sst_create_blocks($obj_block->block_ids,$vals);
				}
			}elseif($priority == 'block' ){
				if($obj_block->block_ids){
						$fields .= sst_create_blocks($obj_block->block_ids,$vals);
				}
				if($obj_block->field_ids){
					//dbg($vals);
					$fields .= sst_create_fields($obj_block->field_ids,$vals);
				}
			}
			$fields .= sst_create_pack($obj_block,'block','post');
		}else{
			echo 'ERROR:: the block cant be retrieved may its id is incorrect <br />';
		}
		if(DEBUG){
			echo 'End sst_create_block<br />';
		}
	}else{
		//echo "شما دسترسی مجاز برای دیدن این بلاک را ندارید!";
	}
	return $fields;
}

