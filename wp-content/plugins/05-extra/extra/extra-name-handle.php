<?php
/*************
  ____    _                         _           _                               ____   _                     
 / ___|  | |_    __ _   _ __     __| |   __ _  | |   ___    _ __     ___       / ___| | |   __ _   ___   ___ 
 \___ \  | __|  / _` | | '_ \   / _` |  / _` | | |  / _ \  | '_ \   / _ \     | |     | |  / _` | / __| / __|
  ___) | | |_  | (_| | | | | | | (_| | | (_| | | | | (_) | | | | | |  __/     | |___  | | | (_| | \__ \ \__ \
 |____/   \__|  \__,_| |_| |_|  \__,_|  \__,_| |_|  \___/  |_| |_|  \___|      \____| |_|  \__,_| |___/ |___/
                                                                                                             
***************/
if ( basename( __FILE__ ) == basename( $_SERVER[ "SCRIPT_FILENAME" ] ) ) {
  //echo "called directly";
  define( 'WP_USE_THEMES', false );
  require_once( '../../../../wp-load.php' );

} else {
  //echo "included/required";
}

class extra_name_handle {
  /***
  param 1 : multidimensional array
  param 2 : str start rout eg [ or < or anything else
  success return : array of routes eg array('[1][12]','[2][1]')  
  success fail empty
  src:  //source:https://ideone.com/1dBqx

  ***/
  function get_trailings_from_array( $array, $sep = '][', $prefix = '[', $suffix = ']' ) {

    $result = array();
    if ( is_array( $array ) ) {
      foreach ( $array as $key => $value ) {
        if ( is_array( $value ) ) {
          $result = $result + extra_name_handle::get_trailings_from_array( $value, $sep, $prefix . $key . $sep );
        } else {
          $result[ $prefix . $key . $suffix ] = $value;
        }
      }
    } else {
      if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
        return false;
      }
    }
    if ( debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__ ) {
      //final return
      return array_keys( $result );
    } else {
      //return recusive
      return $result;
    }
  }

  /***
  param 1 : str which has follow like this format baak[1][12]  
  param 2 : str start rout eg [ or < or anything else
  success return : route eg [1][12]  
  success fail : false
  ***/
  function get_trailing_from_string( $attr_name, $devider = '[' ) {
    $attr_name_arr = explode( $devider, $attr_name );
    array_shift( $attr_name_arr );
    if ( count( $attr_name_arr ) > 0 ) {
      return $devider . implode( $devider, $attr_name_arr );
    } else {
      return false;
    }
  }


}
$mu_arr = sample_data_2();
//$mu_arr = 'sssssss';
//krumo( extra_name_handle::get_trailings_from_array( $mu_arr ) );


function sample_data_2() {
  $array[ 0 ][ 0 ] = 'a';
  $array[ 0 ][ 1 ][ 0 ] = 'a';
  $array[ 0 ][ 1 ][ 1 ] = 'a';
  $array[ 1 ][ 0 ] = 'a';
  $array[ 1 ][ 1 ] = 'a';
  $array[ 1 ][ 2 ][ 2 ] = 'a';
  $array[ 3 ] = 'a';
  return $array;
}


