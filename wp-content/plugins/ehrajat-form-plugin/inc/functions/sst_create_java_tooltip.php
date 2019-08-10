<?php

function sst_create_java_tooltip($tooltip){
	if(DEBUG){
		echo 'sst_create_java_tooltip<br />';
	}
	$width = sst_get_option('tooltip_icon_width');
	$height = sst_get_option('tooltip_icon_height');
	$tooltip_image = sst_get_option('tooltip_icon');
	$tooltip = '<img src="'.$tooltip_image.'" width="'.$width.'" height="'.$height.'" alt="'.$tooltip.'">';
	if(DEBUG){
		echo 'End sst_create_java_tooltip<br />';
	}
	return $tooltip;
}
