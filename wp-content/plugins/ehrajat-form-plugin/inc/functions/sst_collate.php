<?php
function sst_collate() {
   global $wpdb;

    $collate = '';
    if ( $wpdb->supports_collation() ) {
        if ( !empty($wpdb->charset) ) $collate = "DEFAULT CHARACTER SET ".$wpdb->charset;
        if ( !empty($wpdb->collate) ) $collate .= " COLLATE ".$wpdb->collate;
	}
	return $collate;
}
?>