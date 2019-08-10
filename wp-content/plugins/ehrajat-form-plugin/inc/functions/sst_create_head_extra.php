<?php

function sst_create_head_extra($obj_block,$unigue_extra,$called_by){
	//dbg('ex : '.$called_by);
	//dbg($unigue_extra);
	include_once(sst_get_option('addRemoveElements_path').'\include_all.php');
	$addRemoveElements_icon_width = sst_get_option('addRemoveElements_icon_width');
	$addRemoveElements_icon_height = sst_get_option('addRemoveElements_icon_height');
	$extra_counter = 'sst_extra_counter'.substr($unigue_extra,'0',strlen($unigue_extra)-3).'[0]';//hiddenCounterId; 
	$extra_container = 'sst_extra_containter'.substr($unigue_extra,'0',strlen($unigue_extra)-3).'[0]';
	//if(substr($unigue_extra,strlen($unigue_extra)-3,strlen($unigue_extra)-1)==1)
	//$extra_container_val = substr($unigue_extra,'0',strlen($unigue_extra)-3).'['."'+document.getElementById('". $extra_counter ."').value+".'\']';
	//$extra_container .= $extra_container_val;
	$extra_block .= '<br /><img src="'.sst_get_option('addElements_icon').'" ';
	$extra_block .= 'width="'.$addRemoveElements_icon_width.'" ';
	$extra_block .= 'height="'.$addRemoveElements_icon_height.'" ';
	$extra_block .= 'onClick="addElement(';
	$extra_block .= $obj_block->max_extra.',';//maxExtra
	$extra_block .= '\''.$extra_counter.'\',';
	$extra_block .= '\''.$extra_container.'\',';//containerId
	$extra_block .= '\''.addslashes(htmlentities(sst_create_block($obj_block,$vals,$unigue_extra/*rand(1,10)*/))).'\',';//value
	//$extra_block .= '\''.addslashes(str_replace('"','sst_quot',sst_create_block($block_id,'extra'))).'\'';//value
	$extra_block .= '\'<sst_extra_block>\',';
	$extra_block .= '\''.$called_by.'\'';//containerId
	$extra_block .= ');">';
	$extra_block .= '<img src="'.sst_get_option('removeElements_icon').'" ';
	$extra_block .= 'width="'.$addRemoveElements_icon_width.'" ';
	$extra_block .= 'height="'.$addRemoveElements_icon_height.'"';
	$extra_block .= ' onClick="removeElement(';
	$extra_block .= '\''.$extra_counter.'\',';
	$extra_block .= '\''.$extra_container.'\'';//containerId
	$extra_block .= ');"';
	$extra_block .= '>';
	return $extra_block;
	//echo '<textarea>'.$extra_block.'</textarea>';
}
