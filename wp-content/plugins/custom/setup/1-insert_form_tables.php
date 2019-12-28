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
        $GLOBALS[ 'sst_custom' ][ 'country' ]  = $this->full_prefix . 'country';
    }
	
    function insert_tables() {
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'country' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`accept` VARCHAR(255) NOT NULL COMMENT 'Values:has been removed from HTML5 instead use it in your input'," .
        "`accept_charset` VARCHAR(255) NOT NULL COMMENT 'A space- or comma-delimited list of character encodings that the client accepts.Including:ASCII,ANSI,Unicode,UTF-8,UTF-16,UTF-32,UNKNOWN is reserved.Note:In previous versions of HTML, the different character encodings could be delimited by spaces or commas. In HTML5, only spaces are allowed as delimiters.'," .
        "`action` VARCHAR(255) NOT NULL COMMENT 'The URI of a program that processes the form information'," .
        "`autocapitalize` VARCHAR(255) NOT NULL COMMENT 'This is a nonstandard attribute used by iOS Safari Mobile. Valuse:none,sentences,words,characters,on,off.Note on,off in ios 5 is deprecated'," .
        "`autocomplete` VARCHAR(255) NOT NULL COMMENT 'Values:one,off'," .
        "`enctype` VARCHAR(255) NOT NULL COMMENT 'Values:application/x-www-form-urlencoded,multipart/form-data,text/plain'," .
        "`method` VARCHAR(255) NOT NULL COMMENT 'Values:post,get,dialog. Note dialog is needed form enclosed by <dialog> tag'," .
        "`name` VARCHAR(255) NOT NULL," .
        "`novalidate` VARCHAR(255) NOT NULL COMMENT 'This Boolean attribute indicates that the form is not to be validated when submitted'," .
        "`target` VARCHAR(255) NOT NULL COMMENT 'Values:_self,_blank,_parent,_top'," .
		"`attr_html_global_id` VARCHAR(255) NOT NULL," .
        "`attr_custom_ids` VARCHAR(255) NOT NULL," .
        "`show_first` VARCHAR(255) NOT NULL," .
        "`show_second` VARCHAR(255) NOT NULL," .
        "`show_third` VARCHAR(255) NOT NULL," .
        "`input_ids` VARCHAR(255) NOT NULL," .
        "`block_ids` VARCHAR(255) NOT NULL," .
        "`fieldset_ids` VARCHAR(255) NOT NULL," .
        "`tag_id` VARCHAR(255) NOT NULL," .
        "`access_id` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		global $wpdb;
        $this->create_tables( $sql );
    }
}