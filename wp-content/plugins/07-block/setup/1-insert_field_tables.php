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
    $GLOBALS[ 'sst_tables' ][ 'block' ] = $this->full_prefix . 'block';
  }

  function insert_tables() {
    global $wpdb;
    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'block' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) DEFAULT NULL," .
    "`slug` VARCHAR(255) DEFAULT NULL," .
    "`show_first` VARCHAR(255) DEFAULT NULL," .
    "`show_second` VARCHAR(255) DEFAULT NULL," .
    "`show_third` VARCHAR(255) DEFAULT NULL," .
    "`input_ids` VARCHAR(255) DEFAULT NULL," .
    "`fieldset_ids` VARCHAR(255) DEFAULT NULL," .
    "`block_ids` VARCHAR(255) DEFAULT NULL," .
    "`tag_id` VARCHAR(255) DEFAULT NULL," .
    "`access_id` VARCHAR(255) DEFAULT NULL," .
    "`extra` VARCHAR(255) DEFAULT NULL," .
    "`attr_changer_condition_ids` VARCHAR(255) DEFAULT NULL," .
    "`description` LONGTEXT DEFAULT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
    $this->create_tables( $sql );
  }
}