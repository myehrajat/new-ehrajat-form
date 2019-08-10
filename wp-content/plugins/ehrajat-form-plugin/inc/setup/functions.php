<?php
/*TER TABLE `wp_sst_form`
ADD COLUMN `show_to`  varchar(255) NULL AFTER `default_pack_id`;
ALTER TABLE `wp_sst_block`
ADD COLUMN `show_to`  varchar(255) NULL AFTER `default_pack_id`;
ALTER TABLE `wp_sst_field`
ADD COLUMN `show_to`  varchar(255) NULL AFTER `default_pack_id`;*/
//needed because wpdb object is not natively included
global $wpdb;
function dbg($var,$textarea=false){
	if($textarea){
		echo '<textarea rows="50" cols="500">';
	}
	echo '<pre>';var_dump($var);echo'</pre></textarea>';
	if($textarea){
		echo '</textarea></br>';
	}

}
$collate = sst_collate();
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_language" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`language` VARCHAR(255) NOT NULL,".
        "`direction` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);

	
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_keyboard" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`accesskey` VARCHAR(255) NOT NULL,".
        "`tabindex` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_event" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`event` VARCHAR(255) NOT NULL,".
        "`jsfunction` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_select_options" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`type` VARCHAR(255) NOT NULL,".//option or optgroup
        "`label` VARCHAR(255) NOT NULL,".
        "`content` VARCHAR(255) NOT NULL,".
        "`value` VARCHAR(255) NOT NULL,".
        "`optgroup_id` VARCHAR(255) DEFAULT NULL,".//if all options are in optgroups use only the top level optgroups ids
        "`order_type` VARCHAR(255) NOT NULL,".//define the order type ascending/ descending/ non
        "`selected` VARCHAR(255) NOT NULL,".
        "`language_id` VARCHAR(255) NOT NULL,".
        "`event_ids` VARCHAR(255) NOT NULL,".
        "`appearance_id` VARCHAR(255) NOT NULL,".
        "`disabled` VARCHAR(255) NOT NULL,".
        "`the_id`  VARCHAR(255) DEFAULT NULL,".//this is an attribute of field but is here
        "`meta_ids` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_standard" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`value` LONGTEXT NOT NULL,".
        "`option_ids` VARCHAR(255) NOT NULL,".
        "`order_type` VARCHAR(255) NOT NULL,".//define the order type ascending/ descending/ non
        "`checked` VARCHAR(255) NOT NULL,".
/**************START THIS ADDED FOR INPUT FIELD HTML5 1396/8/6*************/
/*ALTER TABLE `wp_sst_standard`
ADD COLUMN `max`  varchar(255) NOT NULL AFTER `checked`,
ADD COLUMN `min`  varchar(255) NOT NULL AFTER `max`,
ADD COLUMN `pattern`  varchar(255) NOT NULL AFTER `min`,
ADD COLUMN `required`  varchar(255) NOT NULL AFTER `pattern`,
ADD COLUMN `step`  varchar(255) NOT NULL AFTER `required`;
*/
        "`max` VARCHAR(255) NOT NULL,".//ADDED NEW HTML5
        "`min` VARCHAR(255) NOT NULL,".//ADDED NEW HTML5
        "`pattern` VARCHAR(255) NOT NULL,".//ADDED NEW HTML5
        "`required` VARCHAR(255) NOT NULL,".//ADDED NEW HTML5
        "`step` VARCHAR(255) NOT NULL,".//ADDED NEW HTML5
