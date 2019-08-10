<?php


function sst_create_fields($field_ids,$vals=NULL,$unigue_extra=NULL){
	//global $vals;
	//dbg($vals);
	
	if(DEBUG){
		echo 'sst_create_fields<br />';
	}
	$field_ids = get_ids($field_ids);
	//dbg($field_ids);
	foreach($field_ids as $field_id){
		$fields .= sst_create_field($field_id,$vals,$unigue_extra);
	}
	if(DEBUG){
		echo 'End sst_create_fields<br />';
	}
	return $fields;
}

