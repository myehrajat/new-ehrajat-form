<?php
/**************************************************
 *version 1.0.0
 *these are tables which is created by the plugin
 **************************************************/

class insert_jqwidget_tables extends database {
  function __construct() {
    parent::__construct();
    $this->table_names();
    $this->insert_tables();
  }

  function table_names() {
    $GLOBALS[ 'sst_tables' ][ 'jqwidget' ] = $this->full_prefix . 'jqwidget';
    //top table jqwidget
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_appearance' ] = $this->full_prefix . 'jqwidget_appearance';
    //top table jqwidget
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_layout' ] = $this->full_prefix . 'jqwidget_layout';
    //top table jqwidget
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_behavior' ] = $this->full_prefix . 'jqwidget_behavior';
    //top table jqwidget_behavior
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_columns' ] = $this->full_prefix . 'jqwidget_columns';
    //top table jqwidget
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_dataadapter' ] = $this->full_prefix . 'jqwidget_dataadapter';
    //top table jqwidget_dataadapter
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_source' ] = $this->full_prefix . 'jqwidget_source';
    //top table jqwidget_source
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_datafields' ] = $this->full_prefix . 'jqwidget_datafields';
    //top table jqwidget_dataadapter
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_settings' ] = $this->full_prefix . 'jqwidget_settings';
    //top table jqwidget_behavior
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_columngroups' ] = $this->full_prefix . 'jqwidget_columngroups';
    //top table jqwidget_behavior
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_rowdetailstemplate' ] = $this->full_prefix . 'jqwidget_rowdetailstemplate';
    //top table jqwidget_source
    $GLOBALS[ 'sst_tables' ][ 'jqwidget_url_data' ] = $this->full_prefix . 'jqwidget_url_data';
  }

