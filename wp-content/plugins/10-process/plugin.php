<?php
/**
 * Plugin Name:ehrajat 10 process functionality
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
#############################################
# SYSTEM AND FILE
#############################################
define( 'PROCESS_PLUGIN_PATH', __DIR__ . '/' );
define( 'PROCESS_PLUGIN_FILE', basename( __FILE__ ) );
define('PROCESS_FUNC_PATH',__DIR__.'/process/');
define('PROCESS_SETUP_PATH',__DIR__.'/setup/');
define('PROCESS_PLUGIN_URL',plugin_dir_url( __FILE__ ));
define('PROCESS_BY_GET_URL',PROCESS_PLUGIN_URL.'process_by_get.php');
define('PROCESS_MODAL_BUTTON','<span style="color:green;"><strong>Add New</strong></span>');
define('PROCESS_MODAL_DEFAULT_TITLE','Add New');


define('PROCESS_COMPRESS_VALS',false);
define('PROCESS_RECORD_ID_KEYWORD','record_id');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################

glob_includer(PROCESS_SETUP_PATH);
new insert_process_tables;
glob_includer(PROCESS_FUNC_PATH);
define('PROCESS_ID_KEYWORD','pr');

