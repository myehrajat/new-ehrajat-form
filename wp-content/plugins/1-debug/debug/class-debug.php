<?php
class debug{
	function __construct(){
		
	}
	function erorr_text(){
		$GLOBALS['sst_errors'][0]= __('Creation of tables failed. Maybe syntax error!');
	}
	/**************************************************
	*version 1.0.0
	*this function used for getting syntax errors of eval()
	**************************************************/
	function eval_error($obj){
		return $this->access_protected($obj, 'message') ;
	}
	function access_protected($obj, $prop) {
	  $reflection = new ReflectionClass($obj);
	  $property = $reflection->getProperty($prop);
	  $property->setAccessible(true);
	  return $property->getValue($obj);
	}
	/**************************************************
	 *version 1.0.0
	 *this is logging errors function
	 **************************************************/
	function error_log($error_txt){
		if(LOGGING){
			$backtrace = debug_backtrace();
			unset($backtrace[0]);
			$func_series='';
			foreach($backtrace as $func){
				$func_series .= $func['function'].'=>';
			}
			error_log('['.date("Y-m-d h:i:sa").']Source Function:'.$func_series.PHP_EOL.'SOUREC FILE:'.$backtrace[1]['file'].PHP_EOL.$error_txt.PHP_EOL.PHP_EOL, 3 , DEBUG_ERROR_LOG);
		}else{
			sst_delete_log();
		}
	}
	/**************************************************
	 *version 1.0.0
	 *this function delete log file
	 **************************************************/
	function sst_delete_log() {
		if ( file_exists( DEBUG_ERROR_LOG ) ) {
			unlink( DEBUG_ERROR_LOG );
		}
	}
	/**************************************************
	 *version 1.0.0
	 *this is development debugging function
	 **************************************************/
	/*
	$die => die after debugging
	*/
	function dbg( $var, $die = false,$identifier=false, $textarea = false ) {
		if ( $textarea ) {
			echo '<textarea rows="50" cols="500">';
		}
		echo '<pre>';
		if($identifier){
			echo '<strong>' . $identifier . '</strong>';	
		}
		var_dump( $var );
		echo '</pre>';
		if ( $textarea ) {
			echo '</textarea></br>';
		}
		if ( $die ) {
			die;
		}
	}

}
/**************************************************
*version 1.0.0
*this vars if for showing errors
**************************************************/
