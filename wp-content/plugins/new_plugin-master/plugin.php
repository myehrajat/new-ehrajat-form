<?php
/**
 * Plugin Name: new Form
 * Plugin URI: http://ehrajat.com
 * Description: make and manage forms easily
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
 define('PLUGIN_FILE',basename(__FILE__));

require_once('config.php');

/*create tables*/
require_once(PLUGIN_PATH.'sst_glob_includer.php');
sst_glob_includer(DBPATH);

register_activation_hook( __FILE__, 'sst_do_on_activation_database' );
register_deactivation_hook( __FILE__, 'sst_drop_tables' );

//include all files inside DEBUG_PATH defined in config.php
sst_glob_includer(DEBUG_PATH);
//include all files inside COMMON_PATH defined in config.php
sst_glob_includer(COMMON_PATH);

//include all files inside CREATOR_PATH defined in config.php NOTE:some order needed so we order it in its folder
sst_glob_includer(ADDON_REGISTER_PATH);

//include all files inside CREATOR_PATH defined in config.php
sst_glob_includer(CREATOR_PATH);
$global_attr = new global_attr ;

$global_attr->sst_create_attr_html_global(1);
//die;

//sst_text( 1 );