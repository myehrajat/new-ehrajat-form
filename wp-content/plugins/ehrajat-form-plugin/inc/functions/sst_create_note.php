<?php

function sst_create_note($obj_label){
	if(DEBUG){
		echo 'sst_create_note<br />';
	}
	$note .= sst_create_pack($obj_label,'note','pre',$extra);
	$note.= $obj_label->note;
	$note .= sst_create_pack($obj_label,'note','post'/*,$extra*/);
	if(DEBUG){
		echo 'End sst_create_note<br />';
	}
	return $note;
}
