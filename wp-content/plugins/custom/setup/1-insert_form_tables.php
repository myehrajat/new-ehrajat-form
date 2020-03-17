<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_custom_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
        $this->insert_tables();
    }

    function table_names() {
		global $wpdb;
        $GLOBALS[ 'sst_custom' ][ 'country' ]  = $wpdb->prefix .'custom_'. 'country';
    }
	
    function insert_tables() {
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'country' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`country` VARCHAR(255) NOT NULL," .
        "`save_id` VARCHAR(255) NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		global $wpdb;
        $this->create_tables( $sql );
    }
}
new insert_custom_tables;