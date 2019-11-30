<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_attribute_related_tables extends database {
    function __construct() {
		parent::__construct();
        $this->table_names();
		$this->insert_tables();
    }

    function table_names() {
        /************GLOBAL AND RELATED ATTRIBUTE TABLES*************/
        $GLOBALS[ 'sst_tables' ][ 'attr_html_global' ] = $this->full_prefix . 'attr_html_global';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_event' ] = $this->full_prefix . 'attr_html_event';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_global_class' ] = $this->full_prefix . 'attr_html_global_class';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_global_data' ] = $this->full_prefix . 'attr_html_global_data';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemprop' ] = $this->full_prefix . 'attr_html_global_itemprop';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemref' ] = $this->full_prefix . 'attr_html_global_itemref';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_global_style' ] = $this->full_prefix . 'attr_html_global_style';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_event' ] = $this->full_prefix . 'attr_html_event';
        $GLOBALS[ 'sst_tables' ][ 'attr_html_event_jsfunction' ] = $this->full_prefix . 'attr_html_event_jsfunction';
        /************CUSTOM ATTRIBUTE AND RELATED ATTRIBUTE TABLES*************/
        $GLOBALS[ 'sst_tables' ][ 'attr_custom' ] = $this->full_prefix . 'attr_custom';
        /************COMMON INPUT ATTRIBUTE AND RELATED ATTRIBUTE TABLES*************/
        $GLOBALS[ 'sst_tables' ][ 'input' ] = $this->full_prefix . 'input';
        $GLOBALS[ 'sst_tables' ][ 'input_type' ] = $this->full_prefix . 'input_types';
        /************SPECIFIC INPUT ATTRIBUTE AND RELATED ATTRIBUTE TABLES*************/
        $GLOBALS[ 'sst_tables' ][ 'attr_input_checkbox_radio' ] = $this->full_prefix . 'attr_input_checkbox_radio';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_color' ] = $this->full_prefix . 'attr_input_color';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_file' ] = $this->full_prefix . 'attr_input_file';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_submit' ] = $this->full_prefix . 'attr_input_submit';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_range' ] = $this->full_prefix . 'attr_input_range';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_date_time_related' ] = $this->full_prefix . 'attr_input_date_time_related';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_password' ] = $this->full_prefix . 'attr_input_password';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_number' ] = $this->full_prefix . 'attr_input_number';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_image' ] = $this->full_prefix . 'attr_input_image';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_tel_url' ] = $this->full_prefix . 'attr_input_tel_url';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_email' ] = $this->full_prefix . 'attr_input_email';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] = $this->full_prefix . 'attr_input_text_search';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_select' ] = $this->full_prefix . 'attr_input_select';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_textarea' ] = $this->full_prefix . 'attr_input_textarea';
        /************SPECIFIC RELATED INPUT ATTRIBUTE AND RELATED ATTRIBUTE TABLES*************/
        $GLOBALS[ 'sst_tables' ][ 'attr_input_select_optgroup' ] = $this->full_prefix . 'attr_input_select_optgroup';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_select_options' ] = $this->full_prefix . 'attr_input_select_options';
        $GLOBALS[ 'sst_tables' ][ 'attr_input_attr_list' ] = $this->full_prefix . 'attr_input_attr_list';
		$GLOBALS['sst_tables']['attr_input_file_accept'] = $this->full_prefix.'attr_input_file_accept';
    }

    function insert_tables() {
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_attr_list' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`source_type` VARCHAR(255) DEFAULT NULL COMMENT 'Values:query | json_url | value'," .
        "`disabled` VARCHAR(255) DEFAULT NULL," .
        "`label` VARCHAR(255) DEFAULT NULL," .
        "`value` VARCHAR(255) DEFAULT NULL," .
        "`query` LONGTEXT DEFAULT NULL," . //query will override value
        "`query_label_function` LONGTEXT DEFAULT NULL," .
        "`query_value_function` LONGTEXT DEFAULT NULL," .
        "`json_url` LONGTEXT DEFAULT NULL," .
        "`json_label_pointer` VARCHAR(255) DEFAULT NULL," .
        "`json_value_pointer` VARCHAR(255) DEFAULT NULL," .
        "`attr_html_global_id` VARCHAR(255) DEFAULT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
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
    PRIMARY KEY id  (`id`)) $this->collate_charset;";
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
    PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemprop' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`itemprop` VARCHAR(255) NOT NULL COMMENT 'Values:URL | String.NOTE: Disallow \':\' characters in non-URL values.Space and \'.\' is not allowed.'," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemref' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`itemref` VARCHAR(255) NOT NULL COMMENT 'Values:Id of other HTML element. Id rules: any string but with there are limitations as id\'s value must not contain whitespace (spaces, tabs etc.) .Using characters except ASCII letters, digits, _, - and . may cause compatibility problems, as they weren\'t allowed in HTML 4. Though this restriction has been lifted in HTML5, an ID should start with a letter for compatibility.'," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $this->collate_charset;";

        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global_style' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`css_attribute` VARCHAR(255) NOT NULL COMMENT 'Values:properties defined in https://www.w3.org/Style/CSS/all-properties.en.html'," .
        "`css_value` VARCHAR(255) NOT NULL COMMENT 'Values:CSS properties values'," .
        "`important` VARCHAR(255) NOT NULL COMMENT 'Values:true | false'," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_select_optgroup' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`label` VARCHAR(255) NOT NULL," .
        "`option_ids` VARCHAR(255) NOT NULL," .
        "`attr_html_global_id` VARCHAR(255) DEFAULT NULL," .
        "`description` LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_select_options' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`source_type` VARCHAR(255) DEFAULT NULL COMMENT 'Values:query | json_url | value'," .
        "`text` VARCHAR(255) NOT NULL," .
        "`disabled` VARCHAR(255) NOT NULL," .
        "`label` VARCHAR(255) NOT NULL," .
        "`selected` VARCHAR(255) NOT NULL," .
        "`value` VARCHAR(255) NOT NULL," .
        "`query` LONGTEXT DEFAULT NULL," .
        "`query_text_function` LONGTEXT DEFAULT NULL," .
        "`query_label_function` LONGTEXT DEFAULT NULL," .
        "`query_value_function` LONGTEXT DEFAULT NULL," .
        "`json_url` LONGTEXT DEFAULT NULL," .
        "`json_text_pointer` VARCHAR(255) DEFAULT NULL," .
        "`json_label_pointer` VARCHAR(255) DEFAULT NULL," .
        "`json_value_pointer` VARCHAR(255) DEFAULT NULL," .
        "`attr_html_global_id` VARCHAR(255) DEFAULT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

        # Global Attributes
        # These attributes is not specific to inputs and is for all HTML elements
        ################################################################################################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_html_global' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`accesskey` VARCHAR(255) NOT NULL COMMENT 'Values:visit:https://html.spec.whatwg.org/dev/interaction.html#the-accesskey-attribute'," .
        "`autocapitalize` VARCHAR(255) NOT NULL COMMENT 'Values:off or none(No capitalize letter) | on or sentences(First letter of sentence) | words(First letter of words) | characters(ALL characters uppercase)'," .
        "`class_ids` VARCHAR(255) NOT NULL COMMENT 'Values:Ids of attr_html_global_class table this support complex ids.'," .
        "`contenteditable` VARCHAR(255) NOT NULL COMMENT 'Values:true | false.'," .
        "`contextmenu` VARCHAR(255) NOT NULL COMMENT 'NOTE:This is obsolete Values:The id name of <menu> element'," .
        "`data_ids` VARCHAR(255) NOT NULL COMMENT 'Values:Ids of attr_html_global_data table this support complex ids.'," .
        "`dir` VARCHAR(255) NOT NULL COMMENT 'Values:ltr | rtl | auto. NOTE: IE/Edge does not support the auto keyword on elements'," .
        "`draggable` VARCHAR(255) NOT NULL COMMENT 'Values:true | false | auto.'," .
        "`dropzone` VARCHAR(255) NOT NULL COMMENT 'Values:copy | move | link. NOTE:The most of browser not support this attribute (Samsung browser supports). This is This is an experimental technology.'," .
        "`hidden` VARCHAR(255) NOT NULL COMMENT 'Values:true | false.'," .
        "`the_id` VARCHAR(255) NOT NULL COMMENT 'Values:Any string but with there are limitations as id\'s value must not contain whitespace (spaces, tabs etc.) .Using characters except ASCII letters, digits, _, - and . may cause compatibility problems, as they weren\'t allowed in HTML 4. Though this restriction has been lifted in HTML5, an ID should start with a letter for compatibility.'," .
        "`inputmode` VARCHAR(255) NOT NULL COMMENT 'Values:none | text | decimal | numeric | tel | search | email | url.'," .
        "`is` VARCHAR(255) NOT NULL COMMENT 'Values:JS custom element defined. Specified custom element name has been successfully defined in the document, and extends the element type it is being applied to it. Custom element names should start with a-z and contain a-z and at least one - with optionally 0-9.You should not use the x-, polymer-, ng- prefixes. Visit:https://github.com/sindresorhus/validate-element-name'," .
        "`itemid` VARCHAR(255) NOT NULL COMMENT 'Values:The Whatwg.org definition specifies that an itemid must be a URL. However, URN may also be used. Note:An itemid attribute can only be specified for an element that has both itemscope and itemtype attributes'," .
        "`itemprop_ids` VARCHAR(255) NOT NULL COMMENT 'Values:Ids of attr_html_global_itemprop table this support complex ids.'," .
        "`itemref_ids` VARCHAR(255) NOT NULL COMMENT 'Values:Ids of attr_html_global_itemref table this support complex ids. NOTE: Itemref attribute can only be specified on elements that have an itemscope attribute specified.'," .
        "`itemscope` VARCHAR(255) NOT NULL COMMENT 'Values:Not NULL value define itemscope. NOTE:Itemscope has no value at all'," .
        "`itemtype` VARCHAR(255) NOT NULL COMMENT 'Values:URL. URL to schema project defined type see:http://schema.org/Thing'," .
        "`lang` VARCHAR(255) NOT NULL COMMENT 'Values:Language code,may with hyphen-separated language subtags.Visit registerd languages:http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry.And visit this github project to see and search all subtag language codes:https://r12a.github.io/app-subtags/'," .
        "`onevent_ids` VARCHAR(255) NOT NULL COMMENT 'Values:Ids of attr_html_event table this support complex ids'," .
        "`slot` VARCHAR(255) NOT NULL COMMENT 'Values:The name of slot element.this follow the rule of attribute name value.This is an experimental technology'," .
        "`spellcheck` VARCHAR(255) NOT NULL COMMENT 'Values:true | false.'," .
        "`style_ids` VARCHAR(255) NOT NULL COMMENT 'Values:Ids of attr_html_global_style table this support complex ids.'," .
        "`tabindex` VARCHAR(255) NOT NULL COMMENT 'Values:-1 (Unreachable by tab) | 0 (Make reachable by tab) | Positive numbers (Sequence of reaching by tab).'," .
        "`title` VARCHAR(255) NOT NULL COMMENT 'Values:No limitation even multiline is acceptable.'," .
        "`translate` VARCHAR(255) NOT NULL COMMENT 'Values:yes | no.'," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $this->collate_charset " .
        " COMMENT 'This table contain all HTML5 global tags this mean ALL not only input elements.'";

        ################################################################################################################################
        # Global Attributes
        # These attributes is not specific to inputs and is for all HTML elements
        ################################################################################################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_custom' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`attr_name` VARCHAR(255) NOT NULL," .
        "`attr_value` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY id  (`id`)) $this->collate_charset " .
        " COMMENT 'This table contain all HTML5 global tags this mean ALL not only input elements.'";

        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_select' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`unselected_text` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`multiple` VARCHAR(255) NOT NULL," .
        "`required` VARCHAR(255) NOT NULL," .
        "`size` VARCHAR(255) NOT NULL," .
        "`show_first` VARCHAR(255) NOT NULL," .
        "`optgroup_ids` VARCHAR(255) NOT NULL," .
        "`option_ids` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_checkbox_radio' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`checked` VARCHAR(255) NOT NULL," .
        "`required` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_color' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`list` VARCHAR(255) NOT NULL," .
        "`list_ids` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_file' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`accept_ids` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`capture` VARCHAR(255) NOT NULL," .
        "`multiple` VARCHAR(255) NOT NULL," .
        "`required` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_submit' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`formaction` VARCHAR(255) NOT NULL," .
        "`formenctype` VARCHAR(255) NOT NULL," .
        "`formmethod` VARCHAR(255) NOT NULL," .
        "`formnovalidate` VARCHAR(255) NOT NULL," .
        "`formtarget` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_range' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`list` VARCHAR(255) NOT NULL," .
        "`list_ids` VARCHAR(255) NOT NULL," .
        "`max` VARCHAR(255) NOT NULL," .
        "`min` VARCHAR(255) NOT NULL," .
        "`multiple` VARCHAR(255) NOT NULL," .
        "`step` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_date_time_related' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`list` VARCHAR(255) NOT NULL," .
        "`list_ids` VARCHAR(255) NOT NULL," .
        "`max` VARCHAR(255) NOT NULL," .
        "`min` VARCHAR(255) NOT NULL," .
        "`readonly` VARCHAR(255) NOT NULL," .
        "`required` VARCHAR(255) NOT NULL," .
        "`step` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_password' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_number' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`list` VARCHAR(255) NOT NULL," .
        "`list_ids` VARCHAR(255) NOT NULL," .
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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_image' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`alt` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_tel_url' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`list` VARCHAR(255) NOT NULL," .
        "`list_ids` VARCHAR(255) NOT NULL," .
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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_email' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`autofocus` VARCHAR(255) NOT NULL," .
        "`list` VARCHAR(255) NOT NULL," .
        "`list_ids` VARCHAR(255) NOT NULL," .
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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_text_search' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL COMMENT 'Values:can contain one, two or three part space seperated,{generic,person,contact} {sectio-*} {opt}.the part of section and opt is optional and opt name must be matched by its type of generic,person,contact. visit:https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete'," .
        "`autofocus` VARCHAR(255) NOT NULL COMMENT 'Values:autofocus'," .
        "`dirname` VARCHAR(255) NOT NULL COMMENT 'Values:any+.dir. to making it easy we attach it .dir automatically so you dont attach .dir'," .
        "`list` VARCHAR(255) NOT NULL COMMENT 'Values:id of datalist element.'," .
        "`list_ids` VARCHAR(255) NOT NULL COMMENT 'Values:id of datalist element.'," .
        "`maxlength` VARCHAR(255) NOT NULL COMMENT 'Values:any number positive and negative, negative means no limit zero applied to prevent typing.'," .
        "`minlength` VARCHAR(255) NOT NULL COMMENT 'Values:any number positive and negative, negative means no limit zero applied to prevent typing.'," .
        "`pattern` VARCHAR(255) NOT NULL COMMENT 'Values:Regular expression pattern'," .
        "`placeholder` VARCHAR(255) NOT NULL COMMENT 'Values:any string'," .
        "`readonly` VARCHAR(255) NOT NULL COMMENT 'Values:readonly'," .
        "`required` VARCHAR(255) NOT NULL COMMENT 'Values:required'," .
        "`size` VARCHAR(255) NOT NULL COMMENT 'Values:any number positive and negative,zero and negative means default.'," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ##################################################
        ##################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'attr_input_textarea' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`text`  LONGTEXT DEFAULT NULL," .
        "`autocomplete` VARCHAR(255) NOT NULL," .
        "`cols` VARCHAR(255) NOT NULL," .
        "`maxlength` VARCHAR(255) NOT NULL," .
        "`minlength` VARCHAR(255) NOT NULL," .
        "`placeholder` VARCHAR(255) NOT NULL," .
        "`readonly` VARCHAR(255) NOT NULL," .
        "`required` VARCHAR(255) NOT NULL," .
        "`rows` VARCHAR(255) NOT NULL," .
        "`wrap` VARCHAR(255) NOT NULL," .
        "`description` LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

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
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
        ###################################################
        $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'input' ] . " (" .
        "`id` INT(10) NOT NULL auto_increment," .
        "`epithet` VARCHAR(255) NOT NULL," .
        "`slug` VARCHAR(255) NOT NULL," .
        "`tag_id` VARCHAR(255) NOT NULL," .
        "`disabled` VARCHAR(255) NOT NULL COMMENT 'Values:disabled'," .
        "`form` VARCHAR(255) NOT NULL COMMENT 'Values:id of form'," .
        "`name` VARCHAR(255) NOT NULL COMMENT 'Values:any string.Other than isindex, any non-empty value for name is allowed. The name _charset_ is special which applying in hidden input name return user encoding.'," . //
        "`type_id` VARCHAR(255) NOT NULL COMMENT 'Values:id of input type'," . //id of input_type table
        "`value` VARCHAR(255) NOT NULL COMMENT 'Values:any string'," .
        "`attr_html_global_id` VARCHAR(255) NOT NULL," . //these include all html global attributes
        "`attr_input_specific_id` VARCHAR(255) NOT NULL," . //these include input type specific ones
        "`attr_custom_ids` VARCHAR(255) NOT NULL," . //these include input type specific ones
        "`access_id` VARCHAR(255) NOT NULL," .
        "`extra` VARCHAR(255) NOT NULL," .
        "`description`  LONGTEXT DEFAULT NULL," .
        "`owner` VARCHAR(255) DEFAULT NULL," .
        "`created` DATETIME NOT NULL DEFAULT NOW()," .
        "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
		$this->create_tables($sql);
    }
}