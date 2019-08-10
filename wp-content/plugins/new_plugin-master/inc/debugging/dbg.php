<?php
/**************************************************
 *version 1.0.0
 *this is development debugging function
 **************************************************/
/*
$die => die after debugging
*/
function dbg( $var, $die = false,$identifier=false, $textarea = false ) {
	if ( $textarea ) {
		echo '<textarea rows="50" cols="500">';
	}
	echo '<pre>';
	if($identifier){
		echo '<strong>' . $identifier . '</strong>';	
	}
	var_dump( $var );
	echo '</pre>';
	if ( $textarea ) {
		echo '</textarea></br>';
	}
	if ( $die ) {
		die;
	}
}