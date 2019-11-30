<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/
#############################################
# SYSTEM AND FILE
#############################################
 define('PLUGIN_PATH',__DIR__.'/');
 define('PLUGIN_FOLDER',basename(__DIR__));
/*database folder function path*/
define('DBPATH',__DIR__.'/inc/database/');
/*creators folder function path*/
define('CREATOR_PATH',__DIR__.'/inc/creators/');
/*addon_register folder function path*/
define('ADDON_REGISTER_PATH',__DIR__.'/inc/addon_register/');
define('ADDON_PATH',__DIR__.'/addon/');
define('IS_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));



#############################################
# MISC
#############################################
/* autofix mistyped ids eg make 1,2-5,zz-3,13id,mocl to 1,2-5,-3,13 */
##### TRUE IS STRONGLY RECOMMENDED ####
define('STRICT_VALID_IDS','true');
define('EVAL_STR','%%E%%');

require_once( DBPATH.'table_names.php');
#############################################
# VISIBILTY
#############################################
define('DEFAULT_SHOW_OR_HIDE','hide');
define('DEFAULT_ENABLE_OR_DISABLE','disable');

