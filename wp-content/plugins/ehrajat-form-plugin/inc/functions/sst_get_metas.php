<?php

function sst_get_metas($obj_standard){
	global $mode,$standard_meta_table;
	//dbg($obj_standard->meta_ids);
	
		if($obj_standard->meta_ids){
			$meta_ids = get_ids($obj_standard->meta_ids);
			//dbg($meta_ids);
			foreach($meta_ids as $meta_id){
				$obj_meta = sst_get_by_id($meta_id,$standard_meta_table);
				//dbg($obj_meta);
				$metas[$obj_meta->attribute] = htmlentities($obj_meta->value);
			}
		}
	return $metas;
}





