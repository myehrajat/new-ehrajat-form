<?php
/**************************************************
 *version 1.0.0
 *these function create one language attribute
 **************************************************/
function sst_create_language( $language_id ) {
	$obj_language = sst_get_by_id( $language_id, $GLOBALS[ 'sst_tables' ][ 'language' ] );
	$language = sst_create_attrs( 'lang', array($obj_language->language), false );
	$direction = sst_create_attrs( 'dir', array($obj_language->direction), false );
	return $language.$direction;
}