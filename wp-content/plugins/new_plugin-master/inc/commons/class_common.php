<?php



/*array(12) {
  [0]=>
  string(17) "check_is_in_table"
  [1]=>
  string(9) "get_by_id"
  [2]=>
  string(7) "get_ids"
  [3]=>
  string(25) "is_valid_custom_attr_name"
  [4]=>
  string(27) "make_valid_custom_attr_name"
  [5]=>
  string(12) "is_minus_ids"
  [6]=>
  string(12) "is_range_ids"
  [7]=>
  string(19) "is_valid_ids_string"
  [8]=>
  string(21) "make_valid_ids_string"
  [9]=>
  string(6) "is_num"
  [10]=>
  string(8) "make_num"
  [11]=>
  string(18) "is_valid_single_id"
}
*/
//$class = new common;
//dbg(get_class_methods($class));
class common extends basic {
	/**************************************************
	 *version 1.0.0
	 * this function return only numbers
	 **************************************************/

	//get a record
	//$identifier is for debugging only and when you want to what has been returned use specific identifier
	function get_by_id( $id, $table_name ) {
		global $wpdb;
		if ( $this->is_num( $id ) ) {
			if ( $table_name ) {
				$sql = "SELECT * FROM `" . $table_name . "` WHERE `id`= " . $id . " LIMIT 1";
				$results = $wpdb->get_results( $sql );
				if ( $wpdb->last_error !== '' ) {
					sst_error_log( 'get_by_id MYSQL query failed due to syntax error.' );
					$return = false;
				} else {
					if ( !empty( $results ) ) {
						$return = $results[ 0 ];
					} else {
						sst_error_log( 'id provided for get_by_id is not correct.Can not find id:"' . $id . '" in table:"' . $table_name . '".' );
						$return = false;
					}
				}
			} else {
				sst_error_log( 'table name NOT provided in get_by_id().' );
				$return = false;

			}
		} else {
			sst_error_log( 'ids provided in get_by_id() must be only number and we will not fix it.' );
			$return = false;

		}
		return $return;
	}





	/**************************************************
	 *version 1.0.0
	 *this function is for including all php files in a single folder
	 **************************************************/
	/*

	$ids=> string of id like 12-19 or 12-19,11 or -11,12 or -12-15,20-30 
	return array of ids 
	Note: minus sign means remove this id or range ids
	*/


	function get_ids( $ids ) {
		$final_result_ids = array();
		$valid_ids = $this->is_valid_ids_string( $ids );
		if ( $valid_ids OR STRICT_VALID_IDS == false ) {
			if ( $valid_ids == false ) {
				sst_error_log( 'ids provided is not valid check it again. But loosly we correct it for you by config value as STRICT_VALID_IDS is set to False! ' );
			}
			if ( !empty( $ids ) ) {
				$ids = explode( ',', $ids );
				$result_ids = array();
				foreach ( $ids as $id ) {
					if($this->is_valid_single_id( $id )){
						$is_minus = $this->is_minus_ids( $id );
						if ( $is_minus == false ) {
							$positive_id = $id;
							$is_range = $this->is_range_ids( $positive_id );
							if ( $is_range ) {//range
								$range_id = explode( '-', $positive_id );
								$result_ids = array_merge( $result_ids, range( $range_id[ 0 ], $range_id[ 1 ] ) );
							} else {//non range
								settype( $positive_id, 'integer' );
								$result_ids = array_merge( $result_ids, array( $positive_id ) );
							}
						} else {
							$minus_ids[] = $id;
						}
					}else{
						sst_error_log( 'single part ids provided is not correct check it again' );
					}
				}
				if ( !empty( $minus_ids ) ) {
					foreach ( $minus_ids as $minus_id ) {
						if ( $is_minus ) {
							$is_range = $this->is_range_ids( $minus_id );
							if ( $is_range ) {//range
								$range_id = explode( '-', $minus_id );
								$result_ids = array_diff( $result_ids, range( $range_id[ 1 ], $range_id[ 2 ] ) );
							} else {//non range
								$minus_id = substr( $minus_id, 1 );//remove - sign
								settype( $minus_id, 'integer' );
								$result_ids = array_diff( $result_ids, array( $minus_id ) );
							}
						}
					}
				}
			} else {
				sst_error_log( 'ids provided is empty.' );
			}
		} else {
			sst_error_log( 'ids provided is not valid check it again.' );
		}
		return $result_ids;
	}









	/**************************************************
	 *version 1.0.0
	 *only str with a-z or A-Z - _ are acceptable this correct it
	 **************************************************/
	/*
	https://html.spec.whatwg.org/multipage/syntax.html#attributes-2

	 	"Attribute names must consist of one or more characters other than controls, U+0020 SPACE, U+0022 ("), U+0027 ('), U+003E (>), U+002F (/), U+003D (=), and noncharacters"
		following characters are not allowed:
		all char in brace { \"'>/=	}
		controls:https://infra.spec.whatwg.org/#control
		noncharacter:https://infra.spec.whatwg.org/#noncharacter
	test by:https://www.regextester.com/103704
	*/

	function is_valid_custom_attr_name( $attr ) {
		if ( !empty( $attr ) ) {
			//? negate the regular expression attr
			$attr = preg_replace( "~/[?^ \"'>/=	]/g~", '', $attr, -1, $count );
			if ( $count > 0 ) {
				sst_error_log( 'attribute provided : '. $attr .' is not valid we fix it. it must be valid by sst_valid_for_attr_naming and not match [?^ \"\'>/=		]/g' );
				$return = false;
			}else{
				$return = true;
			}
		}else{
			$return = false;
			
		}
		return $return;
	}	/**************************************************
	 *version 1.0.0
	 *only str with a-z or A-Z - _ are acceptable this correct it
	 **************************************************/
	/*
	https://html.spec.whatwg.org/multipage/syntax.html#attributes-2

	 	"Attribute names must consist of one or more characters other than controls, U+0020 SPACE, U+0022 ("), U+0027 ('), U+003E (>), U+002F (/), U+003D (=), and noncharacters"
		following characters are not allowed:
		all char in brace { \"'>/=	}
		controls:https://infra.spec.whatwg.org/#control
		noncharacter:https://infra.spec.whatwg.org/#noncharacter
	test by:https://www.regextester.com/103704
	*/

	function make_valid_custom_attr_name( $attr ) {
		if ( !empty( $attr ) ) {
			//? negate the regular expression attr
			$return = preg_replace( "~/[?^ \"'>/=	]/g~", '', $attr, -1, $count );
			if ( $count > 0 ) {
				sst_error_log( 'attribute provided '. $attr .' is not valid we fix it. it must be valid by sst_valid_for_attr_naming and not match [?^ \"\'>/=		]/g' );
			}
		}else{
			sst_error_log( 'custom_attr_name you have provided is empty.' );
			$return = '';
			
		}
		return $return;
	}

	

}