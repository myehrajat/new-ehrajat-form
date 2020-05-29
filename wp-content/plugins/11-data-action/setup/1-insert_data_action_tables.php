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
        $GLOBALS[ 'sst_tables' ][ 'data_action_database' ]  = $this->full_prefix . 'data_action_database';
        $GLOBALS[ 'sst_tables' ][ 'data_action_mail' ]  = $this->full_prefix . 'data_action_mail';
        $GLOBALS[ 'sst_tables' ][ 'data_action_sms' ]  = $this->full_prefix . 'data_actio_sms';
        $GLOBALS[ 'sst_tables' ][ 'data_action_request' ]  = $this->full_prefix . 'data_action_request';
        $GLOBALS[ 'sst_tables' ][ 'data_action_file' ]  = $this->full_prefix . 'data_action_file';
        $GLOBALS[ 'sst_tables' ][ 'data_action_colval' ]  = $this->full_prefix . 'data_action_colval';
		$GLOBALS[ 'sst_tables' ][ 'vals' ] = $this->full_prefix . 'vals';
    }
	
    function insert_tables() {
		global $wpdb;
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) default NULL," .
        "`slug` VARCHAR(255) default NULL," .
        "`type` VARCHAR(255) default NULL," .
        "`type_id` VARCHAR(255) default NULL," .
		//"`table` VARCHAR(255) NOT NULL," .
        "`colval_ids` VARCHAR(255) NOT NULL," .
        "`default_file_path` VARCHAR(255) default NULL," .
        //"`duplicate_check` VARCHAR(255) default NULL," .
        //"`insert_ref` VARCHAR(255) default NULL," .
        "`func_before` VARCHAR(255) default NULL," .
        "`func_after` VARCHAR(255) default NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_database' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) default NULL," .
        "`slug` VARCHAR(255) default NULL," .
		"`table` VARCHAR(255) NOT NULL," .
        "`prevent_insert_rule` VARCHAR(255) default NULL ," .
        "`insert_ref` VARCHAR(255) default NULL," .
		"`added_result_html` LONGTEXT NOT NULL," .
		"`edited_result_html` LONGTEXT NOT NULL," .
		"`prevented_result_html` LONGTEXT NOT NULL," .
		"`database_error_result_html` LONGTEXT NOT NULL," .
		"`deleted_result_html` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_mail' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) default NULL," .
        "`slug` VARCHAR(255) default NULL," .
        "`recipient` VARCHAR(255) default NULL," .
        "`cc` VARCHAR(255) default NULL," .
        "`bcc` VARCHAR(255) default NULL," .
        "`replyto` VARCHAR(255) default NULL," .
		"`subject` VARCHAR(255) NOT NULL," .
		"`email_body` LONGTEXT NOT NULL," .
		"`alt_email_body` LONGTEXT NOT NULL," .
		"`attachments` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

		$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_sms' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) default NULL," .
        "`slug` VARCHAR(255) default NULL," .
        "`userName` VARCHAR(255) default NULL," .
        "`password` VARCHAR(255) default NULL," .
        "`from_number` VARCHAR(255) default NULL," .
        "`to_numbers` VARCHAR(255) default NULL," .
		"`message_body` LONGTEXT NOT NULL," .
		"`flash` VARCHAR(255) default NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		
		$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_request' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) default NULL," .
        "`slug` VARCHAR(255) default NULL," .
        "`method` VARCHAR(255) default NULL," .
        "`base_url` VARCHAR(255) default NULL," .
        "`uri` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		
		$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_file' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) default NULL," .
        "`slug` VARCHAR(255) default NULL," .
        "`body` LONGTEXT NOT NULL," .
        "`path_to_save` VARCHAR(255) default NULL," .
        "`extension` VARCHAR(255) default NULL," .
        "`lifetime` VARCHAR(255) default NULL," .
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
        "`input_name` VARCHAR(255) NOT NULL," .
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