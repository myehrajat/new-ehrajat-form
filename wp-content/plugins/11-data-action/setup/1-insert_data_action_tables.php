<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_data_action_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
        $this->insert_tables();
    }

    function table_names() {
        $GLOBALS[ 'sst_tables' ][ 'data_action' ]  = $this->full_prefix . 'data_action';
        $GLOBALS[ 'sst_tables' ][ 'data_action_colval' ]  = $this->full_prefix . 'data_action_colval';
    }
	
    function insert_tables() {
		//krm('aaaaa');
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) default NULL," .
        "`slug` VARCHAR(255) default NULL," .
		"`table` VARCHAR(255) NOT NULL," .
        "`colval_ids` VARCHAR(255) NOT NULL," .
        "`default_file_path` VARCHAR(255) default NULL," .
        "`duplicate_check` VARCHAR(255) default NULL," .
        "`insert_ref` VARCHAR(255) default NULL," .
        "`func_before` VARCHAR(255) default NULL," .
        "`func_after` VARCHAR(255) default NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_colval' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
		"`type` VARCHAR(255) NOT NULL," .
        "`column` VARCHAR(255) NOT NULL," .
        "`value` VARCHAR(255) NOT NULL," .
        "`file_path` VARCHAR(255) default NULL," .
        "`ref_parsed_value` VARCHAR(255) default NULL," .
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