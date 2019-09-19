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
/*
$global_attr = new global_attr(1) ;
$specific_attr = new specific_attr(2,'text') ;
$common_attr = new common_attr(1) ;
$ids = new ids('1-12,-2-3');

dbg($ids->ids[6]);
dbg($specific_attr);
dbg($global_attr);
dbg($common_attr);
*/
$global = new global_attr(1);
dbg($global->global_attr);
$specific = new specific_attr(1,'text');
dbg($specific->specific_attr);
$common = new common_attr(1);
dbg($common->common_attr);
$common = new custom_attr('1-2');
dbg($common->custom_attr);

$input_attr = new input_attr(1);
dbg($input_attr->attr);

$input = new input(2);
echo($input->input);
//dbg($input);

die;

//sst_text( 1 );

