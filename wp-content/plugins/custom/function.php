<?php

function sys_insert_currency_rate( $exchange_currency, $base_currency, $rate ) {
	//krumo('sssssssss');
	//krumo($exchange_currency);
	//krumo( $base_currency);
	//krumo( $rate );
  if ( !empty( $exchange_currency )and!empty( $base_currency )and!empty( $rate ) ) {
    database::add_to_table( $GLOBALS[ 'sst_custom' ][ 'currency_rate' ],
      array( 'base_currency_id' => $base_currency,
        'exchanged_currency_id' => $exchange_currency,
        'rate' => $rate ) );
  }
}