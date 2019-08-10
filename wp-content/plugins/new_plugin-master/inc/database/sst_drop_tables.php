<?php
/**************************************************
 *version 1.0.0
 *this function drop core tables
 **************************************************/

function sst_drop_tables() {
	global $wpdb;
	if ( DROP_ON_DEACTIVATION ) {
		if(DONT_DROP_VALS){
			 unset($GLOBALS[ 'sst_tables' ]['vals']);
		}
		foreach ( $GLOBALS[ 'sst_tables' ] as $table_query ) {
			$wpdb->query( "DROP TABLE IF EXISTS `" . $table_query . "`;" );
			if ( $wpdb->last_error !== '' ) {
				echo $GLOBALS[ 'sst_errors' ][ 0 ];
				$wpdb->print_error();
				sst_error_log( 'Dropping tables failed due to syntax error.' );
			}
		}
	}
}