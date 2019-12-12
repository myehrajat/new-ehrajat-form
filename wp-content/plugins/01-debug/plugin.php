<?php
/**
 * Plugin Name: ehrajat 1 debug functionality
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
//not work
function plugin_load_order($__FILE__){
	/*
	//$path = str_replace( WP_PLUGIN_DIR . '/', '', $__FILE__ );
	$path_segments = explode('\\',$__FILE__);

	$last_key = count($path_segments)-1;
	$path = $path_segments[$last_key-1].'/'.$path_segments[$last_key];
			dbg($path);

	if ( $plugins = get_option( 'active_plugins' ) ) {
		if ( $key = array_search( $path, $plugins ) ) {
			array_splice( $plugins, $key, 1 );
			$plugins[] = $path;
			update_option( 'active_plugins', $plugins );
		}
	}
	*/
}
plugin_load_order(__FILE__);
/*
use if($GLOBALS['plugins_loaded']==true){ to be sure all plugins loaded the do every thing
*/
 	define('DEBUG_PLUGIN_PATH',__DIR__.'/');
	define('DEBUG_PLUGIN_FILE',basename(__FILE__));
	/*debugging folder function path*/
	define('DEBUG_FUNC_PATH',__DIR__.'/debug/');
	define('DEBUG_PLUGIN_ASSET_URL',plugin_dir_url( __FILE__ ).'asset/');
	define('DEBUG_PLUGIN_ASSET_PATH',DEBUG_PLUGIN_PATH.'asset/');
#############################################
# Debugging & Logging Settings
#############################################
/*show some data for debuging and permit logging error*/
	define('DEBUG',false);
	define('LOGGING',true);
	define('DEBUG_ERROR_LOG',DEBUG_PLUGIN_PATH.'error.log');
	require_once(DEBUG_FUNC_PATH.'class-debug.php');
