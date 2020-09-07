<?php
/**
 * Plugin Name:eval functions
 * Plugin URI: http://ehrajat.com
 * Description: your eval functions goes here
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
function sys_insert_currency_rate( $exchange_currency, $base_currency, $rate ) {
  if ( !empty( $exchange_currency )and!empty( $base_currency )and!empty( $rate ) ) {
    database::add_to_table( $GLOBALS[ 'sst_custom' ][ 'currency_rate' ],
      array( 'base_currency_id' => $base_currency,
        'exchanged_currency_id' => $exchange_currency,
        'rate' => $rate ) );
  }
}
function sys_fa_to_eng_number($string){
	 $persian = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    $arabic = ['٩', '٨', '٧', '٦', '٥', '٤', '٣', '٢', '١','٠'];

    $num = range(0, 9);
    $convertedPersianNums = str_replace($persian, $num, $string);
    $englishNumbersOnly = str_replace($arabic, $num, $convertedPersianNums);

    return $englishNumbersOnly;
}
function country_has_official_currency($country_id){
	global $wpdb;
	$q = "SELECT * FROM ".$wpdb->prefix . 'custom_' . 'currency'." WHERE country_id = ".$country_id." AND official = official LIMIT 1;";
	$results = $wpdb->get_results($q);
	if(empty($results)){
		return false;
	}else{
		return true;
	}
}
function sys_change_currency_unit($from_currency_id,$to_currency_id){
	global $wpdb;
	
}
//var_dump( );