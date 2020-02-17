<?php
interface attribute_form_validator_interface {

    function attr_accept_charset( $attr_value );

    function attr_action( $attr_value );

    function attr_enctype( $attr_value );

    function attr_method( $attr_value );

    function attr_novalidate( $attr_value );
	
    function attr_target( $attr_value );

}


class attribute_form_validator extends attribute_input_validator
implements attribute_form_validator_interface {
	function __construct(){
		parent::__construct();
	}

    //http://www.iana.org/assignments/character-sets/character-sets.xhtml
	//wide range of charset name and in html4 space or comma delimited and in html5 only comma validating it is hard process
    function attr_accept_charset( $attr_value ) {
        return $this->create_attribute( 'accept-charset', $attr_value );
    }
    function attr_action( $attr_value ) {
        return $this->create_url_abosult_or_relative( 'action', $attr_value );
    }
    function attr_enctype( $attr_value ) {
		$enumerated_values = array('application/x-www-form-urlencoded','multipart/form-data','text/plain');
        return $this->create_enumerated_attribute( 'enctype', $attr_value, $enumerated_values );
    }
    function attr_method( $attr_value ) {
        $enumerated_values = array( 'get', 'post', 'dialog' );
        return $this->create_enumerated_attribute( 'method', $attr_value, $enumerated_values );
    }
    function attr_novalidate( $attr_value ) {
        return $this->create_same_name_attribute_value( 'novalidate', $attr_value );
    }
    function attr_target( $attr_value ) {
        $enumerated_values = array( '_self', '_blank', '_parent','_top');
        return $this->create_enumerated_attribute( 'target', $attr_value, $enumerated_values );
    }
}