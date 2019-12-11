<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_block_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
        $this->insert_tables();
    }

    function table_names() {
        $GLOBALS[ 'sst_tables' ][ 'block' ]  = $this->full_prefix . 'block';
    }

    function insert_tables() {
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'block' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`show_first` VARCHAR(255) NOT NULL," .
        "`show_second` VARCHAR(255) NOT NULL," .
        "`show_third` VARCHAR(255) NOT NULL," .
        "`input_ids` VARCHAR(255) NOT NULL," .
        "`fieldset_ids` VARCHAR(255) NOT NULL," .
        "`block_ids` VARCHAR(255) NOT NULL," .
        "`tag_id` VARCHAR(255) NOT NULL," .
        "`access_id` VARCHAR(255) NOT NULL," .
        "`extra` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        $this->create_tables( $sql );
    }
}