<?php

function sst_auto_register_field_type(){
	global $type_table;
	//dbg(sst_get_plugin_directory().'/addon/*');
	$addons = glob(sst_get_plugin_directory().'/addon/*', GLOB_ONLYDIR);
	//dbg($addons);
	foreach($addons as $addon){
		//dbg($addon.'/*.php');
		$addon_files = glob($addon.'/*.php');
		//dbg($addon_files);
		if($addon_files){
			foreach($addon_files as $addon_file){
				include_once($addon_file);
				if(isset($sst)){
					//dbg($sst);
					if(sst_check_is_in_table(array('function'=>$sst['function']),$type_table)===false){
						sst_register_field_type($sst['type'],$sst['function'],$sst['epithet'],$sst['description'],$sst['slug'],$sst['owner'],$sst['id']);
					}
					unset($sst);
				}
			}
		}
	}
}