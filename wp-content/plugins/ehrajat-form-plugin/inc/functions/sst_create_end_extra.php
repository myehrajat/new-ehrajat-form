<?php

function sst_create_end_extra($unigue_extra){
	$extra_container = 'sst_extra_containter'.$unigue_extra;//containerId;
	$extra_counter = 'sst_extra_counter'.$unigue_extra;//hiddenCounterId;
	
	$end_extra .= '<input name="'.$extra_counter.'" type="hidden" value="0" />';
	$end_extra .= '<span id="'.$extra_container.'"></span>';
	return $end_extra;
}
