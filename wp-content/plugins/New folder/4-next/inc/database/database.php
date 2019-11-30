<?php
/**************************************************
*version 1.0.0
*this function do everything about database all in one place
**************************************************/

function sst_do_on_activation_database(){
	/*you can change table names but never change keys of $tables*/
	require_once(DBPATH.'sst_create_tables.php');
	require_once(DBPATH.'sst_insert_languages.php');
}


