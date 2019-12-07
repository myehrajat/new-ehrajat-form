<?php
/**
 * Plugin Name:ehrajat 8 fieldset functionality
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
define( 'FIELDSET_PLUGIN_PATH', __DIR__ . '/' );
define( 'FIELDSET_PLUGIN_FILE', basename( __FILE__ ) );
define('FIELDSET_FUNC_PATH',__DIR__.'/fieldset/');
define('FIELDSET_SETUP_PATH',__DIR__.'/setup/');
define('FIELDSET_CONTROLLER_POSITION','after');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
glob_includer(FIELDSET_SETUP_PATH);
new insert_fieldset_tables;
glob_includer(FIELDSET_FUNC_PATH);
