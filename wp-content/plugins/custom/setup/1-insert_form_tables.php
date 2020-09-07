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
    $GLOBALS[ 'sst_custom' ][ 'country' ] = $wpdb->prefix . 'custom_' . 'country';
    $GLOBALS[ 'sst_custom' ][ 'currency' ] = $wpdb->prefix . 'custom_' . 'currency';
    $GLOBALS[ 'sst_custom' ][ 'currency_rate' ] = $wpdb->prefix . 'custom_' . 'currency_rate';
    $GLOBALS[ 'sst_custom' ][ 'tax' ] = $wpdb->prefix . 'custom_' . 'tax';
    $GLOBALS[ 'sst_custom' ][ 'income_expenditure_source' ] = $wpdb->prefix . 'custom_' . 'income_expenditure_source';
    //$GLOBALS[ 'sst_custom' ][ 'payment_method' ] = $wpdb->prefix . 'custom_' . 'payment_method';
    $GLOBALS[ 'sst_custom' ][ 'legal_preson_type' ] = $wpdb->prefix . 'custom_' . 'legal_person_type';
    $GLOBALS[ 'sst_custom' ][ 'acquaintance_type' ] = $wpdb->prefix . 'custom_' . 'acquaintance_type';
    $GLOBALS[ 'sst_custom' ][ 'social_network' ] = $wpdb->prefix . 'custom_' . 'social_network';
    $GLOBALS[ 'sst_custom' ][ 'education' ] = $wpdb->prefix . 'custom_' . 'education';
    $GLOBALS[ 'sst_custom' ][ 'person' ] = $wpdb->prefix . 'custom_' . 'person';
    $GLOBALS[ 'sst_custom' ][ 'state' ] = $wpdb->prefix . 'custom_' . 'state';
    $GLOBALS[ 'sst_custom' ][ 'city' ] = $wpdb->prefix . 'custom_' . 'city';
    $GLOBALS[ 'sst_custom' ][ 'area' ] = $wpdb->prefix . 'custom_' . 'area';
    $GLOBALS[ 'sst_custom' ][ 'relation' ] = $wpdb->prefix . 'custom_' . 'relation';
    $GLOBALS[ 'sst_custom' ][ 'job' ] = $wpdb->prefix . 'custom_' . 'job';
    $GLOBALS[ 'sst_custom' ][ 'phone' ] = $wpdb->prefix . 'custom_' . 'phone';
    $GLOBALS[ 'sst_custom' ][ 'address' ] = $wpdb->prefix . 'custom_' . 'address';
    $GLOBALS[ 'sst_custom' ][ 'contact' ] = $wpdb->prefix . 'custom_' . 'contact';
    $GLOBALS[ 'sst_custom' ][ 'bank' ] = $wpdb->prefix . 'custom_' . 'bank';
    $GLOBALS[ 'sst_custom' ][ 'bank_branch' ] = $wpdb->prefix . 'custom_' . 'bank_branch';
    $GLOBALS[ 'sst_custom' ][ 'bank_account_type' ] = $wpdb->prefix . 'custom_' . 'bank_account_type';
    $GLOBALS[ 'sst_custom' ][ 'bank_account' ] = $wpdb->prefix . 'custom_' . 'bank_account';
    $GLOBALS[ 'sst_custom' ][ 'person_account_data' ] = $wpdb->prefix . 'custom_' . 'person_account_data';
    $GLOBALS[ 'sst_custom' ][ 'payment_method' ] = $wpdb->prefix . 'custom_' . 'payment_method';
    $GLOBALS[ 'sst_custom' ][ 'payment_method_relation' ] = $wpdb->prefix . 'custom_' . 'payment_method_relation';
    $GLOBALS[ 'sst_custom' ][ 'payment_method_commission' ] = $wpdb->prefix . 'custom_' . 'payment_method_commission';
    $GLOBALS[ 'sst_custom' ][ 'debit_credit' ] = $wpdb->prefix . 'custom_' . 'debit_credit';

  }

  function insert_tables() {
    global $wpdb;
    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'country' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`country` VARCHAR(255) NOT NULL," .
    "`flag` VARCHAR(255) NOT NULL," .
    "`phone_code` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT DEFAULT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'currency' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`country_id` VARCHAR(255) NOT NULL," .
    "`currency` VARCHAR(255) NOT NULL," .
    "`currency_sign` VARCHAR(255) NOT NULL," .
    "`currency_code` VARCHAR(255) NOT NULL," .
    "`currency_sign_position` VARCHAR(255) NOT NULL," .
    "`official` VARCHAR(255) NOT NULL," .
    "`parent_currency_ratio` VARCHAR(255) NOT NULL COMMENT 'How many of this currency make parent currency'," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'currency_rate' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`base_currency_id` VARCHAR(255) NOT NULL," .
    "`exchanged_currency_id` VARCHAR(255) NOT NULL," .
    "`rate` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'tax' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`rate` VARCHAR(255) NOT NULL," .
    "`type` VARCHAR(255) NOT NULL COMMENT 'inclusive(vat)/exlusive(without vat)/compund/fixed/normal'," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'income_expenditure_source' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`type` VARCHAR(255) NOT NULL COMMENT 'income/expenditure'," .
    "`parent_id` VARCHAR(255) NOT NULL COMMENT 'income/expenditure'," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
    /*
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'payment_method' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`name` VARCHAR(255) NOT NULL," .
        "`parent_id` VARCHAR(255) NOT NULL COMMENT 'income/expenditure'," .
        "`desc` LONGTEXT NOT NULL," .
        "`save_id` VARCHAR(255) NOT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
            PRIMARY KEY id  (`id`)) $this->collate_charset;";
    */
    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'legal_preson_type' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`parent_id` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'acquaintance_type' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`parent_id` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'social_network' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'education' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'person' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`last_name` VARCHAR(255) NOT NULL," .
    "`image` VARCHAR(255) NOT NULL," .
    "`is_legal` VARCHAR(255) NOT NULL," .
    "`legal_person_type_id` VARCHAR(255) NOT NULL," .
    "`legal_person_national_id` VARCHAR(255) NOT NULL," .
    "`legal_person_notary_id` VARCHAR(255) NOT NULL," .
    "`statute_image` VARCHAR(255) NOT NULL," .
    "`national_id` VARCHAR(255) NOT NULL," .
    "`national_card` VARCHAR(255) NOT NULL," .
    "`birth_date` VARCHAR(255) NOT NULL," .
    "`birth_place` VARCHAR(255) NOT NULL," .
    "`father_name` VARCHAR(255) NOT NULL," .
    "`national_id_2` VARCHAR(255) NOT NULL," .
    "`national_card_2` VARCHAR(255) NOT NULL," .
    "`driving_licence_no` VARCHAR(255) NOT NULL," .
    "`driving_licence_issue_date` VARCHAR(255) NOT NULL," .
    "`driving_licence_card` VARCHAR(255) NOT NULL," .
    "`currency_id` VARCHAR(255) NOT NULL," .
    "`passport_no` VARCHAR(255) NOT NULL," .
    "`passport_image` VARCHAR(255) NOT NULL," .
    "`nationality` VARCHAR(255) NOT NULL," .
    "`tax_code` VARCHAR(255) NOT NULL," .
    "`reference_person_id` VARCHAR(255) NOT NULL," .
    "`acquaintance_type_id` VARCHAR(255) NOT NULL," .
    "`job` VARCHAR(255) NOT NULL," .
    "`education` VARCHAR(255) NOT NULL," .
    "`email` VARCHAR(255) NOT NULL," .
    "`website` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
            PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'state' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`country_id` VARCHAR(255) NOT NULL," .
    "`state_name` VARCHAR(255) NOT NULL," .
    "`phone_code` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'city' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`country_id` VARCHAR(255) NOT NULL," .
    "`state_id` VARCHAR(255) NOT NULL," .
    "`city_name` VARCHAR(255) NOT NULL," .
    "`phone_code` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'area' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`country_id` VARCHAR(255) NOT NULL," .
    "`state_id` VARCHAR(255) NOT NULL," .
    "`city_id` VARCHAR(255) NOT NULL," .
    "`area_name` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'relation' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`relation` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'job' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`job` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'contact' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`person_id` VARCHAR(255) NOT NULL," .
    "`relation_id` VARCHAR(255) NOT NULL," .
    "`name` VARCHAR(255) NOT NULL," .
    "`last_name` VARCHAR(255) NOT NULL," .
    "`type` VARCHAR(255) NOT NULL," . //work,home,mobile
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'phone' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`contact_id` VARCHAR(255) NOT NULL," .
    "`phone_type` VARCHAR(255) NOT NULL," .
    "`country_code` VARCHAR(255) NOT NULL," .
    "`state_code` VARCHAR(255) NOT NULL," .
    "`city_code` VARCHAR(255) NOT NULL," .
    "`phone_no` VARCHAR(255) NOT NULL," .
    "`extension_no` VARCHAR(255) NOT NULL," .
    "`verified` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'address' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`contact_id` VARCHAR(255) NOT NULL," .
    "`country_id` VARCHAR(255) NOT NULL," .
    "`state_id` VARCHAR(255) NOT NULL," .
    "`city_id` VARCHAR(255) NOT NULL," .
    "`area_id` VARCHAR(255) NOT NULL," .
    "`main_street` VARCHAR(255) NOT NULL," .
    "`address` LONGTEXT NOT NULL," .
    "`block_no` VARCHAR(255) NOT NULL," .
    "`apartment_no` VARCHAR(255) NOT NULL," .
    "`longitude` VARCHAR(255) NOT NULL," .
    "`latitude` VARCHAR(255) NOT NULL," .
    "`verified` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'bank' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`country_id` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'bank_branch' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`bank_id` VARCHAR(255) NOT NULL," .
    "`name` VARCHAR(255) NOT NULL," .
    "`branch_id` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'bank_account_type' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`account_type` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'bank_account' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," . //درگاه واسط /بانک / نقدی
    "`person_id` VARCHAR(255) NOT NULL," .
    "`bank_id` VARCHAR(255) NOT NULL," .
    "`bank_branch_id` VARCHAR(255) NOT NULL," .
    "`account_type_id` VARCHAR(255) NOT NULL," .
    "`currency_id` VARCHAR(255) NOT NULL," .
    "`iban` VARCHAR(255) NOT NULL," .
    "`account_number` VARCHAR(255) NOT NULL," .
    "`card_number` VARCHAR(255) NOT NULL," .
    "`expire_card_date` VARCHAR(255) NOT NULL," .
    "`card_atm_pin` VARCHAR(255) NOT NULL," .
    "`ccv` VARCHAR(255) NOT NULL," .
    "`ccv2` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'person_account_data' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`person_id` VARCHAR(255) NOT NULL," .
    "`balance` VARCHAR(255) NOT NULL," .
    "`total_debit` VARCHAR(255) NOT NULL," .
    "`total_credit` VARCHAR(255) NOT NULL," .
    "`first_transaction` VARCHAR(255) NOT NULL," .
    "`last_transaction` VARCHAR(255) NOT NULL," .
    "`total_transaction_number` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'payment_method' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`name` VARCHAR(255) NOT NULL," .
    "`parent_id` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'payment_method_relation' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`bank_id` VARCHAR(255) NOT NULL," .
    "`payment_method_id` VARCHAR(255) NOT NULL," .
    "`desc` LONGTEXT NOT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'payment_method_commission' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`payment_method_id` VARCHAR(255) NOT NULL," .
    "`commission_type` VARCHAR(255) NOT NULL," . //percentage/flat
    "`currency_id` VARCHAR(255) DEFAULT NULL," .
    "`range` VARCHAR(255) DEFAULT NULL," .
    "`min` FLOAT DEFAULT 0," .
    "`max` FLOAT DEFAULT 0," . //means upto
    "`same_bank_commission` VARCHAR(255) DEFAULT NULL," .
    "`other_bank_commission` VARCHAR(255) DEFAULT NULL," .
    "`other_bank_id` VARCHAR(255) DEFAULT NULL," .
    "`desc` LONGTEXT DEFAULT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_custom' ][ 'debit_credit' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`debit_person_id` VARCHAR(255) NOT NULL," .
    "`debit_account_id` VARCHAR(255) NOT NULL," .
    "`credit_person_id` VARCHAR(255) NOT NULL," .
    "`credit_account_id` VARCHAR(255) NOT NULL," .
    "`invoice_id` VARCHAR(255) NOT NULL," .
    "`value` FLOAT DEFAULT 0," .
    "`date` VARCHAR(255) NOT NULL," .
    "`payment_method_id` VARCHAR(255) NOT NULL," .
    "`currency_id` VARCHAR(255) DEFAULT NULL," .
    "`note` LONGTEXT DEFAULT NULL," .
    "`document_img` LONGTEXT DEFAULT NULL," .
    "`desc` LONGTEXT DEFAULT NULL," .
    "`save_id` VARCHAR(255) NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $this->create_tables( $sql );

  }
}
new insert_custom_tables;