  function insert_tables() {
    global $wpdb;
    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`appearance_id` VARCHAR(255) default NULL," .
    "`layout_id` VARCHAR(255) default NULL," .
    "`behavior_id` VARCHAR(255) default NULL," .
    "`query` LONGTEXT NOT NULL," .
    "`eval` LONGTEXT NOT NULL," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_appearance' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`adaptive` VARCHAR(255) default NULL," .
    "`adaptivewidth` VARCHAR(255) default NULL," .
    "`altrows` VARCHAR(255) default NULL," .
    "`altstart` VARCHAR(255) default NULL," .
    "`altstep` VARCHAR(255) default NULL," .
    "`autoshowcolumnsmenubutton` VARCHAR(255) default NULL," .
    "`autoshowfiltericon` VARCHAR(255) default NULL," .
    "`autoshowloadelement` VARCHAR(255) default NULL," .
    "`cellhover` VARCHAR(255) default NULL," .
    "`clipboard` VARCHAR(255) default NULL," .
    "`closeablegroups` VARCHAR(255) default NULL," .
    "`columnmenuclosing` VARCHAR(255) default NULL," .
    "`columnmenuopening` VARCHAR(255) default NULL," .
    "`columnsmenuwidth` VARCHAR(255) default NULL," .
    "`enableanimations` VARCHAR(255) default NULL," .
    "`enablebrowserselection` VARCHAR(255) default NULL," .
    "`enableellipsis` VARCHAR(255) default NULL," .
    "`enablehover` VARCHAR(255) default NULL," .
    "`enablekeyboarddelete` VARCHAR(255) default NULL," .
    "`enablemousewheel` VARCHAR(255) default NULL," .
    "`enabletooltips` VARCHAR(255) default NULL," .
    "`everpresentrowactions` VARCHAR(255) default NULL," .
    "`everpresentrowactionsmode` VARCHAR(255) default NULL," .
    "`everpresentrowheight` VARCHAR(255) default NULL," .
    "`everpresentrowposition` VARCHAR(255) default NULL," .
    "`filterbarmode` VARCHAR(255) default NULL," .
    "`filtermode` VARCHAR(255) default NULL," .
    "`filterrowheight` VARCHAR(255) default NULL," .
    "`groupcolumnrenderer` VARCHAR(255) default NULL," .
    "`groupsexpandedbydefault` VARCHAR(255) default NULL," .
    "`groupsrenderer` VARCHAR(255) default NULL," .
    "`handlekeyboardnavigation` VARCHAR(255) default NULL," .
    "`pagerrenderer` VARCHAR(255) default NULL," .
    "`rtl` VARCHAR(255) default NULL," .
    "`selectionmode` VARCHAR(255) default NULL," .
    "`showaggregates` VARCHAR(255) default NULL," .
    "`showdefaultloadelement` VARCHAR(255) default NULL," .
    "`showemptyrow` VARCHAR(255) default NULL," .
    "`showeverpresentrow` VARCHAR(255) default NULL," .
    "`showfilterbar` VARCHAR(255) default NULL," .
    "`showfiltercolumnbackground` VARCHAR(255) default NULL," .
    "`showfiltermenuitems` VARCHAR(255) default NULL," .
    "`showfilterrow` VARCHAR(255) default NULL," .
    "`showgroupaggregates` VARCHAR(255) default NULL," .
    "`showgroupmenuitems` VARCHAR(255) default NULL," .
    "`showgroupsheader` VARCHAR(255) default NULL," .
    "`showheader` VARCHAR(255) default NULL," .
    "`showpinnedcolumnbackground` VARCHAR(255) default NULL," .
    "`showrowdetailscolumn` VARCHAR(255) default NULL," .
    "`showsortcolumnbackground` VARCHAR(255) default NULL," .
    "`showsortmenuitems` VARCHAR(255) default NULL," .
    "`showstatusbar` VARCHAR(255) default NULL," .
    "`showtoolbar` VARCHAR(255) default NULL," .
    "`statusbarheight` VARCHAR(255) default NULL," .
    "`theme` VARCHAR(255) default NULL," .
    "`toolbarheight` VARCHAR(255) default NULL," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_layout' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`autoheight` VARCHAR(255) default NULL," .
    "`autorowheight` VARCHAR(255) default NULL," .
    "`columnsheight` VARCHAR(255) default NULL," .
    "`deferreddatafields_ids` VARCHAR(255) default NULL," .
    "`groupindentwidth` VARCHAR(255) default NULL," .
    "`groupsheaderheight` VARCHAR(255) default NULL," .
    "`height` VARCHAR(255) default NULL," .
    "`pagerheight` VARCHAR(255) default NULL," .
    "`rowsheight` VARCHAR(255) default NULL," .
    "`scrollbarsize` VARCHAR(255) default NULL," .
    "`scrollfeedback` VARCHAR(255) default NULL," .
    "`scrollmode` VARCHAR(255) default NULL," .
    "`width` VARCHAR(255) default NULL," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_behavior' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`autofill` VARCHAR(255) default NULL," .
    "`autoloadstate` VARCHAR(255) default NULL," .
    "`autosavestate` VARCHAR(255) default NULL," .
    "`columngroups_ids` VARCHAR(255) default NULL," .
    "`columns_ids` VARCHAR(255) default NULL," .
    "`columnsautoresize` VARCHAR(255) default NULL," .
    "`columnsmenu` VARCHAR(255) default NULL," .
    "`columnsreorder` VARCHAR(255) default NULL," .
    "`columnsresize` VARCHAR(255) default NULL," .
    "`disabled` VARCHAR(255) default NULL," .
    "`editable` VARCHAR(255) default NULL," .
    "`editmode` VARCHAR(255) default NULL," .
    "`filter` VARCHAR(255) default NULL," .
    "`filterable` VARCHAR(255) default NULL," .
    "`groupable` VARCHAR(255) default NULL," .
    "`groups_ids` VARCHAR(255) default NULL," .
    "`horizontalscrollbarlargestep` VARCHAR(255) default NULL," .
    "`horizontalscrollbarstep` VARCHAR(255) default NULL," .
    "`initrowdetails` VARCHAR(255) default NULL," .
    "`keyboardnavigation` VARCHAR(255) default NULL," .
    "`pageable` VARCHAR(255) default NULL," .
    "`pagerbuttonscount` VARCHAR(255) default NULL," .
    "`pagermode` VARCHAR(255) default NULL," .
    "`pagesize` VARCHAR(255) default NULL," .
    "`pagesizeoptions` VARCHAR(255) default NULL," .
    "`ready` VARCHAR(255) default NULL," .
    "`rendered` VARCHAR(255) default NULL," .
    "`rendergridrows` VARCHAR(255) default NULL," .
    "`renderstatusbar` VARCHAR(255) default NULL," .
    "`rendertoolbar` VARCHAR(255) default NULL," .
    "`rowdetails` VARCHAR(255) default NULL," .
    "`rowdetailstemplate_id` VARCHAR(255) default NULL," .
    "`selectedrowindex` VARCHAR(255) default NULL," .
    "`selectedrowindexes` VARCHAR(255) default NULL," .
    "`sortable` VARCHAR(255) default NULL," .
    "`sortmode` VARCHAR(255) default NULL," .
    "`sorttogglestates` VARCHAR(255) default NULL," .
    "`source_dataadapter_id` VARCHAR(255) default NULL," .
    "`updatedelay` VARCHAR(255) default NULL," .
    "`verticalscrollbarlargestep` VARCHAR(255) default NULL," .
    "`verticalscrollbarstep` VARCHAR(255) default NULL," .
    "`virtualmode` VARCHAR(255) default NULL," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_columns' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`aggregates` VARCHAR(255) default NULL COMMENT 'Aggregate functions:
    \'avg\' - Average aggregate
    \'count\' - Count aggregate
    \'min\' - Min aggregate
    \'max\' - Max aggregate
    \'sum\' - Sum aggregate
    \'product\' - Product aggregate
    \'stdev\' - Standard deviation on a sample.
    \'stdevp\' - Standard deviation on an entire population.
    \'varp\' - Variance on an entire population.
    \'var\' - Variance on a sample.'," .
    "`aggregatesrenderer` VARCHAR(255) default NULL COMMENT 'sets a custom rendering function of the column\'s aggregates. The function gets passed one parameter - the column\'s aggregates.'," .
    "`align` VARCHAR(255) default NULL COMMENT 'sets the column header\'s alignment to \'left\', \'center\' or \'right\''," .
    "`cellbeginedit` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a cell enters into edit mode. The Grid passes 3 parameters to it - row index, column data field and column type. The function can be used for canceling the editing of a specific Grid cell. To cancel the editing, the function should return false.'," .
    "`cellclassname` VARCHAR(255) default NULL COMMENT 'sets a custom CSS class for the column\'s cells. The value could be a \"String\" or \"Function\"'," .
    "`cellendedit` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a cell leaves the edit mode. The Grid passes 5 parameters to it - row index, column data field, column type, old cell value, new cell value. The function can be used for canceling the changes of a specific Grid cell. To cancel the changes, the function should return false.'," .
    "`cellsalign` VARCHAR(255) default NULL COMMENT 'sets the cells alignment to \'left\', \'center\' or \'right\'.'," .
    "`cellsformat` VARCHAR(255) default NULL COMMENT 'sets the formatting of the grid cells. visit:https://www.jqwidgets.com/jquery-widgets-documentation/documentation/jqxgrid/jquery-grid-api.htm?search=columns'," .
    "`cellsrenderer` LONGTEXT default NULL COMMENT 'sets a custom rendering function. The cellsrenderer function is called when a cell in the column is rendered. You can use it to override the built-in cells rendering. The cellsRenderer function has 6 parameters passed by jqxGrid - row index, data field, cell value, defaultHtml string that is rendered by the grid, column\'s settings and the entire row\'s data as JSON object.'," .
    "`cellvaluechanging` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a cell\'s value is going to be changed The Grid passes 5 parameters to it - row index, column data field, column type, old cell value, new cell value. The function can be used for modifying the edited value.'," .
    "`classname` VARCHAR(255) default NULL COMMENT 'sets a custom CSS class for the column\'s header'," .
    "`columngroup_id` VARCHAR(255) default NULL COMMENT 'determines the name of the column\'s parent group.
enabletooltips - determines whether tooltips are enabled.'," .
    "`columntype` VARCHAR(255) default NULL COMMENT 'sets the column\'s type.
Possible values:number|checkbox|numberinput|dropdownlist|combobox|datetimeinput|textbox|template|custom'," .
    "`createeditor` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when the cells editor is created. The Grid passes 6 parameters to it - row index, cell value, the editor element, cell\'s text, cell\'s width and cell\'s height. The function can be used for adding some custom parameters to the editor. This function is called only once - when the editor is created. '," .
    "`createeverpresentrowwidget` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in the ever present row(showeverpresentrow should be true) is created. datafield is the column\'s datafield. htmlElement is the Cell\'s DIV tag. popup is the popup displayed below the cell. addRowCallback is a function which you can call to trigger the \"Add\" action.'," .
    "`createfilterpanel` VARCHAR(255) default NULL COMMENT 'sets a custom function for overriding the Grid\'s Filter Menu. The column\'s filtertype should be set to \"custom\" in order to use that option. The grid passes the column\'s field and filter panel as parameters.'," .
    "`createfilterwidget` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget from the filter row is created. You can use this callback function to set up additional settings of the filter widget. The Grid passes 3 parameters to it - column, the column\'s HTML element and the filter widget.'," .
    "`createwidget` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in a cell is created. You can use this callback function to create a custom read-only column which displays widgets in the cells. The Grid passes 4 parameters to it - row, column, cell value and the cell\'s element.'," .
    "`datafield_id` VARCHAR(255) default NULL COMMENT 'sets the column datafield.'," .
    "`destroyeditor` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a custom cell editor is destroyed. The function is called only when the \"columntype\" property is set to \"custom \"and \"template\". In all other cases, jqxGrid automatically destroys the editors. The Grid passes 1 parameter to it - the editor element. If the \"columntype\" is \"custom\", the Grid passes the row\'s bound index as a second parameter.'," .
    "`destroyeverpresentrowwidget` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in the ever present row(showeverpresentrow should be true) is destroyed. The function is useful for destroying custom widgets.'," .
    "`displayfield` VARCHAR(255) default NULL COMMENT 'sets the column\'s displayfield. The displayfield specifies the field in the data source from which the column to retrieve strings for display.'," .
    "`draggable` VARCHAR(255) default NULL COMMENT 'enables or disables the column dragging'," .
    "`editable` VARCHAR(255) default NULL COMMENT 'enables or disables the cells editing'," .
    "`exportable` VARCHAR(255) default NULL COMMENT 'determines whether the column will be exported when the Grid\'s export method is called.'," .
    "`filter` VARCHAR(255) default NULL COMMENT 'sets the column\'s initialization filter. A $.jqx.filter object is expected.'," .
    "`filterable` VARCHAR(255) default NULL COMMENT 'enables or disables the filtering.'," .
    "`filtercondition` VARCHAR(255) default NULL COMMENT 'determines the filter condition of columns with filtertype equal to \'textbox\' or \'number\'. // possible conditions for string filter: \'EMPTY\', \'NOT_EMPTY\', \'CONTAINS\', \'CONTAINS_CASE_SENSITIVE\', // \'DOES_NOT_CONTAIN\', \'DOES_NOT_CONTAIN_CASE_SENSITIVE\', \'STARTS_WITH\', \'STARTS_WITH_CASE_SENSITIVE\', // \'ENDS_WITH\', \'ENDS_WITH_CASE_SENSITIVE\', \'EQUAL\', \'EQUAL_CASE_SENSITIVE\', \'NULL\', \'NOT_NULL\' // possible conditions for numeric filter: \'EQUAL\', \'NOT_EQUAL\', \'LESS_THAN\', \'LESS_THAN_OR_EQUAL\', \'GREATER_THAN\', \'GREATER_THAN_OR_EQUAL\', \'NULL\', \'NOT_NULL\' '," .
    "`filterdelay` VARCHAR(255) default NULL COMMENT 'sets the auto-filter timeout delay for \'text\' and \'number\' filters in the filter row. Default value: 800'," .
    "`filteritems` VARCHAR(255) default NULL COMMENT 'sets the items displayed in the list filter - when the \"showfilterrow\" \"checkedlist\". The expected value is Array or jqxDataAdapter instance.'," .
    "`filtertype` VARCHAR(255) default NULL COMMENT 'sets the filter\'s type.

    \'textbox\' - basic text field.
    \'input\' - input field with dropdownlist for choosing the filter condition. *Only when \"showfilterrow\" is true.
    \'checkedlist\' - dropdownlist with checkboxes that specify which records should be visible and hidden.
    \'list\' - dropdownlist which specifies the visible records depending on the selection.
    \'number\' - numeric input field. *Only when \"showfilterrow\" is true.
    \'checkbox\' - filter for boolean data. *Only when \"showfilterrow\" is true.
    \'date\' - filter for dates.
    \'range\' - filter for date ranges. *Only when \"showfilterrow\" is true.
    \'custom\' - allows you to create custom filter menu widgets. *Only when \"showfilterrow\" is false.'," .

    "`geteditorvalue` VARCHAR(255) default NULL COMMENT 'gets the editor\'s value to be displayed in the cell. The function can be used for overriding the value returned by the editor. It is useful for advanced scenarios with custom editors and edit templates. The Grid passes 3 parameters to it - row\'s bound index index, cell value and the editor element.'," .
    "`geteverpresentrowwidgetvalue` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in the ever present row(showeverpresentrow should be true) should return its value.'," .
    "`groupable` VARCHAR(255) default NULL COMMENT 'sets whether the user can group by this column.'," .
    "`hidden` VARCHAR(255) default NULL COMMENT 'hides or shows the column.'," .
    "`hideable` VARCHAR(255) default NULL COMMENT 'enables or disables whether the column can be hidden.'," .
    "`initeditor` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when the cells editor is opened. The Grid passes 6 parameters to it - row index, cell value, the editor element, cell\'s text, the pressed char. The function can be used for adding some custom parameters to the editor. This function is called each time an editor is opened.'," .
    "`initeverpresentrowwidget` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in the ever present row(showeverpresentrow should be true) is being initialized.'," .
    "`initwidget` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in a cell needs to be updated. The function is called only if \"createwidget\" is defined. You can use this callback function to update a widget inside a custom read-only column. The Grid passes 4 parameters to it - row, column, cell value and the cell\'s element. '," .
    "`maxwidth` VARCHAR(255) default NULL COMMENT 'sets the column\'s max width.'," .
    "`menu` VARCHAR(255) default NULL COMMENT 'sets whether the menu button is displayed when the user moves the mouse cursor over the column\'s header.'," .
    "`minwidth` VARCHAR(255) default NULL COMMENT 'sets the column\'s min width.'," .
    "`nullable` VARCHAR(255) default NULL COMMENT 'enables or disables whether null values are allowed.'," .
    "`pinned` VARCHAR(255) default NULL COMMENT 'pins or unpins the column. If the column is pinned, it will be displayed as frozen and will be visible when the user horizontally scrolls the grid contents.'," .
    "`rendered` VARCHAR(255) default NULL COMMENT 'callback function that is called when the column is rendered. You can use it to set additional settings to the column\'s header element.'," .
    "`renderer` VARCHAR(255) default NULL COMMENT 'sets a custom column renderer. This can be used for changing the built-in rendering of the column\'s header.'," .
    "`reseteverpresentrowwidgetvalue` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in the ever present row(showeverpresentrow should be true) should reset its value.'," .
    "`resizable` VARCHAR(255) default NULL COMMENT 'enables or disables the column resizing.'," .
    "`sortable` VARCHAR(255) default NULL COMMENT 'enables or disables the sorting.'," .
    "`text` VARCHAR(255) default NULL COMMENT 'sets the column text.'," .
    "`validateeverpresentrowwidgetvalue` VARCHAR(255) default NULL COMMENT 'sets a custom function which is called when a widget in the ever present row(showeverpresentrow should be true) should validate its value. '," .
    "`validation` VARCHAR(255) default NULL COMMENT 'sets a custom validation function. The Grid passes 2 parameters to it - edit cell and the cell\'s value. The function should return true or false, depending on the user\'s validation logic. It can also return a validation object with 2 fields - \"result\" - true or false, and \"message\" - validation string displayed to the users.'," .
    "`width` VARCHAR(255) default NULL COMMENT 'sets the column width.'," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
    //https://www.jqwidgets.com/jquery-widgets-documentation/documentation/jqxdataadapter/jquery-data-adapter.htm
    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_dataadapter' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`source_id` VARCHAR(255) default NULL," .
    "`settings_id` VARCHAR(255) default NULL," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    //https://www.jqwidgets.com/jquery-widgets-documentation/documentation/jqxgrid/jquery-grid-datasources.htm?search=grid
    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_source' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`url` VARCHAR(255) default NULL COMMENT 'A string containing the URL to which the request is sent. '," .
    "`timeout` VARCHAR(255) default NULL COMMENT 'Aborts the data binding on timeout. The default value is null.'," .
    "`data_ids` VARCHAR(255) default NULL COMMENT 'Data to be sent to the server'," .
    "`localdata` VARCHAR(255) default NULL COMMENT 'data array or data string pointing to a local data source.'," .
    "`datatype` VARCHAR(255) default NULL COMMENT ' the data\'s type. Possible values: \'xml\', \'json\', \'jsonp\', \'tsv\', \'csv\', \'local\', \'array\'. '," .
    "`type` VARCHAR(255) default NULL COMMENT 'The type of request to make (\"POST\" or \"GET\"), default is \"GET\" '," .
    "`the_id` VARCHAR(255) default NULL COMMENT ' A string containing the Id data field. '," .
    "`root` VARCHAR(255) default NULL COMMENT 'A string describing where the data begins and all other loops begin from this element '," .
    "`record` VARCHAR(255) default NULL COMMENT ' A string describing the information for a particular record. '," .
    "`datafields_ids` VARCHAR(255) default NULL COMMENT 'An array describing the fields in a particular record. Each datafield must define the following members:

    name - A string containing the data field\'s name.
    type - A string containing the data field\'s type. Possible values: \'string\', \'date\', \'number\', \'float\', \'int\' and \'bool\'
    format(optional) - Sets the data formatting. By setting the format, the jqxDataAdapter plug-in will try to format the data before loading it.
    Example: { name: \'SubmitDate\', type: \'date\', format: \"yyyy-MM-ddTHH:mm:ss-HH:mm\" }
    map(optional) - A mapping to the data field.'," .
    "`pagenum` VARCHAR(255) default NULL COMMENT 'determines the initial page number when paging is enabled.'," .
    "`pagesize` VARCHAR(255) default NULL COMMENT ' determines the page size when paging is enabled.'," .
    "`pager` LONGTEXT NOT NULL COMMENT 'callback function called when the current page or page size is changed. '," .
    "`sortcolumn` VARCHAR(255) default NULL COMMENT 'determines the initial sort column. The expected value is a data field name.'," .
    "`sortdirection` VARCHAR(255) default NULL COMMENT 'determines the sort order. The expected value is \'asc\' for (A to Z) sorting or \'desc\' for (Z to A) sorting.'," .
    "`sort` LONGTEXT NOT NULL COMMENT 'callback function called when the sort column or sort order is changed. '," .
    "`filter` LONGTEXT NOT NULL COMMENT ' callback function called when a filter is applied or removed. '," .
    "`addrow` LONGTEXT NOT NULL COMMENT 'callback function, called when a new row is/are added. If multiple rows are added, the rowid and rowdata parameters are arrays of row ids and rows. '," .
    "`deleterow` LONGTEXT NOT NULL COMMENT 'callback function, called when a row is deleted. If multiple rows are deleted, the rowid parameter is an array of row ids. '," .
    "`updaterow` LONGTEXT NOT NULL COMMENT 'callback function, called when a row is updated. If multiple rows are added, the rowid and rowdata parameters are arrays of row ids and rows. '," .
    "`processdata` LONGTEXT NOT NULL COMMENT 'extend the default data object sent to the server. '," .
    "`formatdata` LONGTEXT NOT NULL COMMENT 'Before the data is sent to the server, you can fully override it by using the \'formatdata\' function of the source object. The result that the \'formatdata\' function returns is actually what will be sent to the server. '," .
    "`contenttype` VARCHAR(255) default NULL COMMENT 'Use this option, If you want to explicitly pass in a content-type. Default is \"application/x-www-form-urlencoded\".'," .


    "`mapChar` VARCHAR(255) default NULL COMMENT 'specifies the mapping char. By default it is \'>\'. In the following code, if the mapChar was set to \'.\', we should use \'.\' instead of \'>\' to specify the fields map. '," .
    "`columnDelimiter` VARCHAR(255) default NULL COMMENT 'specifies the column delimiter when the data source is \'tab\' or \'csv\'. The default value for \'tab\' is \'\t\' and the default value for \'csv\' is \',\'.'," .
    "`rowDelimiter` VARCHAR(255) default NULL COMMENT 'specifies the rows delimiter when the data source is \'tab\' or \'csv\'. The default value is \'\n\'.'," .
    "`values` VARCHAR(255) default NULL COMMENT 'determines the foreign collection associated to the data field.'," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_datafields' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`dbcol` VARCHAR(255) default NULL," .
    "`name` VARCHAR(255) default NULL," .
    "`type` VARCHAR(255) default NULL," .
    "`format` VARCHAR(255) default NULL," .
    "`map` VARCHAR(255) default NULL," .
    "`eval` LONGTEXT NOT NULL," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_settings' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`async` VARCHAR(255) default NULL COMMENT 'By default, all requests are sent asynchronously (i.e. this is set to true by default). If you need synchronous requests, set this option to false. When the binding is \"asynchronous\", the data binding operation occurs in parallel and the order of completion is not guaranteed.'," .
    "`autoBind` VARCHAR(255) default NULL COMMENT 'Automatically calls the dataAdapter\'s dataBind method on initialization. The default value is false, because the widgets that use the dataAdapter plugin, invoke its dataBind method.'," .
    "`contentType` VARCHAR(255) default NULL COMMENT 'Use this option, If you want to explicitly pass in a content-type. Default is \"application/x-www-form-urlencoded\".'," .
    "`processData` VARCHAR(255) default NULL COMMENT 'A callback function which allows you to modify the default data object sent to the server.'," .
    "`formatData` VARCHAR(255) default NULL COMMENT 'A callback function which is called before the data is sent to the server. You can use it to fully override the data sent to the server. If you define a \'formatData\' function, the result that the function returns will be sent to the server. '," .
    "`beforeSend` VARCHAR(255) default NULL COMMENT 'A pre-request callback function that can be used to modify the jqXHR'," .
    "`loadError` VARCHAR(255) default NULL COMMENT 'A callback function called when the request has failed.'," .
    "`downloadComplete` VARCHAR(255) default NULL COMMENT 'A callback function which is called if the request succeeds. The function gets passed three arguments: The data returned from the server, formatted according to the dataType parameter; a string describing the status; and the jqXHR.'," .
    "`beforeLoadComplete` VARCHAR(255) default NULL COMMENT 'A callback function which is called before the data is fully loaded. The function gets passed two arguments: The loaded records. The second argument is the original data. If the function returns an array, the dataAdapter\'s records field will be set to it. '," .
    "`loadComplete` VARCHAR(255) default NULL COMMENT 'A callback function which is called when the data is fully loaded.'," .
    "`loadServerData` VARCHAR(255) default NULL COMMENT 'A callback function which allows you to manually handle the ajax calls through the jqxDataAdapter. The function gets passed three arguments: The data to be sent to the server, the source object which initializes the jqxDataAdapter plug-in and a callback function to be called when the ajax call is handled.'," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_columngroups' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`text` VARCHAR(255) default NULL," .
    "`parentgroup_id` VARCHAR(255) default NULL COMMENT 'sets the column header\'s parent group name.'," .
    "`name` VARCHAR(255) default NULL COMMENT 'sets the column header\'s name.'," .
    "`align` VARCHAR(255) default NULL COMMENT 'sets the column header\'s alignment to \'left\', \'center\' or \'right\'.'," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";

    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_rowdetailstemplate' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`rowdetails` LONGTEXT NOT NULL COMMENT 'The rowdetails field specifies the HTML used for details.'," .
    "`rowdetailsheight` VARCHAR(255) default NULL COMMENT 'The rowdetailsheight specifies the height of the details. '," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";
    $sql[] = "CREATE TABLE IF NOT EXISTS " . $GLOBALS[ 'sst_tables' ][ 'jqwidget_url_data' ] . " (" .
    "`id` INT(10) NOT NULL auto_increment," .
    "`epithet` VARCHAR(255) default NULL," .
    "`slug` VARCHAR(255) default NULL," .
    "`name` VARCHAR(255) default NULL COMMENT ''," .
    "`data` LONGTEXT NOT NULL COMMENT 'The data send to server'," .
    "`description` LONGTEXT NOT NULL," .
    "`owner` VARCHAR(255) DEFAULT NULL," .
    "`created` DATETIME NOT NULL DEFAULT NOW()," .
    "`modified` DATETIME NOT NULL DEFAULT NOW(),
        PRIMARY KEY id  (`id`)) $this->collate_charset;";


    $this->create_tables( $sql );
  }
}
new insert_jqwidget_tables;