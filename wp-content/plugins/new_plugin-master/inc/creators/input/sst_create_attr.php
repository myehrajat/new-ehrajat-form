<?php
/**************************************************
 *version 1.0.0
 *this function is for input attributes
 **************************************************/
/*
$attr => name of properties of attribute line name/class or with its value like name="field_name" NOTE: if attr with value provided next value will be appended
$val => value of attr
$required = false => if you need even empty properties provided to html make it true eg : name=""
*/

function sst_create_attr( $attr, $val, $required = false ) {
	$val = trim( $val );
	if ( empty( $attr ) ) {
		sst_error_log( 'You have tried to make an attribute for an input but not provide attribute name or it is empty' );
		return false;
	} else {
		$val = htmlspecialchars($val);
		$attr_arr = explode( '"', $attr );
		$attr_arr_count = count( $attr_arr );
		//checking is need to append => not needed
		if ( $attr_arr_count == 1  ) {
			$attr = sst_valid_for_attr_naming( $attr );
			if ( $required or!empty( $val ) ) {
				$result =  $attr . '="' . trim( $val ) . '"';
			} else {
				return false;
			}
			//checking is need to append => needed to be appended
		} elseif ( $attr_arr_count == 3 ) {
			//it is appending
			$raw_attr = str_replace( "=", "", $attr_arr[ 0 ] );
			$concat_vals = $attr_arr[ 1 ] . ' ' . $val;
			$result = sst_create_attr( $raw_attr, $concat_vals, $required );
		} else {
			// initial attribute for appending is malformatted like : name="sssssss"ss"
			sst_error_log( 'You have provided an attribute name with appending which its initailly value for appendig is not correct. so no attribute returned.like : name="sssssss"ss" or name="sssssss"ss' );
			return false;
		}
	}
	
	return $result;
}

function sst_create_attrs( $attr, array $vals, $required = false ) {
	$i = true;
	$result = false;
	$count_vals = count( $vals ) - 1;
	foreach ( $vals as $key => $val ) {
		//Not the last vals should follow always be required to true to be able to appended
		if ( $count_vals > $key ) {
			//this is the first attribute creation so use attr
			if ( $i and!$result ) {
				$result = sst_create_attr( $attr, $val, true );
				$i = false;
				//this is the neither first  and nor last attribute creation its middle one so use result
			} else {
				$result = sst_create_attr( $result, $val, true );
			}
			//the last vals should follow  $required rules to prevent empty properties ouptput
		} else {
			//may be all the previous is empty so we check it again to use attr or result
			if ( empty( $result ) ) {
				$result = sst_create_attr( $attr, $val, $required );
			} else {
				$result = sst_create_attr( $result, $val, $required );
			}
		}
	}
	return ' '.$result.' ';
}