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