<?php
/**************************************************
 *version 1.0.0
 *this function create core tables
 **************************************************/

function sst_create_tables() {
	global $wpdb;

	##################################################
	require_once( DBPATH . 'sst_collate_charset.php' );
	$collate_charset = sst_collate_charset();
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'options' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`key` VARCHAR(255) DEFAULT NULL," .
	"`value` LONGTEXT DEFAULT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_event_jsfunction' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`jsfunction` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";

	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_event' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`event` VARCHAR(255) NOT NULL," .
	"`jsfunction_ids` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_class' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`class` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_data' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`data_attribute` VARCHAR(255) NOT NULL," .
	"`data_value` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemprop' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`itemprop` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $collate_charset;";	
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemref' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`itemref` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $collate_charset;";	

	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_style' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`css_attribute` VARCHAR(255) NOT NULL," .
	"`css_value` VARCHAR(255) NOT NULL," .
	"`important` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_file_accept' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`accept` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";

	
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`accesskey` VARCHAR(255) NOT NULL," .
	"`autocapitalize` VARCHAR(255) NOT NULL," .
	"`class_ids` VARCHAR(255) NOT NULL," .
	"`contenteditable` VARCHAR(255) NOT NULL," .
	"`contextmenu` VARCHAR(255) NOT NULL," .
	"`data_ids` VARCHAR(255) NOT NULL," .
	"`dir` VARCHAR(255) NOT NULL," .
	"`draggable` VARCHAR(255) NOT NULL," .
	"`dropzone` VARCHAR(255) NOT NULL," .
	"`hidden` VARCHAR(255) NOT NULL," .
	"`the_id` VARCHAR(255) NOT NULL," .
	"`inputmode` VARCHAR(255) NOT NULL," .
	"`is` VARCHAR(255) NOT NULL," .
	"`itemid` VARCHAR(255) NOT NULL," .
	"`itemprop_ids` VARCHAR(255) NOT NULL," .
	"`itemref_ids` VARCHAR(255) NOT NULL," .
	"`itemscope` VARCHAR(255) NOT NULL," .
	"`itemtype` VARCHAR(255) NOT NULL," .
	"`lang` VARCHAR(255) NOT NULL," .
	"`onevent_ids` VARCHAR(255) NOT NULL," .
	"`slot` VARCHAR(255) NOT NULL," .
	"`spellcheck` VARCHAR(255) NOT NULL," .
	"`style_ids` VARCHAR(255) NOT NULL," .
	"`tabindex` VARCHAR(255) NOT NULL," .
	"`title` VARCHAR(255) NOT NULL," .
	"`translate` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	/*
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_common' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autofocus` VARCHAR(255) NOT NULL," .
	"`disabled` VARCHAR(255) NOT NULL," .
	"`form` VARCHAR(255) NOT NULL," .
	"`name` VARCHAR(255) NOT NULL," .
	"`type` VARCHAR(255) NOT NULL," .
	"`value` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
		*/
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_checkbox_radio' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`checked` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_color' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .
	"`list` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_file' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`accept_ids` VARCHAR(255) NOT NULL," .
	"`multiple` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_submit' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`formaction` VARCHAR(255) NOT NULL," .
	"`formenctype` VARCHAR(255) NOT NULL," .
	"`formmethod` VARCHAR(255) NOT NULL," .
	"`formnovalidate` VARCHAR(255) NOT NULL," .
	"`formtarget` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_range' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .
	"`list` VARCHAR(255) NOT NULL," .
	"`max` VARCHAR(255) NOT NULL," .
	"`min` VARCHAR(255) NOT NULL," .
	"`multiple` VARCHAR(255) NOT NULL," .
	"`step` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_date_time_related' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .
	"`list` VARCHAR(255) NOT NULL," .
	"`max` VARCHAR(255) NOT NULL," .
	"`min` VARCHAR(255) NOT NULL," .
	"`readonly` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`step` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_password' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .
	"`maxlength` VARCHAR(255) NOT NULL," .
	"`minlength` VARCHAR(255) NOT NULL," .
	"`pattern` VARCHAR(255) NOT NULL," .
	"`placeholder` VARCHAR(255) NOT NULL," .
	"`readonly` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`size` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_number' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .
	"`list` VARCHAR(255) NOT NULL," .
	"`max` VARCHAR(255) NOT NULL," .
	"`min` VARCHAR(255) NOT NULL," .
	"`placeholder` VARCHAR(255) NOT NULL," .
	"`readonly` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`step` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_image' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`alt` VARCHAR(255) NOT NULL," .
	"`formaction` VARCHAR(255) NOT NULL," .
	"`formenctype` VARCHAR(255) NOT NULL," .
	"`formmethod` VARCHAR(255) NOT NULL," .
	"`formnovalidate` VARCHAR(255) NOT NULL," .
	"`formtarget` VARCHAR(255) NOT NULL," .
	"`height` VARCHAR(255) NOT NULL," .
	"`src` VARCHAR(255) NOT NULL," .
	"`width` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_tel_url' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .
	"`list` VARCHAR(255) NOT NULL," .
	"`maxlength` VARCHAR(255) NOT NULL," .
	"`minlength` VARCHAR(255) NOT NULL," .
	"`pattern` VARCHAR(255) NOT NULL," .
	"`placeholder` VARCHAR(255) NOT NULL," .
	"`readonly` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`size` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_email' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .
	"`list` VARCHAR(255) NOT NULL," .
	"`maxlength` VARCHAR(255) NOT NULL," .
	"`minlength` VARCHAR(255) NOT NULL," .
	"`multiple` VARCHAR(255) NOT NULL," .
	"`pattern` VARCHAR(255) NOT NULL," .
	"`placeholder` VARCHAR(255) NOT NULL," .
	"`readonly` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`size` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autocomplete` VARCHAR(255) NOT NULL," .	
	"`dirname` VARCHAR(255) NOT NULL," .
	"`list` VARCHAR(255) NOT NULL," .
	"`maxlength` VARCHAR(255) NOT NULL," .
	"`minlength` VARCHAR(255) NOT NULL," .
	"`pattern` VARCHAR(255) NOT NULL," .
	"`placeholder` VARCHAR(255) NOT NULL," .
	"`readonly` VARCHAR(255) NOT NULL," .
	"`required` VARCHAR(255) NOT NULL," .
	"`size` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'language' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`language` VARCHAR(255) NOT NULL," .
	"`direction` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'input_type' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`html_type` VARCHAR(255) NOT NULL," .
	"`type` VARCHAR(255) NOT NULL," .
	"`function` VARCHAR(255) NOT NULL," .
	"`description` LONGTEXT NOT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	###################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'input' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`autofocus` VARCHAR(255) NOT NULL," .
	"`disabled` VARCHAR(255) NOT NULL," .
	"`form` VARCHAR(255) NOT NULL," .
	"`name` VARCHAR(255) NOT NULL," .
	"`type` VARCHAR(255) NOT NULL," .
	"`value` VARCHAR(255) NOT NULL," .
	"`attr_html_global_id` VARCHAR(255) NOT NULL," .
	"`attr_input_specific_id` VARCHAR(255) NOT NULL," .
	"`label_id_before` VARCHAR(255) NOT NULL," .
	"`label_id_after` VARCHAR(255) NOT NULL," .
	"`meta_ids` VARCHAR(255) NOT NULL," .
	"`pack_id` VARCHAR(255) NOT NULL," .
	"`controller_id`  VARCHAR(255) DEFAULT NULL," . //this is an attribute of field but is here
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";

	
	/*
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS  " . $GLOBALS[ 'sst_tables' ][ 'select_options' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`type` VARCHAR(255) NOT NULL," . //option or optgroup
	"`label` VARCHAR(255) NOT NULL," .
	"`content` VARCHAR(255) NOT NULL," .
	"`value` VARCHAR(255) NOT NULL," .
	"`optgroup_id` VARCHAR(255) DEFAULT NULL," . //if all options are in optgroups use only the top level optgroups ids
	"`order_type` VARCHAR(255) NOT NULL," . //define the order type ascending/ descending/ non
	"`selected` VARCHAR(255) NOT NULL," .
	"`language_id` VARCHAR(255) NOT NULL," .
	"`event_ids` VARCHAR(255) NOT NULL," .
	"`appearance_id` VARCHAR(255) NOT NULL," .
	"`disabled` VARCHAR(255) NOT NULL," .
	"`the_id`  VARCHAR(255) DEFAULT NULL," . //this is an attribute of field but is here
	"`meta_ids` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################

	$sql[] = "CREATE TABLE IF NOT EXISTS  " . $GLOBALS[ 'sst_tables' ][ 'standard' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`epithet` VARCHAR(255) NOT NULL," .
	"`slug` VARCHAR(255) NOT NULL," .
	"`value` LONGTEXT NOT NULL," .
	"`option_ids` VARCHAR(255) NOT NULL," .
	"`order_type` VARCHAR(255) NOT NULL," . //define the order type ascending/ descending/ non
	"`checked` VARCHAR(255) NOT NULL," .
	"`max` VARCHAR(255) NOT NULL," . //ADDED NEW HTML5
	"`min` VARCHAR(255) NOT NULL," . //ADDED NEW HTML5
	"`pattern` VARCHAR(255) NOT NULL," . //ADDED NEW HTML5
	"`required` VARCHAR(255) NOT NULL," . //ADDED NEW HTML5
	"`step` VARCHAR(255) NOT NULL," . //ADDED NEW HTML5
	"`maxlength` VARCHAR(255) NOT NULL," .
	"`size` VARCHAR(255) NOT NULL," .
	"`cols` VARCHAR(255) NOT NULL," .
	"`rows` VARCHAR(255) NOT NULL," .
	"`wrap` VARCHAR(255) NOT NULL," .
	"`label` VARCHAR(255) NOT NULL," .
	"`content` LONGTEXT NOT NULL," .
	"`multiple` VARCHAR(255) NOT NULL," .
	"`disabled` VARCHAR(255) NOT NULL," .
	"`readonly` VARCHAR(255) NOT NULL," .
	"`alt` VARCHAR(255) NOT NULL," .
	"`scr` VARCHAR(255) NOT NULL," .
	"`ismap` VARCHAR(255) NOT NULL," .
	"`usemap` VARCHAR(255) NOT NULL," .
	"`dynscr` VARCHAR(255) NOT NULL," .
	"`loop` VARCHAR(255) NOT NULL," .
	"`datafld` VARCHAR(255) NOT NULL," .
	"`datascr` VARCHAR(255) NOT NULL," .
	"`height` VARCHAR(255) NOT NULL," .
	"`width` VARCHAR(255) NOT NULL," .
	"`hspace` VARCHAR(255) NOT NULL," .
	"`vspace` VARCHAR(255) NOT NULL," .
	"`meta_ids` VARCHAR(255) NOT NULL," .
	"`standard_db_id` VARCHAR(255) NOT NULL," .
	"`standard_condition_ids` VARCHAR(255) NOT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
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
        PRIMARY KEY id  (`id`)) $collate_charset;";
	##################################################
	$sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'vals' ] . " (" .
	"`id` INT(10) NOT NULL auto_increment," .
	"`key` LONGTEXT DEFAULT NULL," .
	"`value` LONGTEXT DEFAULT NULL," .
	"`description`  LONGTEXT DEFAULT NULL," .
	"`owner` VARCHAR(255) DEFAULT NULL," .
	"`created` DATETIME NOT NULL DEFAULT NOW()," .
	"`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $collate_charset;";
*/
	foreach ( $sql as $table_query ) {
		$wpdb->query( $table_query );
		if ( $wpdb->last_error !== '' ) {
			echo $GLOBALS[ 'sst_errors' ][ 0 ];
			$wpdb->print_error();
			sst_error_log( 'Creation tables failed due to syntax error.' );
			die;
		}
	}
}
sst_create_tables();