/**************END THIS ADDED FOR INPUT FIELD HTML5 1396/8/6*************/
        "`maxlength` VARCHAR(255) NOT NULL,".
        "`size` VARCHAR(255) NOT NULL,".
        "`cols` VARCHAR(255) NOT NULL,".
        "`rows` VARCHAR(255) NOT NULL,".
        "`wrap` VARCHAR(255) NOT NULL,".
        "`label` VARCHAR(255) NOT NULL,".
        "`content` LONGTEXT NOT NULL,".
        "`multiple` VARCHAR(255) NOT NULL,".
        "`disabled` VARCHAR(255) NOT NULL,".
        "`readonly` VARCHAR(255) NOT NULL,".
        "`alt` VARCHAR(255) NOT NULL,".
        "`scr` VARCHAR(255) NOT NULL,".
        "`ismap` VARCHAR(255) NOT NULL,".
        "`usemap` VARCHAR(255) NOT NULL,".
        "`dynscr` VARCHAR(255) NOT NULL,".
        "`loop` VARCHAR(255) NOT NULL,".
        "`datafld` VARCHAR(255) NOT NULL,".
        "`datascr` VARCHAR(255) NOT NULL,".
        "`height` VARCHAR(255) NOT NULL,".
        "`width` VARCHAR(255) NOT NULL,".
        "`hspace` VARCHAR(255) NOT NULL,".
        "`vspace` VARCHAR(255) NOT NULL,".
        "`meta_ids` VARCHAR(255) NOT NULL,".
        "`standard_db_id` VARCHAR(255) NOT NULL,".
        "`standard_condition_ids` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_standard_db" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`table` VARCHAR(255) NOT NULL,".
        "`value_col` VARCHAR(255) NOT NULL,".
        "`value_function` LONGTEXT NOT NULL,".
        "`label_col` VARCHAR(255) NOT NULL,".
        "`label_function` LONGTEXT NOT NULL,".
        "`id_col` VARCHAR(255) NOT NULL,".
        "`id_function` LONGTEXT NOT NULL,".
        "`order` VARCHAR(255) NOT NULL,".
        "`where` VARCHAR(255) NOT NULL,".
        "`group` VARCHAR(255) NOT NULL,".
        "`having` VARCHAR(255) NOT NULL,".
        "`limit` VARCHAR(255) NOT NULL,".
        "`join` VARCHAR(255) NOT NULL,".
        "`custom_query` LONGTEXT NOT NULL,".
        "`next_id` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_standard_condition" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`operator` VARCHAR(255) NOT NULL,".
        "`value` VARCHAR(255) NOT NULL,".
        "`dependent_field_id` VARCHAR(255) NOT NULL,".
        "`dependent_select_option_ids` VARCHAR(255) NOT NULL,".
        "`dependent_standard_db_id` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_standard_meta" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
		"`slug` VARCHAR(255) NOT NULL,".
        "`attribute` VARCHAR(255) NOT NULL,".
        "`value` LONGTEXT NOT NULL,".
        "`description` LONGTEXT NOT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_type" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`type` VARCHAR(255) NOT NULL,".
        "`function` VARCHAR(255) NOT NULL,".
        "`description` LONGTEXT NOT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_appearance" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`class` VARCHAR(255) DEFAULT NULL,".
        "`style` LONGTEXT NULL,".
        "`title`  VARCHAR(255) DEFAULT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_pack" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`pre` VARCHAR(255) NOT NULL,".
        "`post` VARCHAR(255) NOT NULL,".
        "`the_id` VARCHAR(255) NOT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_default_pack" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`form` VARCHAR(255) NOT NULL,".
        "`block` VARCHAR(255) NOT NULL,".
        "`field` VARCHAR(255) NOT NULL,".
        "`input` VARCHAR(255) NOT NULL,".
        "`label` VARCHAR(255) NOT NULL,".
        "`text` VARCHAR(255) NOT NULL,".
        "`note` VARCHAR(255) NOT NULL,".
        "`tooltip` VARCHAR(255) NOT NULL,".
		"`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
###################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_input" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`name` VARCHAR(255) NOT NULL,".
        "`type_id` VARCHAR(255) NOT NULL,".//standard inputs and some other and elements
        "`standard_id` VARCHAR(255) NOT NULL,".
        "`label_id_before` VARCHAR(255) NOT NULL,".
        "`label_id_after` VARCHAR(255) NOT NULL,".
        "`language_id` VARCHAR(255) NOT NULL,".
        "`event_ids` VARCHAR(255) NOT NULL,".
        "`appearance_id` VARCHAR(255) NOT NULL,".
        "`keyboard_id` VARCHAR(255) NOT NULL,".
        "`pack_id` VARCHAR(255) NOT NULL,".
        "`the_id`  VARCHAR(255) DEFAULT NULL,".//this is an attribute of field but is here
        "`controller_id`  VARCHAR(255) DEFAULT NULL,".//this is an attribute of field but is here
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);

##################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_label" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`text` VARCHAR(255) NOT NULL,".
        "`note` VARCHAR(255) NOT NULL,".
        "`tooltip` VARCHAR(255) NOT NULL,".
        "`appearance_id` VARCHAR(255) NOT NULL,".
        "`pack_id` VARCHAR(255) NOT NULL,".
        "`the_id`  VARCHAR(255) DEFAULT NULL,".
        "`default_pack_id`  VARCHAR(255) DEFAULT NULL,".
		"`description` LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

   $wpdb->query($sql);
##################################################
/*
ALTER TABLE `wp_sst_field`
ADD COLUMN `hide_from`  varchar(255) NULL AFTER `show_to`;

*/
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_field" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`label_id_before` VARCHAR(255) NOT NULL,".
        "`label_id_after` VARCHAR(255) NOT NULL,".
        "`input_ids` VARCHAR(255) NOT NULL,".
        "`required` VARCHAR(255) NOT NULL,".
        "`extra` VARCHAR(255) NOT NULL,".
        "`max_extra` VARCHAR(255) NOT NULL,".
        "`appearance_id` VARCHAR(255) NOT NULL,".
        "`pack_id` VARCHAR(255) NOT NULL,".
        "`the_id`  VARCHAR(255) DEFAULT NULL,".
        "`default_pack_id`  VARCHAR(255) DEFAULT NULL,".
        "`show_to`  VARCHAR(255) DEFAULT NULL,".
        "`hide_from`  VARCHAR(255) DEFAULT NULL,".
        "`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
