<?php
define( 'WP_USE_THEMES', false );
require_once( '../../../wp-load.php' );
$password = JQW_JS_PASSWORD;
//$query=$_REQUEST['q'];
$query = "SELECT * FROM wp_custom_country;";
//$encrypted_query = openssl_encrypt( $query, "AES-128-ECB", $password );
$encrypted_query = $_POST['query'];
$decrypted_query = openssl_decrypt(  $encrypted_query, "AES-128-ECB", $password );
//krumo( $decrypted_query );

$dbrows = $wpdb->get_results( $decrypted_query );

//$query=$_REQUEST['q'];

$datafields = '
{"dbcol":"id","gridcol":"grid_id","eval":"return (({dbcol:id}*100)-{gridcol:grid_id}).$row[\'grid_country\'].$rows[0][\'grid_phone_code\'];"},
{"dbcol":"flag","gridcol":"grid_flag","eval":""},
{"dbcol":"country","gridcol":"grid_country","eval":""},
{"dbcol":"phone_code","gridcol":"grid_phone_code","eval":""},
{"dbcol":"desc","gridcol":"grid_desc","eval":""},
{"dbcol":"save_id","gridcol":"grid_save_id","eval":""}
]';

$encrypted_datafields =  openssl_encrypt( $datafields, "AES-128-ECB", $password );
$encrypted_datafields = $_POST['datafields'];
$decrypted_datafields = openssl_decrypt(  $encrypted_datafields, "AES-128-ECB", $password );
$datafields = json_decode( $decrypted_datafields );
//echo( $decrypted_datafields );

//krumo($datafields);
$rows_eval = 'array_pop($rows);return $rows;';
//$encrypted_rows_eval =  openssl_encrypt( $rows_eval, "AES-128-ECB", $password );
$encrypted_rows_eval = $_POST['rows_eval'];
$decrypted_rows_eval = openssl_decrypt( $encrypted_rows_eval , "AES-128-ECB", $password );
//krumo( $encrypted_rows_eval );
//krumo( $decrypted_rows_eval );
foreach ( $dbrows as $dbrow ) {
  /*
  Creating one row
  */
  foreach ( $datafields as $datafield ) {
    $dbcol = $datafield->dbcol;
    $gridcol = $datafield->gridcol;
    if ( !empty( $datafield->eval ) ) {
      $evals[ $gridcol ] = $datafield->eval;
    }
    $row[ $gridcol ] = $dbrow->$dbcol;
  }
  if ( !empty( $evals ) ) {
    foreach ( $evals as $gridcol => $eval ) {
      $eval = render::replace_short_codes( $eval, $dbrow, '{dbcol:', '}' );
      $eval = render::replace_short_codes( $eval, $row, '{gridcol:', '}' );
      $row[ $gridcol ] = ids::run_eval2( EVAL_STR . $eval . ';', array('name'=>'row','value'=>$row), array('name'=>'rows','value'=>$rows));
    }
    $evals = array();
  }
  $rows[] = $row;
}
//krumo( $decrypted_rows_eval );
$rows = ids::run_eval2(EVAL_STR.$decrypted_rows_eval,array('name'=>'rows','value'=>$rows));
$json_rows = json_encode( $rows );
echo $json_rows;
//krumo( $rows );