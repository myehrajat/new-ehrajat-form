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
        $GLOBALS[ 'sst_custom' ][ 'currency' ]  = $wpdb->prefix .'custom_'. 'currency';
        $GLOBALS[ 'sst_custom' ][ 'currency_rate' ]  = $wpdb->prefix .'custom_'. 'currency_rate';
        $GLOBALS[ 'sst_custom' ][ 'tax' ]  = $wpdb->prefix .'custom_'. 'tax';
    }
	
    function insert_tables() {
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'country' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`country` VARCHAR(255) NOT NULL," .
        "`flag` VARCHAR(255) NOT NULL," .
        "`desc` LONGTEXT DEFAULT NULL," .
        "`save_id` VARCHAR(255) NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		global $wpdb;
        $this->create_tables( $sql );

		$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'currency' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`country_id` VARCHAR(255) NOT NULL," .
        "`currency` VARCHAR(255) NOT NULL," .
        "`currency_sign` VARCHAR(255) NOT NULL," .
        "`currency_code` VARCHAR(255) NOT NULL," .
        "`currency_sign_position` VARCHAR(255) NOT NULL," .
        "`parent_currency_id` VARCHAR(255) NOT NULL," .
        "`parent_currency_ratio` VARCHAR(255) NOT NULL COMMENT 'How many of this currency make parent currency'," .
        "`desc` VARCHAR(255) NOT NULL," .
        "`save_id` VARCHAR(255) NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		global $wpdb;
        $this->create_tables( $sql );
		
		$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'currency_rate' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`base_currency_id` VARCHAR(255) NOT NULL," .
        "`exchanged_currency_id` VARCHAR(255) NOT NULL," .
        "`rate` VARCHAR(255) NOT NULL," .
        "`desc` VARCHAR(255) NOT NULL," .
        "`save_id` VARCHAR(255) NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		global $wpdb;
        $this->create_tables( $sql );
		
		$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'tax' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`tax_name` VARCHAR(255) NOT NULL," .
        "`rate` VARCHAR(255) NOT NULL," .
        "`type` VARCHAR(255) NOT NULL COMMENT 'inclusive(vat)/exlusive(without vat)/compund/fixed/normal'," .
        "`desc` VARCHAR(255) NOT NULL," .
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