<?php
function sst_create_id($obj_input,$force_generate=false){
	if(!empty($obj_input->the_id)){
		$ids = explode(',',$obj_input->the_id);//this is not numbering delimited
		$id_att = ' id="';
		foreach($ids as $id){
			$id_att .= trim($id).' ';
		}
		$id_att = rtrim($id_att);
		$id_att .= '" ';
	}elseif($force_generate==true){
		$id_att = ' id="';
		$id_att .= uniqid();
		$id_att .= '" ';
	}
	return $id_att;
}
