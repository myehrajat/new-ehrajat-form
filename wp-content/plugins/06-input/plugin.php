<?php
/**
 * Plugin Name:ehrajat 06 input functionality
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
define( 'INPUT_PLUGIN_PATH', __DIR__ . '/' );
define( 'INPUT_PLUGIN_FILE', basename( __FILE__ ) );
define('INPUT_FUNC_PATH',__DIR__.'/input/');
define('INPUT_SETUP_PATH',__DIR__.'/setup/');
define( 'INPUT_ADDON_PATH', __DIR__ . '/addon/' );
define('INPUT_AUTO_GENERATE_INPUT_ID','yes');
define('INPUT_PLUGIN_URL',plugin_dir_url( __FILE__ ));
define('INPUT_BY_GET_URL',INPUT_PLUGIN_URL.'input_by_get.php');

define('EXTRA_CONTROLLER_POSITION','after');

//define('IS_INPUT_PLUGIN_ACTIVE',in_array(PLUGIN_FOLDER.'/'.PLUGIN_FILE, apply_filters('active_plugins', get_option('active_plugins'))));
#############################################
# VISIBILTY
#############################################
glob_includer(INPUT_SETUP_PATH);
new insert_input_related_tables;
glob_includer(INPUT_FUNC_PATH);
new register_addon;
function data_decoder($data){
	return json_decode(base64_decode($data),true);
}
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
