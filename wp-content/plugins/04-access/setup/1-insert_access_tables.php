<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_access_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
        $this->insert_tables();
    }

    function table_names() {
        $GLOBALS[ 'sst_tables' ][ 'user_access' ] = $this->full_prefix . 'user_access';
    }

    function insert_tables() {
		global $wpdb;
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'user_access' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`default_view` VARCHAR(255) NOT NULL," .
        "`except_view` VARCHAR(255) NOT NULL," .
        "`default_edit` VARCHAR(255) NOT NULL," .
        "`except_edit` VARCHAR(255) NOT NULL," .
        "`default_add` VARCHAR(255) NOT NULL," .
        "`except_add` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        $this->create_tables( $sql );
    }
}