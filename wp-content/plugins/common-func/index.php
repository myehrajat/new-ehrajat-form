<?php
/**
	ashkhas.save_id AS asave_id,
 * Plugin Name:  common function
 * Plugin URI: http://ehrajat.com
 * Description:common function
 
 * Version: 1.3
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */

/**
 * Detect plugin. For use on Front End and Back End.
 */
// check for plugin using plugin name

function enqueue_custom_style() {
	wp_register_style('style.custom', plugins_url('style.css', __FILE__));
	wp_enqueue_style('style.custom');
}



add_action( 'wp_enqueue_scripts', 'enqueue_custom_style' );

function sst_find_asli_shakhs() {
	if ( $_GET[ 'asli_shakhs' ] ) {
		$asli_shakhs_id = $_GET[ 'asli_shakhs' ];
	} elseif ( $_GET[ 'shakhs' ] ) {
		//sst_get_moref_from_db(47);
		$asli_shakhs_id = sst_get_moref_from_db( $_GET[ 'shakhs' ] );
		//$asli_shakhs_id = sst_get_option( 'sherkat_id' );
	} else {
		$asli_shakhs_id = sst_get_option( 'sherkat_id' );
	}
	return $asli_shakhs_id;
}

function sst_find_shakhs( $mostajer_id, $mojer_id ) {
	if ( !$_GET[ 'shakhs' ] ) {
		if ( $mostajer_id == $_GET[ 'asli_shakhs' ] ) {
			$shakhs_id = $mojer_id;
		} elseif ( $mojer_id == $_GET[ 'asli_shakhs' ] ) {
			$shakhs_id = $mostajer_id;
		}
	} else {
		$shakhs_id = $_GET[ 'shakhs' ];
	}
	return $shakhs_id;
}

function sst_find_variz_bedehi_jari( $gharardad_mostajer_id, $gharardad_mojer_id, $asli_shakhs_id, $shakhs_id, $mablagh ) {
	global $dbprefix;
	//$shakhs_id = sst_find_shakhs($gharardad_mostajer_id,$gharardad_mojer_id);
	//$asli_shakhs_id = sst_find_asli_shakhs();
	if ( $shakhs_id == $gharardad_mostajer_id ) {
		$result[ 'variz' ] = '';
		$result[ 'bedehi' ] = $mablagh;

	} else {
		$result[ 'variz' ] = $mablagh;
		$result[ 'bedehi' ] = '';
	}
	return $result;
}









/*
How to use it

To sort by year ascending:

uasort($array, make_comparer('Year'));
To sort by year ascending, then by month ascending:

uasort($array, make_comparer('Year', 'Month'));
To sort by year descending, then by month ascending:

uasort($array, make_comparer(array('Year', SORT_DESC), 'Month'));
*/

function make_comparer() {
	// Normalize criteria up front so that the comparer finds everything tidy
	$criteria = func_get_args();
	foreach ($criteria as $index => $criterion) {
	$criteria[$index] = is_array($criterion)
	? array_pad($criterion, 3, null)
	: array($criterion, SORT_ASC, null);
	}

	return function($first, $second) use ($criteria) {
	foreach ($criteria as $criterion) {
	// How will we compare this round?
	list($column, $sortOrder, $projection) = $criterion;
	$sortOrder = $sortOrder === SORT_DESC ? -1 : 1;

	// If a projection was defined project the values now
	if ($projection) {
	$lhs = call_user_func($projection, $first[$column]);
	$rhs = call_user_func($projection, $second[$column]);
	}
	else {
	$lhs = $first[$column];
	$rhs = $second[$column];
	}

	// Do the actual comparison; do not return if equal
	if ($lhs < $rhs) {
	return -1 * $sortOrder;
	}
	else if ($lhs > $rhs) {
	return 1 * $sortOrder;
	}
	}

	return 0; // tiebreakers exhausted, so $first == $second
	};
}













//https://stackoverflow.com/questions/2189626/group-a-multidimensional-array-by-a-particular-value
function group_multidimensional_array($rows,$valuetogroup){
	$templevel = 0;
	$newkey = 0;

	foreach ( $rows as $key => $val ) {
		if ( $templevel == $val[ $valuetogroup ] ) {
			$grouparr[ $templevel ][ $newkey ] = $val;
		} else {
			$grouparr[ $val[ $valuetogroup ] ][ $newkey ] = $val;
		}
		$newkey++;
	}
	return $grouparr;
}
/*
this function get multidimensional array like those who return by group_multidimensional_array then return flattened be careful it will not preserve keys

*/
function ungroup_multidimensional_array($grouped_rows){
	foreach($grouped_rows as $one_groupe_rows){
		foreach($one_groupe_rows as $row){
			$rows[]=$row;
		}
	}
	return $rows;
}
?>