<?php
/**
 * Plugin Name:ehrajat 9 form functionality
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
define( 'FORM_PLUGIN_PATH', __DIR__ . '/' );
define( 'FORM_PLUGIN_FILE', basename( __FILE__ ) );
define('FORM_FUNC_PATH',__DIR__.'/form/');
define('FORM_SETUP_PATH',__DIR__.'/setup/');
define('FORM_CONTROLLER_POSITION','after');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
define('FORM_SHOW_FIRST','input');
define('FORM_SHOW_SECOND','block');
define('FORM_SHOW_THIRD','fieldset');

glob_includer(FORM_SETUP_PATH);
new insert_form_tables;
glob_includer(FORM_FUNC_PATH);

