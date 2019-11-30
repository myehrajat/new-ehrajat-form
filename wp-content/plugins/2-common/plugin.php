<?php
/**
 * Plugin Name: ehrajat 2 common functionality
 * Plugin URI: http://ehrajat.com
 * Description: make and manage forms easily
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
plugin_load_order(__FILE__);
 define('COMMON_PLUGIN_PATH',__DIR__.'/');
 define('COMMON_PLUGIN_FILE',basename(__DIR__));
/*common folder function path*/
define('COMMON_FUNC_PATH',__DIR__.'/common/');

/**************************************************
*version 1.0.0
*this function is for including all php files in a single folder
**************************************************/
function glob_includer($path){
	$files = glob($path.'*.php');
	foreach($files as $file){
		include_once($file);
	}
}
/*******************/
#############################################
# Database Configuration
#############################################
//prevent on activation error
global $wpdb;
/*prefix for database tables it will append wp db prefix*/
define('DBPREFIX','tt_');
/*by overriding we ignore your wpdb settings*/
define('OVERRIDE_CHARSET',True);
define('CHARSET','utf8');
/*by overriding we ignore your wpdb settings*/
define('OVERRIDE_COLLATION',True);
define('COLLATION','utf8_general_ci');
/*GLOBALS['sst_tables'] will be set*/
/* drop all core tables on deactivation*/
##### FALSE IS RECOMMENDED ####
define('DROP_ON_DEACTIVATION', False);
/* drop vals core tables on deactivation it like a backup of you inputs*/
##### FALSE IS STRONGLY RECOMMENDED ####
define('DONT_DROP_VALS', True );
##### ALLOW TO SHOW WPDB QUERY ERRORS ####
$wpdb->show_errors = True;




/*******************/
glob_includer(COMMON_FUNC_PATH);