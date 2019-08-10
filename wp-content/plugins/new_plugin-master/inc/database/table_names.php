<?php
/**************************************************
*version 1.0.0
*these are tables which is created by the plugin
**************************************************/
global $wpdb;
$full_prefix = $wpdb->prefix.DBPREFIX;
	$GLOBALS['sst_tables']['options'] = $full_prefix.'options';
	$GLOBALS['sst_tables']['attr_html_event_jsfunction'] = $full_prefix.'attr_html_event_jsfunction';

	$GLOBALS['sst_tables']['attr_html_event'] = $full_prefix.'attr_html_event';
	$GLOBALS['sst_tables']['attr_html_global_class'] = $full_prefix.'attr_html_global_class';
	$GLOBALS['sst_tables']['attr_html_global_data'] = $full_prefix.'attr_html_global_data';
	$GLOBALS['sst_tables']['attr_html_global_itemprop'] = $full_prefix.'attr_html_global_itemprop';
	$GLOBALS['sst_tables']['attr_html_global_itemref'] = $full_prefix.'attr_html_global_itemref';
	$GLOBALS['sst_tables']['attr_html_global_style'] = $full_prefix.'attr_html_global_style';
	$GLOBALS['sst_tables']['attr_input_file_accept'] = $full_prefix.'attr_input_file_accept';

	$GLOBALS['sst_tables']['attr_html_global'] = $full_prefix.'attr_html_global';
	$GLOBALS['sst_tables']['attr_input_common'] = $full_prefix.'attr_input_common';
	$GLOBALS['sst_tables']['attr_input_checkbox_radio'] = $full_prefix.'attr_input_checkbox_radio';
	$GLOBALS['sst_tables']['attr_input_color'] = $full_prefix.'attr_input_color';
	$GLOBALS['sst_tables']['attr_input_file'] = $full_prefix.'attr_input_file';
	$GLOBALS['sst_tables']['attr_input_submit'] = $full_prefix.'attr_input_submit';
	$GLOBALS['sst_tables']['attr_input_range'] = $full_prefix.'attr_input_range';
	$GLOBALS['sst_tables']['attr_input_date_time_related'] = $full_prefix.'attr_input_date_time_related';
	$GLOBALS['sst_tables']['attr_input_password'] = $full_prefix.'attr_input_password';
	$GLOBALS['sst_tables']['attr_input_number'] = $full_prefix.'attr_input_number';
	$GLOBALS['sst_tables']['attr_input_image'] = $full_prefix.'attr_input_image';
	$GLOBALS['sst_tables']['attr_input_tel_url'] = $full_prefix.'attr_input_tel_url';
	$GLOBALS['sst_tables']['attr_input_email'] = $full_prefix.'attr_input_email';
	$GLOBALS['sst_tables']['attr_input_text_search'] = $full_prefix.'attr_input_text_search';
	$GLOBALS['sst_tables']['language'] = $full_prefix.'language';

$GLOBALS['sst_tables']['input_type'] = $full_prefix.'input_types';
$GLOBALS['sst_tables']['input'] = $full_prefix.'input';



/*
$GLOBALS['sst_tables']['appearance'] = $full_prefix.'appearance';

$GLOBALS['sst_tables']['block'] = $full_prefix.'block';
$GLOBALS['sst_tables']['condition'] = $full_prefix.'condition';
$GLOBALS['sst_tables']['data_action'] = $full_prefix.'data_action';
$GLOBALS['sst_tables']['data_action_colval'] = $full_prefix.'data_action_colval';
$GLOBALS['sst_tables']['default_pack'] = $full_prefix.'default_pack';
$GLOBALS['sst_tables']['event'] = $full_prefix.'event';
$GLOBALS['sst_tables']['field'] = $full_prefix.'field';
$GLOBALS['sst_tables']['form'] = $full_prefix.'form';
$GLOBALS['sst_tables']['keyboard'] = $full_prefix.'keyboard';
$GLOBALS['sst_tables']['label'] = $full_prefix.'label';
$GLOBALS['sst_tables']['pack'] = $full_prefix.'pack';
$GLOBALS['sst_tables']['select_options'] = $full_prefix.'select_options';
//$GLOBALS['sst_tables']['standard'] = $full_prefix.'standard';
$GLOBALS['sst_tables']['standard_condition'] = $full_prefix.'standard_condition';
$GLOBALS['sst_tables']['standard_db'] = $full_prefix.'standard_db';
$GLOBALS['sst_tables']['standard_meta'] = $full_prefix.'standard_meta';
$GLOBALS['sst_tables']['vals'] = $full_prefix.'vals';
*/