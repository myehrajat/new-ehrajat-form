<?php
/**************************************************
 *version 1.0.0
 *this function is for adding to table
 **************************************************/
function sst_add_to_table( string $table, array $column_value ) {
	global $wpdb;
	if ( is_array( $column_value ) ) {
		if ( !empty( $column_value ) ) {
			$columns = array_keys($column_value);
			$sql = "INSERT  INTO " . $table . "(`" . implode( '`,`', $columns ) . "`) VALUES ('" . implode( "','", $column_value ) . "')";
			$result = $wpdb->query( $sql );
			if ( $wpdb->last_error !== '' ) {
				sst_error_log( 'sst_add_to_table() MYSQL syntax error:' . $wpdb->print_error() );
				return false;
			} else {
				return $wpdb->insert_id;
			}
		} else {
			sst_error_log( 'column_value must Not be empty!' );
		}
	} else {
		sst_error_log( 'column_value must be array!' );
	}
}