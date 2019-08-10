<?php
/*
modified:1396-10-20



*/
function sst_create_blocks($block_ids,$vals=NULL){
	//dbg($vals);
	global $block_table,$mode,$input_table,$type_table,$record_id,$user;
	//dbg($vals);
	if(DEBUG){
		echo 'sst_create_blocks these ids:'.get_ids($block_ids).'<br />';
	}
	$block_ids = get_ids($block_ids);
	$i=0;
	foreach($block_ids as $block_id){
		//dbg($vals);
		$obj_block_table=sst_get_by_id($block_id,$block_table);
		if($obj_block_table->default_pack_id && $i>0){//block has its own default pack so we should use it
			sst_create_pack_order('delete');
		}//has not it default pack so we should use its upper level
		$obj_block = sst_get_by_id($block_id,$block_table);
		if(!$obj_block->extra){
			//dbg($block_id);
			if(empty($unigue_extra)){
				//dbg($vals);
				$blocks .= sst_create_block($obj_block,$vals,NULL);
			}else{
				//dbg($vals);
				//echo '<h2> norm : ';dbg($obj_block->the_id);echo ' : '.end($unigue_extra).'['.$obj_block->the_id.'][0]</h2>';				
				$blocks .= sst_create_block($obj_block, $vals,end($unigue_extra).'['.$obj_block->the_id.'][0]');
			}
		}else{//has extra
			static $extra_blocks_array;
			if(!isset($extra_blocks_array)){
				$extra_blocks_array = array();	
			}
			$freq = array_count_values($extra_blocks_array);
			if(2>$freq[$obj_block->the_id]){
				if($freq[$obj_block->the_id]==0){
					static $unigue_extra;
					$unigue_extra[] = @end($unigue_extra).'['.$obj_block->the_id.'][1]';
					//$unigue_extra[] = rand(1000,10000000);
					$extra_blocks_array[] = $obj_block->the_id;
					//echo '<h2> ext : ';dbg($obj_block->the_id);echo ' : '.end($unigue_extra).'</h2>';
					$blocks .= sst_create_head_extra($obj_block,end($unigue_extra),$unigue_extra[count($unigue_extra)-2]);
				}
				$unigue_extra[count($unigue_extra)-1] = substr(end($unigue_extra),0,strlen(end($unigue_extra))-3).'[0]';
				//echo '<h2> norm : ';dbg($obj_block->the_id);echo ' : '.end($unigue_extra).'</h2>';
				$blocks .= sst_create_block($obj_block,$vals,end($unigue_extra));
				array_pop($extra_blocks_array);
				$blocks .= sst_create_end_extra(end($unigue_extra));
				array_pop($unigue_extra);
			}
		}
		$i++;
	}
	if(DEBUG){
		echo 'End sst_create_blocks<br />';
	}
	return $blocks;
}
