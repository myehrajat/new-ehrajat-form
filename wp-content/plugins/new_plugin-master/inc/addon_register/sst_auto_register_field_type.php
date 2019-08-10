<?php
/**************************************************
*version 1.0.0
*this for process of creating inputs
**************************************************/

/*
registerig field types
Note:addon field type need $sst declration
*/
sst_glob_includer(ADDON_REGISTER_PATH.'inc/');
function sst_auto_register_field_type(){
	global $type_table;
	$common_class = new common;
	$addons = glob(ADDON_PATH.'*', GLOB_ONLYDIR);
	foreach($addons as $addon){
		$addon_files = glob($addon.'/*.php');
		if($addon_files){
			foreach($addon_files as $addon_file){
				include_once($addon_file);
				if(isset($sst)){
					//checking is it before registered
					if(check_is_in_table(array('function'=>$sst['function']),$GLOBALS['sst_tables']['input_type'])===false){
						sst_register_field_type($sst['html_type'],$sst['type'],$sst['function'],$sst['epithet'],$sst['description'],$sst['slug'],$sst['owner'],$sst['id']);
					}
					unset($sst);
				}
			}
		}
	}
}
/**************************************************
 *version 1.0.0
 *this for process of creating inputs
 **************************************************/
function sst_register_field_type(string $html_type,string $type,$function,$epithet=NULL,$description=NULL,$slug=NULL,$owner=NULL,$id=NULL){
	return sst_add_to_table( $GLOBALS['sst_tables']['input_type'], array( 'id'=>$id, 'epithet'=>$epithet, 'slug'=>$slug, 'html_type'=>$html_type, 'type'=>$type, 'function'=>$function,  'description'=>$description, 'owner'=>$owner, 'created'=>date('Y-m-d H:i:s'), 'modified'=>date('Y-m-d H:i:s')));
}

//run if plugin because register_activation_hook in first activation initiate and we must after creating tables run this fucntion 
if(IS_PLUGIN_ACTIVE){
	sst_auto_register_field_type( );
}

