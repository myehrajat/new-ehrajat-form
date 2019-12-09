<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_fieldset_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
        $this->insert_tables();
    }

    function table_names() {
        $GLOBALS[ 'sst_tables' ][ 'fieldset' ]  = $this->full_prefix . 'fieldset';
        $GLOBALS[ 'sst_tables' ][ 'legend' ]  = $this->full_prefix . 'legend';
    }

    function insert_tables() {
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'fieldset' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`disabled` VARCHAR(255) NOT NULL," .
        "`form` VARCHAR(255) NOT NULL," .
        "`name` VARCHAR(255) NOT NULL," .
        "`attr_html_global_id` VARCHAR(255) NOT NULL," .
        "`attr_custom_ids` VARCHAR(255) NOT NULL," .
        "`legend_id` VARCHAR(255) NOT NULL," .
        "`input_ids` VARCHAR(255) NOT NULL," .
        "`block_ids` VARCHAR(255) NOT NULL," .
        "`fieldset_ids` VARCHAR(255) NOT NULL," .
        "`tag_id` VARCHAR(255) NOT NULL," .
        "`access_id` VARCHAR(255) NOT NULL," .
        "`extra` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'legend' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`text` VARCHAR(255) NOT NULL," .
        "`attr_html_global_id` VARCHAR(255) NOT NULL," .
        "`attr_custom_ids` VARCHAR(255) NOT NULL," .
        "`tag_id` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        $this->create_tables( $sql );
    }
}