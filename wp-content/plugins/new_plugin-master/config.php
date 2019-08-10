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
/*common folder function path*/
define('COMMON_PATH',__DIR__.'/inc/commons/');
/*debugging folder function path*/
define('DEBUG_PATH',__DIR__.'/inc/debugging/');
/*creators folder function path*/
define('CREATOR_PATH',__DIR__.'/inc/creators/');
/*addon_register folder function path*/
define('ADDON_REGISTER_PATH',__DIR__.'/inc/addon_register/');
define('ADDON_PATH',__DIR__.'/addon/');
define('IS_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));

#############################################
# Debugging & Logging Settings
#############################################
/*show some data for debuging and permit logging error*/
define('DEBUG',false);
define('LOGGING',true);
define('DEBUG_ERROR_LOG',DEBUG_PATH.'error.log');
require_once( PLUGIN_PATH.'inc/text/errors.php');

#############################################
# Database Configuration
#############################################
//prevent on activation error
global $wpdb;
/*prefix for database tables it will append wp db prefix*/
define('DBPREFIX','tt_');
/*by overriding we ignore your wpdb settings*/
define('OVERRIDE_CHARSET','true');
define('CHARSET','utf8');
/*by overriding we ignore your wpdb settings*/
define('OVERRIDE_COLLATION','true');
define('COLLATION','utf8_general_ci');
/*GLOBALS['sst_tables'] will be set*/
/* drop all core tables on deactivation*/
##### FALSE IS RECOMMENDED ####
define('DROP_ON_DEACTIVATION','false');
/* drop vals core tables on deactivation it like a backup of you inputs*/
##### FALSE IS STRONGLY RECOMMENDED ####
define('DONT_DROP_VALS','false');
##### ALLOW TO SHOW WPDB QUERY ERRORS ####
$wpdb->show_errors = true;

#############################################
# MISC
#############################################
/* autofix mistyped ids eg make 1,2-5,zz-3,13id,mocl to 1,2-5,-3,13 */
##### TRUE IS STRONGLY RECOMMENDED ####
define('STRICT_VALID_IDS','true');

require_once( DBPATH.'table_names.php');



