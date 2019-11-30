<?php
/**
 * Plugin Name:ehrajat mmmmmmmmmmm
 * Plugin URI: http://ehrajat.com
 * Description: make and manage forms easily
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
plugin_load_order(__FILE__);
if($GLOBALS['plugins_loaded']==true){
	
//new common;
//die;

require_once('config.php');

define('COMMON_PLUGIN_FOLDER',basename(__DIR__));
/*common folder function path*/
define('COMMON_INCLUDE_PATH',__DIR__.'/commons/');
/*debugging folder function path*/
require_once(COMMON_PLUGIN_PATH.'glob_includer.php');
glob_includer(COMMON_INCLUDE_PATH);

/*create tables*/
glob_includer(DBPATH);

register_activation_hook( __FILE__, 'sst_do_on_activation_database' );
register_deactivation_hook( __FILE__, 'sst_drop_tables' );

//include all files inside DEBUG_PATH defined in config.php
glob_includer(DEBUG_PATH);
//include all files inside COMMON_PATH defined in config.php

//include all files inside CREATOR_PATH defined in config.php NOTE:some order needed so we order it in its folder
glob_includer(ADDON_REGISTER_PATH);

//include all files inside CREATOR_PATH defined in config.php
glob_includer(CREATOR_PATH);
function test_inputs(){
	for ($x = 1; $x <= 23; $x++) {
		$input = new input($x);
		echo $input->render().'<br>';
	}
}
//$input = new input(1);
//echo $input->render().'<br>';
//die;

//sst_text( 1 );
}
