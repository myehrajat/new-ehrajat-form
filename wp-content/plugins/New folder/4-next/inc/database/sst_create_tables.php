<?php
/**************************************************
 *version 1.0.0
 *this function create core tables
 **************************************************/

function sst_create_tables() {
	global $wpdb;

	##################################################
	require_once( DBPATH . '$this->collate_charset.php' );
	$this->collate_charset = $this->collate_charset();
		##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'options' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
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
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`tag_before` VARCHAR(255) NOT NULL," .
        "`tag_after` VARCHAR(255) NOT NULL," .
        "`parent_tag_id` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	
	/*
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'standard_db' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`table` VARCHAR(255) NOT NULL," .
	"`value_col` VARCHAR(255) NOT NULL," .
	"`value_function` LONGTEXT NOT NULL," .
	"`label_col` VARCHAR(255) NOT NULL," .
	"`label_function` LONGTEXT NOT NULL," .
	"`id_col` VARCHAR(255) NOT NULL," .
	"`id_function` LONGTEXT NOT NULL," .
	"`order` VARCHAR(255) NOT NULL," .
	"`where` VARCHAR(255) NOT NULL," .
	"`group` VARCHAR(255) NOT NULL," .
	"`having` VARCHAR(255) NOT NULL," .
	"`limit` VARCHAR(255) NOT NULL," .
	"`join` VARCHAR(255) NOT NULL," .
	"`custom_query` LONGTEXT NOT NULL," .
	"`next_id` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'standard_condition' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`operator` VARCHAR(255) NOT NULL," .
	"`value` VARCHAR(255) NOT NULL," .
	"`dependent_field_id` VARCHAR(255) NOT NULL," .
	"`dependent_select_option_ids` VARCHAR(255) NOT NULL," .
	"`dependent_standard_db_id` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'standard_meta' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`attribute` VARCHAR(255) NOT NULL," .
	"`value` LONGTEXT NOT NULL," .
	"`description` LONGTEXT NOT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'pack' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`pre` VARCHAR(255) NOT NULL," .
	"`post` VARCHAR(255) NOT NULL," .
	"`the_id` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'default_pack' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`form` VARCHAR(255) NOT NULL," .
	"`block` VARCHAR(255) NOT NULL," .
	"`field` VARCHAR(255) NOT NULL," .
	"`input` VARCHAR(255) NOT NULL," .
	"`label` VARCHAR(255) NOT NULL," .
	"`text` VARCHAR(255) NOT NULL," .
	"`note` VARCHAR(255) NOT NULL," .
	"`tooltip` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'label' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`text` VARCHAR(255) NOT NULL," .
	"`note` VARCHAR(255) NOT NULL," .
	"`tooltip` VARCHAR(255) NOT NULL," .
	"`appearance_id` VARCHAR(255) NOT NULL," .
	"`pack_id` VARCHAR(255) NOT NULL," .
	"`the_id`  VARCHAR(255) DEFAULT NULL," .
	"`default_pack_id`  VARCHAR(255) DEFAULT NULL," .
	"`description` LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'field' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`label_id_before` VARCHAR(255) NOT NULL," .
	"`label_id_after` VARCHAR(255) NOT NULL," .
	"`input_ids` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`extra` VARCHAR(255) NOT NULL," .
	"`max_extra` VARCHAR(255) NOT NULL," .
	"`appearance_id` VARCHAR(255) NOT NULL," .
	"`pack_id` VARCHAR(255) NOT NULL," .
	"`the_id`  VARCHAR(255) DEFAULT NULL," .
	"`default_pack_id`  VARCHAR(255) DEFAULT NULL," .
	"`show_to`  VARCHAR(255) DEFAULT NULL," .
	"`hide_from`  VARCHAR(255) DEFAULT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'block' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`field_ids` VARCHAR(255) NOT NULL," .
	"`block_ids` VARCHAR(255) NOT NULL," .
	"`required_field_ids` VARCHAR(255) NOT NULL," .
	"`extra` VARCHAR(255) NOT NULL," .
	"`max_extra` VARCHAR(255) NOT NULL," .
	"`appearance_id` VARCHAR(255) NOT NULL," .
	"`pack_id` VARCHAR(255) NOT NULL," .
	"`the_id`  VARCHAR(255) DEFAULT NULL," .
	"`default_pack_id` VARCHAR(255) DEFAULT NULL," .
	"`show_to` VARCHAR(255) DEFAULT NULL," .
	"`hide_from` VARCHAR(255) DEFAULT NULL," .
	"`description` LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'condition' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`condition` VARCHAR(255) DEFAULT NULL," . //else/the condition
	"`next_id` VARCHAR(255) DEFAULT NULL," .
	"`goto` VARCHAR(255) DEFAULT NULL," .
	"`value` LONGTEXT NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action_colval' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`type` VARCHAR(255) NOT NULL," . //constant/variable/code
	"`reference` VARCHAR(255) NOT NULL," . //the changed data will be saved in $ref['field_name']
	"`column` VARCHAR(255) NOT NULL," .
	"`value` LONGTEXT NOT NULL," .
	"`file_destination` LONGTEXT NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'data_action' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`type` VARCHAR(255) NOT NULL," . //all/all-unsaved/simple/extra-simple/option/extra-option
	"`insert_reference` VARCHAR(255) NOT NULL," . //
	"`table` VARCHAR(255) NOT NULL," .
	"`extra_special` VARCHAR(255) NOT NULL," . //a hidden field for checking that is there any extra for blocks or fields
	"`colval_ids` VARCHAR(255) NOT NULL," .
	"`default_file_destination` LONGTEXT NULL," .
	"`allow_duplicate` LONGTEXT NULL," . //check that the duplicate entry is allowed. 1=yes/0 or null=no
	"`func_before`  LONGTEXT DEFAULT NULL," .
	"`func_after`  LONGTEXT DEFAULT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'form' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`block_ids` VARCHAR(255) NOT NULL," .
	"`field_ids` VARCHAR(255) NOT NULL," .
	"`required_field_ids` VARCHAR(255) NOT NULL," .
	"`method` VARCHAR(255) NOT NULL," . //post/get
	"`name` VARCHAR(255) NOT NULL," .
	"`target` VARCHAR(255) NOT NULL," . //_top/_parent/_self/_new/_blank
	"`enctype` VARCHAR(255) NOT NULL," . //"multipart/form-data"/"application/x-www-form-urlencoded"/any other mime type
	"`action` VARCHAR(255) NOT NULL," .
	"`header` LONGTEXT NULL," .
	"`footer` LONGTEXT NULL," .
	"`data_action_ids` VARCHAR(255) NOT NULL," .
	"`condition_ids` VARCHAR(255) NOT NULL," .
	"`appearance_id` INT(10) NOT NULL," .
	"`language_id` INT(10) NOT NULL," .
	"`event_ids` VARCHAR(255) NOT NULL," .
	"`pack_id` INT(10) NOT NULL," .
	"`the_id`  VARCHAR(255) DEFAULT NULL," .
	"`default_pack_id`  VARCHAR(255) DEFAULT NULL," .
	"`show_to`  VARCHAR(255) DEFAULT NULL," .
	"`hide_from`  VARCHAR(255) DEFAULT NULL," .
	"`func_before`  LONGTEXT DEFAULT NULL," .
	"`func_after`  LONGTEXT DEFAULT NULL," .
	"`description` LONGTEXT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'vals' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`key` LONGTEXT DEFAULT NULL," .
	"`value` LONGTEXT DEFAULT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
*/
	foreach ( $sql as $table_query ) {
		$wpdb->query( $table_query );
		if ( $wpdb->last_error !== '' ) {
			echo $GLOBALS[ 'sst_errors' ][ 0 ];
			$wpdb->print_error();
			$this->error_log( 'Creation tables failed due to syntax error.' );
			die;
		}
	}
}
sst_create_tables();
	
