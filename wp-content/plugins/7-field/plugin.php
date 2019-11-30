<?php
/**
 * Plugin Name:ehrajat 7 field functionality
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
define( 'FIELD_PLUGIN_PATH', __DIR__ . '/' );
define( 'FIELD_PLUGIN_FILE', basename( __FILE__ ) );
define('FIELD_FUNC_PATH',__DIR__.'/field/');
define('FIELD_SETUP_PATH',__DIR__.'/setup/');
define('FIELD_CONTROLLER_POSITION','after');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
glob_includer(FIELD_SETUP_PATH);
new insert_field_tables;
glob_includer(FIELD_FUNC_PATH);
