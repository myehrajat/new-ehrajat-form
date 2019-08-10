<?php
/**************************************************
 *version 1.0.0
 * this function return accesskey /tabindex for input
 **************************************************/

function sst_create_keyboard( $keyboard_id ) {
	$obj_keyboard = sst_get_by_id( $keyboard_id, $GLOBALS[ 'sst_tables' ][ 'keyboard' ] );
	$accesskey = sst_create_attrs( 'accesskey', array($obj_keyboard->accesskey), false );
	$tabindex = sst_create_attrs( 'tabindex', array($obj_keyboard->tabindex), false );
	return $accesskey . $tabindex;
}