<?php
function sst_register_field_type($type,$function,$epithet=NULL,$description=NULL,$slug=NULL,$owner=NULL,$id=NULL){
	global $type_table;
	return sst_add_to_table($type_table,array('id'=>$id,'epithet'=>$epithet,'slug'=>$slug,'type'=>$type,'function'=>$function,'description'=>$description,'owner'=>$owner,'created'=>date('Y-m-d H:i:s'),'modified'=>date('Y-m-d H:i:s')));
}
