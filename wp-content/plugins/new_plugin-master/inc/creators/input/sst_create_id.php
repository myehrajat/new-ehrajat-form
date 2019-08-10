<?php
/**************************************************
 *version 1.0.0
 *this function is for input id attributes
 **************************************************/
/*
force_generate param is for some field which need essintially id for operating eg:date time picker
*/
function sst_create_id($id_id,$force_generate=false){
	//ids may be comma delimited or may simply input delimited by space
	if(!empty($id_id)){
		//this is not numbering delimited its comma or space delimited
		$ids = explode(',',$id_id);
		$id_att = sst_create_attrs( 'id', $ids, false);
	}elseif($force_generate == true){
			$id_att = sst_create_attr( 'id', array(uniqid()), true);
	}
	return $id_att;
}
