<?php
/**************************************************
*version 1.0.0
*these function create one input
**************************************************/

function sst_create_input( $input_id ) {
		$obj_input = sst_get_by_id( $input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
		if ( $obj_input ) {
			$obj_type = sst_get_by_id( $obj_input->type_id, $GLOBALS[ 'sst_tables' ][ 'input_type' ] );
			if ( $obj_type ) {
				//$input .= sst_create_pack($obj_input,'input','pre',$extra);//previously used
				$ecode = 'return ' . $obj_type->function . '(' . $input_id . ');';
				if ( PHP_VERSION >= 7 ) {
					try {
						$input .= eval( $ecode );
					} catch ( ParseError $e ) {
						sst_error_log( 'sst_create_input eval() syntax error :"' . sst_eval_error($e));	
					}
				} else {
					$input .= eval( $ecode );
				}
				//$input .= sst_create_pack($obj_input,'input','post'/*,$extra*/);//previously used
			} else {
				sst_error_log( 'incorrect type id :"' . $obj_input->type_id . '" provided for input id:"' . $input_id . '".' );
			}
		} else {
			sst_error_log( 'incorrect input id :"' . $input_id . '" provided.' );
		}

}
/*
class input extends common{
	var $input_id;
	var $obj_input;
	var $obj_type;
	//var $input_id;
	function __construct($input_id){
		$this->input_id=$input_id;
	}
	function get_object($this->input_id){
		$this->obj_input = $this->get_by_id( $this->input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
		if(!$this->obj_input){
			$this->obj_input;
		} else {
			sst_error_log( 'incorrect input id :"' . $input_id . '" provided.' );
		}
		return $this->obj_input;
	}
		if ($this->obj_input) {
			$this->obj_type = $this->get_by_id( $this->obj_input->type_id, $GLOBALS[ 'sst_tables' ][ 'input_type' ] );
			if ( $this->obj_type ) {
				//$input .= sst_create_pack($obj_input,'input','pre',$extra);//previously used
				$ecode = 'return ' . $this->obj_type->function . '(' . $this->input_id . ');';
				if ( PHP_VERSION >= 7 ) {
					try {
						$input .= eval( $ecode );
					} catch ( ParseError $e ) {
						sst_error_log( 'sst_create_input eval() syntax error :"' . sst_eval_error($e));	
					}
				} else {
					$input .= eval( $ecode );
				}
				//$input .= sst_create_pack($obj_input,'input','post'/*,$extra);//previously used
			} else {
				sst_error_log( 'incorrect type id :"' . $obj_input->type_id . '" provided for input id:"' . $input_id . '".' );
			}
}*/