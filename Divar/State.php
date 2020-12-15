<?php
define( 'WP_USE_THEMES', false );
require_once( '../wp-load.php' );
//echo $sql;

//if(!$_GET['psw']){

switch ( $_GET[ 'mode' ] ) {
  case "add":
    add_option( 'Divar--' . $_GET[ 'token' ], $_GET[ 'value' ] );
		echo 'Added';
    break;
  case "delete":
    delete_option( 'Divar--' . $_GET[ 'token' ] );
    break;
  case "update":
    update_option( 'Divar--' . $_GET[ 'token' ], $_GET[ 'value' ] );
    break;
  case "get":
    echo get_option( 'Divar--' . $_GET[ 'token' ] );
    break;
  case "delete-all":
    $sql = "Select * From " . $wpdb->prefix . "options WHERE option_name LIKE 'Divar--%'";
    $results = $wpdb->get_results( $sql );
    if ( $results ) {
      foreach ( $results as $option_obj ) {
        delete_option( $option_obj->option_name );
      }
    }
    break;

}
//echo 'ddddddddddd';
//}