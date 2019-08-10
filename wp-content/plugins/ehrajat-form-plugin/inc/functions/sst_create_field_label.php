<?php

function sst_create_field_label($label_id){//addextra
	if(DEBUG){
		echo 'sst_create_field_label<br />';
	}
	global $label_table;
	$obj_label = sst_get_by_id($label_id,$label_table);
	
	if($obj_label){
		$label .= sst_create_pack($obj_label,'label','pre');
		$label .= sst_create_text($obj_label);
		$label .= sst_create_tooltip($obj_label);
		$label .= sst_create_note($obj_label);
		$label .= sst_create_pack($obj_label,'label','post'/*,$extra*/);
	}
	if(DEBUG){
		echo 'End sst_create_field_label<br />';
	}
	return $label;
}
