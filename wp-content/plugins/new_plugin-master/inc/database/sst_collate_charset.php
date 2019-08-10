<?php
/**************************************************
 *version 1.0.0
 *this function set collate and and follow the configuration rules
 **************************************************/

function sst_collate_charset() {
	global $wpdb;
	if ( $wpdb->has_cap( 'set_charset' ) ) {
		if ( !empty( $wpdb->charset )and OVERRIDE_CHARSET == false ) {
			$set_charset = " CHARACTER SET " . $wpdb->charset . " ";
		} else {
			$set_charset = " CHARACTER SET " . CHARSET . " ";
		}
	}
	if ( $wpdb->has_cap( 'collation' )) {
		if ( !empty( $wpdb->collate )and OVERRIDE_COLLATION == false  ) {
			$collate = " COLLATE " . $wpdb->collate . " ";
		} else {
			$collate = " COLLATE " . COLLATION . " ";
		}
	}
	return $set_charset . $collate;

}