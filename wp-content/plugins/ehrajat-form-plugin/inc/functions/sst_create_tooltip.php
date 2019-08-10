<?php



function sst_create_tooltip($obj_label){//addextra
	if(DEBUG){
		echo 'sst_create_tooltip<br />';
	}
	$tooltip .= sst_create_pack($obj_label,'tooltip','pre');
	$tooltip.= sst_create_java_tooltip($obj_label->tooltip);
	$tooltip .= sst_create_pack($obj_label,'tooltip','post');
	if(DEBUG){
		echo 'End sst_create_tooltip<br />';
	}
	return $tooltip;
}
