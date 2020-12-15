<?php

$CarNames = array( '{{BrandNameEn}} {{CarNameEn}}', '{{BrandNameEn}} {{CarNameEn2}}', '{{BrandNameFa}} {{CarNameFa}}', '{{BrandNameFa}} {{CarNameFa2}}', '{{CarNameEn}}', '{{CarNameEn2}}', '{{CarNameFa}}', '{{CarNameFa2}}' );
//% ٪ * × ، . - + « » & ' ( ) /
$Seperators = array( '*','،', '-', '&', '/', '»', ' ' );
$SeperatorDoubles = array( array( '«', '»' ), array( '(', ')' ) );
$Tails = array( 'بدون راننده', 'بدون واسطه', 'مستقیم از مالک', 'با رویت سند', 'از مرکز معتبر', 'بدون دردسر', 'با شرایط آسان', 'روزانه و ماهیانه', );
$BasicTitles = array();
##########################

##########################
$Rents = array( 'اجاره', 'کرایه', 'رنت' );
$AdverbRents = array( 'اجاره ایی', 'کرایه ایی' );

$Cars = array( 'اتومبیل', 'خودرو', 'ماشین' );

foreach ( $Rents as $Rent_k => $Rent ) {
  foreach ( $Cars as $Car_k => $Car ) {
    $RentCars[] = $Rent . ' ' . $Car;
  }
}

foreach ( $AdverbRents as $AdverbRent_k => $AdverbRent ) {
  foreach ( $Cars as $Car_k => $Car ) {
    $AdverbRentCars[] = $Car . ' ' . $AdverbRent;
  }
}

##########################

##########################

$RentCarsNames = array();
foreach ( $RentCars as $RentCar ) {
  foreach ( $CarNames as $CarName_k => $CarName ) {
      $RentCarsNames1[] = $RentCar . ' ' . $CarName;
  }
}


foreach ( $AdverbRentCars as $AdverbRentCar ) {
  foreach ( $CarNames as $CarName_k => $CarName ) {
    $RentCarsNames2[] = $AdverbRentCar . ' ' . $CarName;
  }
}

foreach ($AdverbRents as $AdverbRent_k => $AdverbRent  ) {
  foreach ( $Cars as $Car_k => $Car ) {
	  foreach ( $CarNames as $CarName_k => $CarName ) {
		$RentCarsNames3[] = $Car . ' '.$CarName.' ' . $AdverbRent;
	  }
  }
}
$RentCarsNames = array_merge($RentCarsNames1,$RentCarsNames2,$RentCarsNames3);
##########################

##########################
/*
foreach($RentCarsNames as $RentCarsName){
	$i=0;
	$count = count($Seperators)-1;
	foreach($RentCars as $RentCar){
		$RentCarArr = explode(' ',$RentCar);
		$RentCarPart1 = $RentCarArr[0];
		$RentCarPart2 = $RentCarArr[1];
		if(strpos($RentCarsName,$RentCarPart1)===false and strpos($RentCarsName,$RentCarPart2)===false){
			$RentCarsNamesOneTags[] = $RentCarsName.$Seperators[$i].$RentCar;
			if($i==$count){
				$i=0;	
			}else{
				$i++;
			}
		}
	}
}
*/
##########################

##########################
foreach($RentCarsNames as $RentCarsName){
	$i=0;
	$count = count($Seperators)-1;
	foreach($RentCars as $RentCar){
		$RentCarArr = explode(' ',$RentCar);
		$RentCarPart1 = $RentCarArr[0];
		$RentCarPart2 = $RentCarArr[1];
		if(strpos($RentCarsName,$RentCarPart1)===false and strpos($RentCarsName,$RentCarPart2)===false){
			$RentCarsNamesOneTag = $RentCarsName.$Seperators[$i].$RentCar;
			$RentCarsNamesOneTags[] = $RentCarsName.$Seperators[$i].$RentCar;
			
			foreach($RentCars as $RentCar){
				$RentCarArr = explode(' ',$RentCar);
				$RentCarPart1 = $RentCarArr[0];
				$RentCarPart2 = $RentCarArr[1];
				if(strpos($RentCarsNamesOneTag,$RentCarPart1)===false and strpos($RentCarsNamesOneTag,$RentCarPart2)===false){
					$RentCarsNamesTwoTags[] = $RentCarsNamesOneTag.$Seperators[$i].$RentCar;

				}
			}
			
			
			
			if($i==$count){
				$i=0;	
			}else{
				$i++;
			}
		}
	}
}

/*foreach($RentCarsNamesOneTags as $RentCarsName){
	foreach($RentCars as $RentCar){
		$RentCarArr = explode(' ',$RentCar);
		$RentCarPart1 = $RentCarArr[0];
		$RentCarPart2 = $RentCarArr[1];
		if(strpos($RentCarsName,$RentCarPart1)===false and strpos($RentCarsName,$RentCarPart2)===false){
			$RentCarsNamesTwoTags[] = $RentCarsName.' - '.$RentCar;

		}
	}
}
*/
##########################

##########################
foreach($RentCarsNames as $RentCarsName){
	foreach($Tails as $Tail){
		$RentCarsNamesTails[] = $RentCarsName.' '.$Tail;
	}
}



$AllTitles = array_merge($RentCarsNamesTails,$RentCarsNamesTwoTags,$RentCarsNamesOneTags,$RentCarsNames);
shuffle($AllTitles );
echo $AllTitles[0];
//echo '<pre>';
//echo( implode('<br>',$AllTitles) );
//echo '</pre>';

/*
function PercentageOfExist( & $BasicTitles, $ThisTitle, $Percentage ) {
  $Range = range( 1, 100 );
  $RandKey = array_rand( $Range );
  if ( $Range[ $RandKey ] <= $Percentage ) {
    $BasicTitles[] = $ThisTitle;
  } else {
  }
}*/