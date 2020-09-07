<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_input_related_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
        $this->insert_tables();
    }

    function table_names() {
        $GLOBALS[ 'sst_tables' ][ 'input_meta' ] = $this->full_prefix . 'input_meta';
        $GLOBALS[ 'sst_tables' ][ 'options' ] = $this->full_prefix . 'options';
        $GLOBALS[ 'sst_tables' ][ 'tags' ] = $this->full_prefix . 'tags';
        $GLOBALS[ 'sst_tables' ][ 'user_access' ] = $this->full_prefix . 'user_access';
        $GLOBALS[ 'sst_tables' ][ 'variable' ] = $this->full_prefix . 'variable';
        $GLOBALS[ 'sst_tables' ][ 'attr_changer_condition' ] = $this->full_prefix . 'attr_changer_condition';
        $GLOBALS[ 'sst_tables' ][ 'attr_changer' ] = $this->full_prefix . 'attr_changer';
    }

    function insert_tables() {
		global $wpdb;

		##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'input_meta' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) DEFAULT NULL," .
        "`slug` VARCHAR(255) DEFAULT NULL," .
        "`key` VARCHAR(255) DEFAULT NULL," .
        "`value` LONGTEXT DEFAULT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'options' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) DEFAULT NULL," .
        "`slug` VARCHAR(255) DEFAULT NULL," .
        "`key` VARCHAR(255) DEFAULT NULL," .
        "`value` LONGTEXT DEFAULT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'tags' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) DEFAULT NULL," .
        "`slug` VARCHAR(255) DEFAULT NULL," .
        "`tag_before` VARCHAR(255) DEFAULT NULL," .
        "`tag_after` VARCHAR(255) DEFAULT NULL," .
        "`parent_tag_id` VARCHAR(255) DEFAULT NULL," .
        "`description` LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'user_access' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`default_show_or_hide` VARCHAR(255) NOT NULL," .
        "`except_show_or_hide` VARCHAR(255) NOT NULL," .
        "`default_enable_or_disable` VARCHAR(255) NOT NULL," .
        "`except_enable_or_disable` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        $this->create_tables( $sql );
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'variable' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) DEFAULT NULL," .
        "`slug` VARCHAR(255) DEFAULT NULL," .
        "`name` VARCHAR(255) NOT NULL," .
        "`value` LONGTEXT NOT NULL," .
        "`description` LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        $this->create_tables( $sql );
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_changer_condition' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) DEFAULT NULL," .
        "`slug` VARCHAR(255) DEFAULT NULL," .
        "`condition_type` VARCHAR(255) DEFAULT NULL," .
        "`condition` LONGTEXT NOT NULL COMMENT 'Conditions must be in javascript code rules and to get value of xxx input use {name:xxx} and if to use self assigned use {self} if you assigned the condition to this abc named input using {name:abc} and same have the same result!'," .
        "`attr_changer_ids` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        $this->create_tables( $sql );
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_changer' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) DEFAULT NULL," .
        "`slug` VARCHAR(255) DEFAULT NULL," .
        "`input_ids` VARCHAR(255) NOT NULL COMMENT 'Make any change you want before redending input in input_data you only need change $ input_data it will return it automatically'," .
        "`block_ids` VARCHAR(255) NOT NULL COMMENT 'Make any change you want before redending block in block_data you only need change $ block_data it will return it automatically'," .
        "`fieldset_ids` VARCHAR(255) NOT NULL COMMENT 'Make any change you want before redending fieldset in fieldset_data you only need change $ fieldset_data it will return it automatically'," .
        "`attr` VARCHAR(255) NOT NULL," .
		"`value` VARCHAR(255) NOT NULL," .
		"`remove_attr` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        $this->create_tables( $sql );
    }
}