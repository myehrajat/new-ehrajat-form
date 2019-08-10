<?php
/**************************************************
 *version 1.0.0
 *this is logging errors function
 **************************************************/
function sst_error_log($error_txt){
	if(LOGGING){
		$backtrace = debug_backtrace();
		unset($backtrace[0]);
		$func_series='';
		foreach($backtrace as $func){
			$func_series .= $func['function'].'=>';
		}
		error_log('['.date("Y-m-d h:i:sa").']SOUREC FUNC:'.$func_series.PHP_EOL.'SOUREC FILE:'.$backtrace[1]['file'].PHP_EOL.$error_txt.PHP_EOL.PHP_EOL, 3 , DEBUG_ERROR_LOG);
	}else{
		sst_delete_log();
	}
}