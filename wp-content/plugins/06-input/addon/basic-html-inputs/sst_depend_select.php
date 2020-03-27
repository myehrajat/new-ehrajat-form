<?php
/**************************************************
 *version 1.0.0
 *these are some options for user to setup
 **************************************************/

$sst[ 'html_type' ] = 'select';
$sst[ 'type' ] = 'depend-select';
$sst[ 'function' ] = 'sst_depend_select';
$sst[ 'epithet' ] = 'Depened Select Field';
$sst[ 'description' ] = 'This is Depened Select Field!';
$sst[ 'slug' ] = 'depend_select';
$sst[ 'owner' ] = 'Ehrajat';
$sst[ 'id' ] = 24;

function sst_depend_select( $input_data_json,$process_data_json ) {
    $input_data = json_decode( $input_data_json, true );
    $process_data = json_decode($process_data_json, true );
	
	krumo($input_data_json);
	krumo($input_data);
	
	
	
	
	/*
	$GLOBALS['depend_js'] .= <<<EOT
	console.log( "header" );
	//alert("ssssssssssssssssssssssssssssssssssssss");
	EOT;
*/
    return $input_data;
}
//add_action( 'wp_footer', 'depend_select_js' );

function depend_select_js() {
	//krumo($GLOBALS);
    $uniqid = uniqid( 'depend_on_', true );
    wp_register_script( $uniqid, '' );
    wp_enqueue_script( $uniqid );
	$js .=  $GLOBALS['depend_js'];
	
    wp_add_inline_script( $uniqid,$js);

}