/*
  ALTER TABLE `wp_sst_block`
ADD COLUMN `hide_from`  varchar(255) NULL AFTER `show_to`;


  */
  $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_block" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`field_ids` VARCHAR(255) NOT NULL,".
        "`block_ids` VARCHAR(255) NOT NULL,".
        "`required_field_ids` VARCHAR(255) NOT NULL,".
        "`extra` VARCHAR(255) NOT NULL,".
        "`max_extra` VARCHAR(255) NOT NULL,".
        "`appearance_id` VARCHAR(255) NOT NULL,".
        "`pack_id` VARCHAR(255) NOT NULL,".
        "`the_id`  VARCHAR(255) DEFAULT NULL,".
        "`default_pack_id` VARCHAR(255) DEFAULT NULL,".
        "`show_to` VARCHAR(255) DEFAULT NULL,".
        "`hide_from` VARCHAR(255) DEFAULT NULL,".
	  	"`description` LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_condition" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`condition` VARCHAR(255) DEFAULT NULL,".//else/the condition
        "`next_id` VARCHAR(255) DEFAULT NULL,".
        "`goto` VARCHAR(255) DEFAULT NULL,".
        "`value` LONGTEXT NOT NULL,".
		"`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_data_action_colval" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`type` VARCHAR(255) NOT NULL,".//constant/variable/code
        "`reference` VARCHAR(255) NOT NULL,".//the changed data will be saved in $ref['field_name']
        "`column` VARCHAR(255) NOT NULL,".
        "`value` LONGTEXT NOT NULL,".
        "`file_destination` LONGTEXT NOT NULL,".
		"`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_data_action" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`type` VARCHAR(255) NOT NULL,".//all/all-unsaved/simple/extra-simple/option/extra-option
        "`insert_reference` VARCHAR(255) NOT NULL,".//
        "`table` VARCHAR(255) NOT NULL,".
        "`extra_special` VARCHAR(255) NOT NULL,".//a hidden field for checking that is there any extra for blocks or fields
        "`colval_ids` VARCHAR(255) NOT NULL,".
		"`default_file_destination` LONGTEXT NULL,".
        "`allow_duplicate` LONGTEXT NULL,".//check that the duplicate entry is allowed. 1=yes/0 or null=no
		"`func_before`  LONGTEXT DEFAULT NULL,".
		"`func_after`  LONGTEXT DEFAULT NULL,".
		"`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
/*ALTER TABLE `wp_sst_form`
ADD COLUMN `hide_from`  varchar(255) NULL AFTER `show_to`;
*/

    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_form" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`epithet` VARCHAR(255) NOT NULL,".
        "`slug` VARCHAR(255) NOT NULL,".
        "`block_ids` VARCHAR(255) NOT NULL,".
        "`field_ids` VARCHAR(255) NOT NULL,".
        "`required_field_ids` VARCHAR(255) NOT NULL,".
        "`method` VARCHAR(255) NOT NULL,".//post/get
        "`name` VARCHAR(255) NOT NULL,".
        "`target` VARCHAR(255) NOT NULL,".//_top/_parent/_self/_new/_blank
		"`enctype` VARCHAR(255) NOT NULL,".//"multipart/form-data"/"application/x-www-form-urlencoded"/any other mime type
		"`action` VARCHAR(255) NOT NULL,".
        "`header` LONGTEXT NULL,".
        "`footer` LONGTEXT NULL,".
        "`data_action_ids` VARCHAR(255) NOT NULL,".
        "`condition_ids` VARCHAR(255) NOT NULL,".
        "`appearance_id` INT(10) NOT NULL,".
        "`language_id` INT(10) NOT NULL,".
        "`event_ids` VARCHAR(255) NOT NULL,".
        "`pack_id` INT(10) NOT NULL,".
        "`the_id`  VARCHAR(255) DEFAULT NULL,".
        "`default_pack_id`  VARCHAR(255) DEFAULT NULL,".
        "`show_to`  VARCHAR(255) DEFAULT NULL,".
        "`hide_from`  VARCHAR(255) DEFAULT NULL,".
		"`func_before`  LONGTEXT DEFAULT NULL,".
		"`func_after`  LONGTEXT DEFAULT NULL,".
        "`description` LONGTEXT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_vals" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`key` LONGTEXT DEFAULT NULL,".
        "`value` LONGTEXT DEFAULT NULL,".
        //"`form` VARCHAR(255) DEFAULT NULL,".
		"`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_vals_getter" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`key` LONGTEXT DEFAULT NULL,".
        "`form` VARCHAR(255) DEFAULT NULL,".
        "`record_id` VARCHAR(255) DEFAULT NULL,".
		"`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
##################################################
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . "sst_options" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`key` VARCHAR(255) DEFAULT NULL,".
        "`value` LONGTEXT DEFAULT NULL,".
		"`description`  LONGTEXT DEFAULT NULL,".
        "`owner` VARCHAR(255) DEFAULT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
	?>