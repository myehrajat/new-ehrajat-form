<?php
define( 'WP_USE_THEMES', false );
require_once( '../wp-load.php' );
$sql = "CREATE TABLE IF NOT EXISTS " . 'Divar_Ads' . " (" .
"`id` INT(10) NOT NULL auto_increment," .
"`BrandNameEn` VARCHAR(255) NOT NULL," .
"`CarNameEn1` VARCHAR(255) NOT NULL," .
"`CarNameEn2` VARCHAR(255) NOT NULL," .
"`BrandNameFa` VARCHAR(255) NOT NULL," .
"`CarNameFa1` VARCHAR(255) NOT NULL," .
"`CarNameFa2` VARCHAR(255) NOT NULL," .
"`Year` VARCHAR(255) NOT NULL," .
"`Gear` VARCHAR(255) NOT NULL," .
"`Color` VARCHAR(255) NOT NULL," .
"`Price` VARCHAR(255) NOT NULL," .
"`PriceStep` VARCHAR(255) NOT NULL," .
"PRIMARY KEY id  (`id`)) DEFAULT CHARACTER SET utf8 ;";
$wpdb->query( $sql );

foreach($_GET as $k=>$get){
	$_GET[$k] = strtolower($get);
	echo $get;
}
$query = "Select * From Divar_Ads WHERE (BrandNameEn='" . $_GET[ 'BrandNameEn' ] . "' OR BrandNameFa='" . $_GET[ 'BrandNameFa' ] . "') AND  ( CarNameEn1='" . $_GET[ 'CarNameEn1' ] . "' OR CarNameEn2='" . $_GET[ 'CarNameEn2' ] . "' OR CarNameEn1='" . $_GET[ 'CarNameEn2' ] . "' OR CarNameEn2='" . $_GET[ 'CarNameEn1' ] . "' OR CarNameFa1='" . $_GET[ 'CarNameFa1' ] . "' OR CarNameFa2='" . $_GET[ 'CarNameFa2' ] . "' OR CarNameFa1='" . $_GET[ 'CarNameFa2' ] . "' OR CarNameFa2='" . $_GET[ 'CarNameFa1' ] . "')";
if ( isset( $_GET[ 'Year' ] ) ) {
  $query .= "AND Year='" . $_GET[ 'Year' ] . "' ";
}
if ( isset( $_GET[ 'Gear' ] ) ) {
  $query .= "AND Gear='" . $_GET[ 'Gear' ] . "' ";
}
if ( isset( $_GET[ 'Color' ] ) ) {
  $query .= "AND Color='" . $_GET[ 'Color' ] . "' ";
}
var_dump($query );
$results = $wpdb->get_results( $query );
$Price = $results[ 0 ]->Price;
if ( strpos( $Price ,'-' ) !== false ) {
	//var_dump( $query );
  
  $PriceRange = explode( '-', $Price );
	$Price = array();
  $PriceMin = min( $PriceRange );
  $PriceMax = max( $PriceRange );
  while ( $PriceMin < $PriceMax ) {
    $Price[] = $PriceMin;
    //$PriceMin = $PriceMin + $results[ 0 ]->PriceStep;
	  $PriceMin = $PriceMin + 100000;
  }
} else {
  $Price = explode( ',', $Price );
}
shuffle( $Price );
$Price = $Price[ 0 ];
echo $Price;