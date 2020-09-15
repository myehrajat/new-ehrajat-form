<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='text';
$sst['type']='lat-log-location-text';
$sst['function']='sst_lat_log_location_text';
$sst['epithet']=' Lat Log Location Text Field';
$sst['description']='This is simple sst_lat_log_location_text input type as a HTML code!';
$sst['slug']='sst_lat_log_location_text_field';
$sst['owner']='Ehrajat';
$sst['id']=28;
function sst_lat_log_location_text($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	$rnd = rand(1111111,999999999999);
	$input_data[ 'js_code' ] = '
	jQuery("#'.$input_data[ 'attrs' ]['id'].'").on("focus click",function(){
		getLocation_'.$rnd.'();
	});
function getLocation_'.$rnd.'() {
  if (navigator.geolocation) {';
		$input_data[ 'js_code' ] .= 'jQuery("#'.$input_data[ 'attrs' ]['id'].'").attr("placeholder","Wait! Retrieving location ... ");';
		$input_data[ 'js_code' ] .='navigator.geolocation.getCurrentPosition(showPosition_'.$rnd.', showError_'.$rnd.',{timeout:10000});
  } else { 
     console.log( "Geolocation is not supported by this browser.");
  }
}

function showPosition_'.$rnd.'(position) {';
	switch(strtolower($input_data[ 'meta' ][ 'lat-or-lon' ])){
		case "lat":
			$input_data[ 'js_code' ] .= 'jQuery("#'.$input_data[ 'attrs' ]['id'].'").val(position.coords.latitude);';
			break;
		case "lon":
			$input_data[ 'js_code' ] .= 'jQuery("#'.$input_data[ 'attrs' ]['id'].'").val(position.coords.longitude);';
			break;
		case "latlon":
		case "default":
			$input_data[ 'js_code' ] .= 'jQuery("#'.$input_data[ 'attrs' ]['id'].'").val(position.coords.latitude+","+position.coords.longitude);';
			break;
	}
	//krumo();
$input_data[ 'js_code' ] .= '}';

$input_data[ 'js_code' ] .='function showError_'.$rnd.'(error) {';
	//$input_data[ 'js_code' ] .= 'jQuery("#'.$input_data[ 'attrs' ]['id'].'").val("Failed");';
	$input_data[ 'js_code' ] .= 'jQuery("#'.$input_data[ 'attrs' ]['id'].'").attr("placeholder","Failed");';
$input_data[ 'js_code' ] .= 'switch(error.code) {
    case error.PERMISSION_DENIED:
      console.log("User denied the request for Geolocation.");
      break;
    case error.POSITION_UNAVAILABLE:
     console.log("Location information is unavailable.");
      break;
    case error.TIMEOUT:
       console.log("The request to get user location timed out.");
      break;
    case error.UNKNOWN_ERROR:
       console.log("An unknown error occurred.");
      break;
  }
  
}';
	return $input_data;
	
}
