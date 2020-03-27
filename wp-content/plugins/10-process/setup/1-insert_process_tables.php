<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_process_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
        $this->insert_tables();
    }

    function table_names() {
        $GLOBALS[ 'sst_tables' ][ 'process' ]  = $this->full_prefix . 'process';
        $GLOBALS[ 'sst_tables' ][ 'condition' ]  = $this->full_prefix . 'condition';
        $GLOBALS[ 'sst_tables' ][ 'vals' ]  = $this->full_prefix . 'vals';
    }
	
    function insert_tables() {
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'process' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
		"`form_id` VARCHAR(255) NOT NULL," .
        "`condition_ids` VARCHAR(255) NOT NULL," .
        "`data_action_ids` VARCHAR(255) NOT NULL," .			
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'condition' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
		"`function` LONGTEXT NOT NULL," .
		"`condition` VARCHAR(255) NOT NULL," .
        "`process_id` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";		
		global $wpdb;
        $this->create_tables( $sql );
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'vals' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`key` VARCHAR(255) NOT NULL UNIQUE," .
        "`value` MEDIUMBLOB NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";		
		global $wpdb;
        $this->create_tables( $sql );
    }
}