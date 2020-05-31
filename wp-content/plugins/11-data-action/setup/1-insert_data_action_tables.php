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
        $GLOBALS[ 'sst_tables' ][ 'data_action_sms' ]  = $this->full_prefix . 'data_action_sms';
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
        "`single_func_before` LONGTEXT NOT NULL COMMENT 'Run only one time after all insert has done.Work only on this->vals data no shortcode supported the differene with single_func_after is that its vals can be changed before insertion even autogenerated data which start with __sst__'," .
        "`single_func_after` LONGTEXT NOT NULL COMMENT 'Run only one time befor any insert has done.Work only on this->vals data no shortcode supported. Note that this will not affect data on insertion and autogenerated data which start with __sst__ is not available more'," .
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
        "`multiple_func_before` LONGTEXT NOT NULL COMMENT 'Run after every time insert has done .Support this formats {insert_id}=>return insertid and {data_value:column_name}=>return value of single dbdata and {data_column:column_name}=>return column name of single dbdata and {array:column_name}=>return array of grouped value extra in extra and {vals:column_name}=>return value of column_name (It seems like {data_value:column_name} and {data_column:column_name} is unuseful but be aware that this are created for html results and replace applied after insertion used for function_after and html result only)'," .
        "`multiple_func_after` LONGTEXT NOT NULL COMMENT 'Run before every time insert has done.Support this formats {array:column_name}=>return array of grouped value extra in extra and {vals:column_name}=>return value of column_name (i dont know but i think its like to{data_value:column_name})'," .
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
        "`multiple_func_before` LONGTEXT NOT NULL COMMENT 'Run after every time an email send'," .
        "`multiple_func_after` LONGTEXT NOT NULL COMMENT 'Run before every time an email send'," .
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
        "`multiple_func_before` LONGTEXT NOT NULL COMMENT 'Run after every time an sms send'," .
        "`multiple_func_after` LONGTEXT NOT NULL COMMENT 'Run before every time an sms send'," .
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
        "`multiple_func_before` LONGTEXT NOT NULL COMMENT 'Run after every time a web request send'," .
        "`multiple_func_after` LONGTEXT NOT NULL COMMENT 'Run before every time a web request send'," .
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
        "`multiple_func_before` LONGTEXT NOT NULL COMMENT 'Run after every time a file generate'," .
        "`multiple_func_after` LONGTEXT NOT NULL COMMENT 'Run before every time a file generate'," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_colval' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
		"`type` VARCHAR(255) NOT NULL," .
        "`column` VARCHAR(255) NOT NULL COMMENT 'Types can be simple-variable|variable or function|ecode or code|ecode-group-before or code-group-before or ecode-group or code-group|ecode-group-after or code-group-after|temp|file|mysql-code'," .
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