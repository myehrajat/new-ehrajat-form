<?php
/*use EnvayaSMS To Send SMS to Server*/
define( 'WP_USE_THEMES', false );
require_once( '../wp-load.php' );
$user= $_GET[ 'user' ];
if ( $_GET[ 'mode' ] == 'get'
  and $_GET[ 'website' ] ) {
  switch ( $_GET[ 'website' ] ) {
    case "sheypoor":
      $SheypoorVerification = json_decode( get_option( 'SheypoorVerification'.$user ) );
      echo substr( $SheypoorVerification->message, -4 );
      break;
    case "divar":
      $DivarVerification = json_decode( get_option( 'DivarVerification'.$user ) );
      echo substr( $DivarVerification->message, -6 );
      break;
  }
} elseif ( $_GET[ 'mode' ] == 'delete'
  and $_GET[ 'website' ] ) {
  switch ( $_GET[ 'website' ] ) {
    case "sheypoor":
      delete_option( 'SheypoorVerification'.$user );
      break;
    case "divar":
      delete_option( 'DivarVerification'.$user );
      break;
  }
} elseif ( $_REQUEST[ 'message_type' ] == 'sms' ) {
  if ( strpos( $_REQUEST[ 'message' ], '\u062f\u06cc\u0648\u0627\u0631' ) !== false xor  strpos( $_REQUEST[ 'message' ], 'دیوار' ) !== false ) {
    var_dump(delete_option( 'DivarVerification'.$user ));
    var_dump(add_option( 'DivarVerification'.$user, json_encode( $_REQUEST ) ));
	  
  } elseif ( strpos( $_REQUEST[ 'message' ], '\u0634\u06cc\u067e\u0648\u0631' ) !== false  xor  strpos( $_REQUEST[ 'message' ], 'شیپور' ) !== false ) {
    var_dump(delete_option( 'SheypoorVerification'.$user ));
    var_dump(add_option( 'SheypoorVerification'.$user, json_encode( $_REQUEST ) ));
  }
}