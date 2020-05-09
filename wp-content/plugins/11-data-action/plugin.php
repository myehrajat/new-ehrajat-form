<?php
/**
 * Plugin Name:ehrajat 11 data-action functionality
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
define( 'DATA_ACTION_PLUGIN_PATH', __DIR__ . '/' );
define( 'DATA_ACTION_PLUGIN_FILE', basename( __FILE__ ) );
define('DATA_ACTION_FUNC_PATH',__DIR__.'/data-action/');
define('DATA_ACTION_SETUP_PATH',__DIR__.'/setup/');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
define('DATA_ACTION_DEFAULT_UPLOAD_PATH',$_SERVER['DOCUMENT_ROOT'] . "/images/");
define('CUSTOM_DB_PREFIX','');
glob_includer(DATA_ACTION_SETUP_PATH);
new insert_data_action_tables;
glob_includer(DATA_ACTION_FUNC_PATH);




