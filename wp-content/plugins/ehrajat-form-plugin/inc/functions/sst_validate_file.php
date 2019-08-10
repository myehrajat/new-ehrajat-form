<?php

function sst_validate_file($file){
	switch($file['error']){
		case '0':
			return 'no_error';
		break;
		case '1':
			$error= 'known reason 1';
		break;
		case '2':
			$error= 'known reason 2';
		break;
		case '3':
			$error= 'known reason 3';
		break;
		case '4':
			$error= 'known reason 4';//no file selected
		break;
		case '5':
			$error= 'known reason 5';
		break;
		case '6':
			$error= 'known reason 6';
		break;
		case '7':
			$error= 'known reason 7';
		break;
		case '8':
			$error= 'known reason 8';
		break;
		default:
			$error= 'known reason '.$file['error'];
		break;
	}
	//dbg($error);
	return $error;
}

