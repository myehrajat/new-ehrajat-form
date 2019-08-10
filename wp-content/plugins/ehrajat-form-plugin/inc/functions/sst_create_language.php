<?php
function sst_create_language($language_id){
	if(DEBUG){
		echo 'sst_create_language<br />';
	}
	global $language_table;
	if($language_id){
		$obj_language = sst_get_by_id($language_id,$language_table);
		//dbg($obj_language);
		if($obj_language->language){
			$language .= ' lang="'.$obj_language->language.'" ';
		}
		if($obj_language->direction){
			$language .= 'dir="'.$obj_language->direction.'" ';
		}
		if(DEBUG){
			echo 'End sst_create_language<br />';
		}
	}
	return $language;
}
