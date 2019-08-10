<?php


function sst_create_metas($obj_standard){
	global $mode;
		if($obj_standard->meta_ids){
			$meta_ids = get_ids($obj_standard->meta_ids);
			foreach($meta_ids as $meta_id){
				$metas .= sst_create_meta($meta_id);
			}
		}
	return $metas;
}