function sample_data() {
  $all_values = array(
    'input_one' => array( '*' => 'input_one_val' ),
    'input_two' => array( '*' => 'input_two_val' ),
    'input_three' => array(
      '0' => 'input_three_val',
      '1' => 'input_three_val',
      '2' => 'input_three_val' ),
    'input_four' => array(
      '0' => 'input_four_val',
      '1' => 'input_four_val',
      '2' => 'input_four_val' ),
    'input_five' => array(
      '0-0' => 'input_five_val', '0-1' => 'input_five_val', '0-2' => 'input_five_val',
      '1-0' => 'input_five_val', '1-1' => 'input_five_val', '1-2' => 'input_five_val',
      '2-0' => 'input_five_val', '2-1' => 'input_five_val', '2-2' => 'input_five_val',
    ),
    'input_six' => array(
      '0-0' => 'input_six_val', '0-1' => 'input_six_val', '0-2' => 'input_six_val',
      '1-0' => 'input_six_val', '1-1' => 'input_six_val', '1-2' => 'input_six_val',
      '2-0' => 'input_six_val', '2-1' => 'input_six_val', '2-2' => 'input_six_val',
    ),
    'input_seven' => array(
      '0-0-0' => 'input_seven_val', '0-0-1' => 'input_seven_val', '0-0-2' => 'input_seven_val',
      '0-1-0' => 'input_seven_val', '0-1-1' => 'input_seven_val', '0-1-2' => 'input_seven_val',
      '0-2-0' => 'input_seven_val', '0-2-1' => 'input_seven_val', '0-2-2' => 'input_seven_val',
      '1-0-0' => 'input_seven_val', '1-0-1' => 'input_seven_val', '1-0-2' => 'input_seven_val',
      '1-1-0' => 'input_seven_val', '1-1-1' => 'input_seven_val', '1-1-2' => 'input_seven_val',
      '1-2-0' => 'input_seven_val', '1-2-1' => 'input_seven_val', '1-2-2' => 'input_seven_val',
      '2-0-0' => 'input_seven_val', '2-0-1' => 'input_seven_val', '2-0-2' => 'input_seven_val',
      '2-1-0' => 'input_seven_val', '2-1-1' => 'input_seven_val', '2-1-2' => 'input_seven_val',
      '2-2-0' => 'input_seven_val', '2-2-1' => 'input_seven_val', '2-2-2' => 'input_seven_val',
    ),
    'input_eight' => array(
      '0-0-0' => 'input_eight_val', '0-0-1' => 'input_eight_val', '0-0-2' => 'input_eight_val',
      '0-1-0' => 'input_eight_val', '0-1-1' => 'input_eight_val', '0-1-2' => 'input_eight_val',
      '0-2-0' => 'input_eight_val', '0-2-1' => 'input_eight_val', '0-2-2' => 'input_eight_val',
      '1-0-0' => 'input_eight_val', '1-0-1' => 'input_eight_val', '1-0-2' => 'input_eight_val',
      '1-1-0' => 'input_eight_val', '1-1-1' => 'input_eight_val', '1-1-2' => 'input_eight_val',
      '1-2-0' => 'input_eight_val', '1-2-1' => 'input_eight_val', '1-2-2' => 'input_eight_val',
      '2-0-0' => 'input_eight_val', '2-0-1' => 'input_eight_val', '2-0-2' => 'input_eight_val',
      '2-1-0' => 'input_eight_val', '2-1-1' => 'input_eight_val', '2-1-2' => 'input_eight_val',
      '2-2-0' => 'input_eight_val', '2-2-1' => 'input_eight_val', '2-2-2' => 'input_eight_val',
    ),
    'input_nine' => array(
      '0-0-0-0' => 'input_nine_val', '0-0-0-1' => 'input_nine_val',
      '0-0-1-0' => 'input_nine_val', '0-0-1-1' => 'input_nine_val',
      '0-0-2-0' => 'input_nine_val', '0-0-2-1' => 'input_nine_val',
      '0-1-0-0' => 'input_nine_val', '0-1-0-1' => 'input_nine_val',
      '0-1-1-0' => 'input_nine_val', '0-1-1-1' => 'input_nine_val',
      '0-1-2-0' => 'input_nine_val', '0-1-2-1' => 'input_nine_val',
      '0-2-0-0' => 'input_nine_val', '0-2-0-1' => 'input_nine_val',
      '0-2-1-0' => 'input_nine_val', '0-2-1-1' => 'input_nine_val',
      '0-2-2-0' => 'input_nine_val', '0-2-2-1' => 'input_nine_val',
      '1-0-0-0' => 'input_nine_val', '1-0-0-1' => 'input_nine_val',
      '1-0-1-0' => 'input_nine_val', '1-0-1-1' => 'input_nine_val',
      '1-0-2-0' => 'input_nine_val', '1-0-2-1' => 'input_nine_val',
      '1-1-0-0' => 'input_nine_val', '1-1-0-1' => 'input_nine_val',
      '1-1-1-0' => 'input_nine_val', '1-1-1-1' => 'input_nine_val',
      '1-1-2-0' => 'input_nine_val', '1-1-2-1' => 'input_nine_val',
      '1-2-0-0' => 'input_nine_val', '1-2-0-1' => 'input_nine_val',
      '1-2-1-0' => 'input_nine_val', '1-2-1-1' => 'input_nine_val',
      '1-2-2-0' => 'input_nine_val', '1-2-2-1' => 'input_nine_val',
      '2-0-0-0' => 'input_nine_val', '2-0-0-1' => 'input_nine_val',
      '2-0-1-0' => 'input_nine_val', '2-0-1-1' => 'input_nine_val',
      '2-0-2-0' => 'input_nine_val', '2-0-2-1' => 'input_nine_val',
      '2-1-0-0' => 'input_nine_val', '2-1-0-1' => 'input_nine_val',
      '2-1-1-0' => 'input_nine_val', '2-1-1-1' => 'input_nine_val',
      '2-1-2-0' => 'input_nine_val', '2-1-2-1' => 'input_nine_val',
      '2-2-0-0' => 'input_nine_val', '2-2-0-1' => 'input_nine_val',
      '2-2-1-0' => 'input_nine_val', '2-2-1-1' => 'input_nine_val',
      '2-2-2-0' => 'input_nine_val', '2-2-2-1' => 'input_nine_val', '2-2-2-2' => 'input_nine_val', '2-2-2-3' => 'input_nine_val', '2-2-2-4' => 'input_nine_val', '2-2-2-5' => 'input_nine_val', '2-2-2-6' => 'input_nine_val', '2-2-2-7' => 'input_nine_val', '2-2-2-8' => 'input_nine_val', '2-2-2-9' => 'input_nine_val', '2-2-2-10' => 'input_nine_val', '2-2-2-11' => 'input_nine_val', '2-2-2-12' => 'input_nine_val',
    ),
    'input_ten' => array(
      '0-0-0-0' => 'input_ten_val', '0-0-0-1' => 'input_ten_val',
      '0-0-1-0' => 'input_ten_val', '0-0-1-1' => 'input_ten_val',
      '0-0-2-0' => 'input_ten_val', '0-0-2-1' => 'input_ten_val',
      '0-1-0-0' => 'input_ten_val', '0-1-0-1' => 'input_ten_val',
      '0-1-1-0' => 'input_ten_val', '0-1-1-1' => 'input_ten_val',
      '0-1-2-0' => 'input_ten_val', '0-1-2-1' => 'input_ten_val',
      '0-2-0-0' => 'input_ten_val', '0-2-0-1' => 'input_ten_val',
      '0-2-1-0' => 'input_ten_val', '0-2-1-1' => 'input_ten_val',
      '0-2-2-0' => 'input_ten_val', '0-2-2-1' => 'input_ten_val',
      '1-0-0-0' => 'input_ten_val', '1-0-0-1' => 'input_ten_val',
      '1-0-1-0' => 'input_ten_val', '1-0-1-1' => 'input_ten_val',
      '1-0-2-0' => 'input_ten_val', '1-0-2-1' => 'input_ten_val',
      '1-1-0-0' => 'input_ten_val', '1-1-0-1' => 'input_ten_val',
      '1-1-1-0' => 'input_ten_val', '1-1-1-1' => 'input_ten_val',
      '1-1-2-0' => 'input_ten_val', '1-1-2-1' => 'input_ten_val',
      '1-2-0-0' => 'input_ten_val', '1-2-0-1' => 'input_ten_val',
      '1-2-1-0' => 'input_ten_val', '1-2-1-1' => 'input_ten_val',
      '1-2-2-0' => 'input_ten_val', '1-2-2-1' => 'input_ten_val',
      '2-0-0-0' => 'input_ten_val', '2-0-0-1' => 'input_ten_val',
      '2-0-1-0' => 'input_ten_val', '2-0-1-1' => 'input_ten_val',
      '2-0-2-0' => 'input_ten_val', '2-0-2-1' => 'input_ten_val',
      '2-1-0-0' => 'input_ten_val', '2-1-0-1' => 'input_ten_val',
      '2-1-1-0' => 'input_ten_val', '2-1-1-1' => 'input_ten_val',
      '2-1-2-0' => 'input_ten_val', '2-1-2-1' => 'input_ten_val',
      '2-2-0-0' => 'input_ten_val', '2-2-0-1' => 'input_ten_val',
      '2-2-1-0' => 'input_ten_val', '2-2-1-1' => 'input_ten_val',
      '2-2-2-0' => 'input_ten_val', '2-2-2-1' => 'input_ten_val',
    ),
  );
  return $all_values;
}