<?php
/**
 * Plugin Name:ehrajat 04 Access functionality
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
define( 'ACCESS_PLUGIN_PATH', __DIR__ . '/' );
define( 'ACCESS_PLUGIN_FILE', basename( __FILE__ ) );
define('ACCESS_FUNC_PATH',__DIR__.'/access/');
define('ACCESS_SETUP_PATH',__DIR__.'/setup/');
//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
define( 'DEFAULT_VIEW', 'enable' );
define( 'DEFAULT_EDIT', 'enable' );
define( 'DEFAULT_ADD', 'enable' );
glob_includer(ACCESS_SETUP_PATH);
new insert_access_tables;
glob_includer(ACCESS_FUNC_PATH);

//die;
//glob_includer(INPUT_ADDON_PATH);

/*addon_register folder function path*/
/**************************************************
*version 1.0.0
*this for process of creating inputs
**************************************************/

/*
registerig field types
Note:addon field type need $sst declration
*/
//run if plugin because register_activation_hook in first activation initiate and we must after creating tables run this fucntion 



//include all files inside CREATOR_PATH defined in config.php NOTE:some order needed so we order it in its folder
/*
function test_inputs() {
    for ( $x = 1; $x <= 23; $x++ ) {
        $input = new input( $x );
        echo $input->render() . '<br>';
    }
}
//$input = new input(1);
//echo $input->render().'<br>';
//die;

//sst_text( 1 );
