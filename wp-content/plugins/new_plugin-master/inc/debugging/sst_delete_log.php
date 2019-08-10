<?php
/**************************************************
 *version 1.0.0
 *this function delete log file
 **************************************************/
function sst_delete_log() {
	if ( file_exists( DEBUG_ERROR_LOG ) ) {
		unlink( DEBUG_ERROR_LOG );
	}
}