<?php
//$class = new basic;
//dbg(get_class_methods($class));
/*
  [0]=>
  string(12) "is_minus_ids"
  [1]=>
  string(12) "is_range_ids"
  [2]=>
  string(19) "is_valid_ids_string"
  [3]=>
  string(21) "make_valid_ids_string"
  [4]=>
  string(6) "is_num"
  [5]=>
  string(8) "make_num"

  */
class basic {
	
	/**************************************************
	 *version 1.0.0
	 * this function check is minus or not check number or not
	 **************************************************/
	function is_minus_ids( $str ) {
		if ( $str[ 0 ] == '-' ) {
			//echo 'its minus<br />';
			$return = true;
		} else {
			//echo 'its NOT minus<br />';
			$return = false;
		}
		return $return;
	}


	/**************************************************
	 *version 1.0.0
	 * this function check the form match with is id num range like -11-21 or 12-15
	 **************************************************/
	function is_range_ids( $str ) {
		if ( strrpos( $str, '-' ) != 0 ) {
			//echo 'its range<br />';
			$return = true;
		} else {
			//echo 'its NOT range<br />';
			$return = false;
		}
		return $return;
	}
	/**************************************************
	 *version 1.0.0
	 * this function return validity of ids for only numbers and - and , in string
	 **************************************************/

//only_num_dash_comma
	function is_valid_ids_string( $str ) {
		if ( !empty( $str ) ) {
			$result = preg_replace( "/[^0-9-,]/", '', $str, -1, $count );
			if ( $count > 0 ) {
				sst_error_log( 'ids string provided for sst_get_ids has some illegal charchter and we only check it. only numbers and comma and dash is allowed.' );
				$return = false;
			}else{
				$return = true;
			}
		}else{
			sst_error_log( 'ids you have provided is empty.' );
			$return = false;
		}
		return $return;
	}
	/**************************************************
	 *version 1.0.0
	 * this function return corrected of ids for only numbers and - and , in string
	 **************************************************/

//only_num_dash_comma
	function make_valid_ids_string( $str ) {
		if ( !empty( $str ) ) {
			$return = preg_replace( "/[^0-9-,]/", '', $str, -1, $count );
			if ( $count > 0 ) {
				sst_error_log( 'ids string provided for sst_get_ids has some illegal charchter and we fix it. only numbers and comma and dash is allowed.' );
			}
		}else{
			$return = '';
		}
		return $return;
	}
	/**************************************************
	 *version 1.0.0
	 * this function return only numbers
	 **************************************************/
	function is_num( $str ) {
		if ( !empty( $str ) ) {
			$result = preg_replace( "/[^0-9]/", '', $str, -1, $count );
			if ( $count > 0 and $return_error ) {
				sst_error_log( 'ids provided must be only number and we fix it.' );
				$return = false;
			} else {
				$return = true;
			}
		} else {
			sst_error_log( 'id you have provided is empty.' );
			$return = false;
		}
		return $return;
	}
	/**************************************************
	 *version 1.0.0
	 * this function return only numbers
	 **************************************************/
	function make_num( $str ) {
		if ( !empty( $str ) ) {
			$return = preg_replace( "/[^0-9]/", '', $str, -1, $count );
			if ( $count > 0 and $return_error ) {
				sst_error_log( 'ids provided must be only number and we fix it.' );
			}
		} else {
			sst_error_log( 'id you have provided is empty.' );
			$return = '';
		}
		return $return;
	}
	/**************************************************
	 *version 1.0.0
	 * this function check every id validation if not valid ignore but log it
	 **************************************************/
	function is_valid_single_id( $str ) {
		/*
		ID and NAME tokens must begin with a letter ([A-Za-z]) and may be followed by any number of letters, digits ([0-9]), hyphens ("-"), underscores ("_"), colons (":"), and periods (".").
		*/
		$minus = $this->is_minus_ids( $str );
		$ids_arr = explode('-',$str);
		$ids_arr_count = count($ids_arr);
		#eg: -1-2- or -1--2
		if( $ids_arr_count>3 and $minus and $this->is_num($ids_arr[1]) and $this->is_num($ids_arr[2]) ){
			sst_error_log( 'ids string provided for sst_get_ids which is mistyped -MORE THAN TWO minus sign- that is :' . $str . '.' );
			$return = false;
		#eg: 1-2- or 1--2
		}elseif( $ids_arr_count>2 and !$minus and $this->is_num($ids_arr[0]) and $this->is_num($ids_arr[1]) ){
			sst_error_log( 'ids string provided for sst_get_ids which is mistyped -MORE THAN ONE minus sign- that is :' . $str . '.' );
			$return = false;
		}else{
			$return = true;
		}
		return $return;
	}
	/**************************************************
	 *version 1.0.0
	 * this function is set option
	 **************************************************/
}