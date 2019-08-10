<?php

function sst_create_meta($meta_id){
	global $mode,$standard_meta_table;
	$obj_meta = sst_get_by_id($meta_id,$standard_meta_table);
	//dbg($obj_meta);
	//dbg($standard_meta_table);
	//dbg($meta_id);
		if($obj_meta){
			$meta = ' '.$obj_meta->attribute.'="'.htmlentities($obj_meta->value).'" ';
		}else{
			echo 'ERROR# STANDARD META ID<br />';
		}
	return $meta;
}





