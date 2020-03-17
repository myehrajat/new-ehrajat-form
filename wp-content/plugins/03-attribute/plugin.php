<?php
/**
 * Plugin Name: ehrajat 03 attributes functionality
 * Plugin URI: http://ehrajat.com
 * Description: make and manage forms easily
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
/*
use this plugin in head of all plugin related to this to correctly load plugin for using its functionality
*/
plugin_load_order(__FILE__);
/*
use if($GLOBALS['plugins_loaded']==true){ to be sure all plugins loaded the do every thing
*/
	//NOT NEEDED BUT KEEP TO USE EVERY OTHER WHERE
	//define('IS_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));

 	define('ATTRIBUTE_PLUGIN_PATH',__DIR__.'/');
	define('ATTRIBUTE_PLUGIN_FILE',basename(__FILE__));
	/*debugging folder function path*/
	define('ATTRIBUTE_FUNC_PATH',__DIR__.'/attribute/');
	define('ATTRIBUTE_SETUP_PATH',__DIR__.'/setup/');
/*******************/
#############################################
# SHORTCODE
#############################################
define( 'EVAL_STR', '%%E%%' );
//set true for security reason don't use $GLOBALS[ 'vals' ] for password input values
define( 'ATTRIBUTE_PASSWORD_VALUE', 'yes' );


glob_includer(ATTRIBUTE_SETUP_PATH);
glob_includer(ATTRIBUTE_FUNC_PATH);
$setup = new insert_attribute_related_tables;
