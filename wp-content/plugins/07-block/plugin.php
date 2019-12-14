<?php
/**
 * Plugin Name:ehrajat 07 block functionality
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
define( 'BLOCK_PLUGIN_PATH', __DIR__ . '/' );
define( 'BLOCK_PLUGIN_FILE', basename( __FILE__ ) );
define('BLOCK_FUNC_PATH',__DIR__.'/block/');
define('BLOCK_SETUP_PATH',__DIR__.'/setup/');
define('BLOCK_CONTROLLER_POSITION','after');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
define('BLOCK_SHOW_FIRST','input');
define('BLOCK_SHOW_SECOND','block');
define('BLOCK_SHOW_THIRD','fieldset');

define('GENERAL_SHOW_FIRST','input');
define('GENERAL_SHOW_SECOND','block');
define('GENERAL_SHOW_THIRD','fieldset');

glob_includer(BLOCK_SETUP_PATH);
new insert_block_tables;
glob_includer(BLOCK_FUNC_PATH);








