<?php
function sst_create_text($obj_label){//addextra
	if(DEBUG){
		echo 'sst_create_text<br />';
	}
	$text .= sst_create_pack($obj_label,'text','pre');
	$text .= '<label>'.$obj_label->text.'</label>';
	$text .= sst_create_pack($obj_label,'text','post');
	if(DEBUG){
		echo 'End sst_create_text<br />';
	}
	return $text;
}

