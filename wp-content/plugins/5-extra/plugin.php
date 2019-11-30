<?php
/**
 * Plugin Name:ehrajat 5 extra functionality
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
define( 'EXTRA_PLUGIN_PATH', __DIR__ . '/' );
define( 'EXTRA_PLUGIN_FILE', basename( __FILE__ ) );
define('EXTRA_FUNC_PATH',__DIR__.'/extra/');
define('EXTRA_PLUGIN_ADD_ICON_URL',plugin_dir_url( __FILE__ ).'add.png');
define('EXTRA_PLUGIN_REMOVE_ICON_URL',plugin_dir_url( __FILE__ ).'remove.png');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
glob_includer(EXTRA_FUNC_PATH);
