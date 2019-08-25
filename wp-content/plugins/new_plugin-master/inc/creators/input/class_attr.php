<?php

    /**************************************************
     *version 1.0.0
     *this class is for creating attributes
	 methods:
	 	create_simple_attr
	 	create_multiple_attrs
     **************************************************/

class attr extends common {
    /**************************************************
     *version 1.0.0
     *these is for creating one simple attribute and value pair
     **************************************************/
    function create_simple_attr( $attr_name, $attr_value ) {
        $attr_name = $this->make_valid_custom_attr_name( $attr_name );
		$attr_value = trim( $attr_value);

        if ( empty( $attr_name ) ) {
            sst_error_log( 'attribute name provided is empty or after removing all unallowed characters it converted to empty and remain nothing.' );
            return NULL;
        }
		if(empty($attr_value)){
			return NULL;
		}

		switch ($attr_name){
			case "accesskey":
				/*Values:Single characters Usage:Access element by pressing ALT+Single characters*/
				$len = strlen($attr_value);
				if($len==1){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}elseif($len>1){
					sst_error_log( 'accesskey value must be only one character you have provided a string more than one character so we use the first character as accesskey value.' );
					return $this->sst_set_attr_pair($attr_name, substr($attr_value, 0, 1));
				}elseif($len<1){
					sst_error_log( 'accesskey value must be only one character you have provided zero value character.' );
					return NULL;
				}else{
					sst_error_log( 'accesskey value cant get value length. unkown error!' );
					return NULL;
				}
			break;				
			case "autocapitalize":
				/*Values:off or none(No capitalize letter) | on or sentences(First letter of sentence) | words(First letter of words) | characters(ALL characters uppercase)*/
				$attr_value = strtolower($attr_value);
				if($attr_value == 'none' || $attr_value == 'off' || $attr_value == 'on'  || $attr_value == 'sentences'  || $attr_value == 'words'  || $attr_value == 'characters' ){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'autocapitalize value can be none | off | on | sentences | words | characters but you have provide sth else!' );
					return NULL;
				}
			break;
			case "contenteditable":
				$attr_value = strtolower($attr_value);
				if($attr_value=='true' or $attr_value=='false'){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'contenteditable must have true|false values you provide sth else!' );
					return NULL;
				}
			break;
			case "contextmenu":
				if($this->has_not_space($attr_value)){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'contextmenu must not contain space.' );
					return NULL;
				}
			break;
			case "dir":
				$attr_value = strtolower($attr_value);
				if($attr_value=='ltr' or $attr_value=='rtl' or $attr_value=='auto'){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'dir must have rtl|ltr|auto values you provide sth else!' );
					return NULL;
				}
			break;
			case "draggable":
				$attr_value = strtolower($attr_value);
				if($attr_value=='true' or $attr_value=='false'){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'draggable must have true|false values you provide sth else!' );
					return NULL;
				}
			break;
			case "dropzone":
				$attr_value = strtolower($attr_value);
				if($attr_value=='copy' or $attr_value=='move' or $attr_value=='link'){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'dropzone must have copy|move|link values you provide sth else!' );
					return NULL;
				}
			break;
			case "hidden":
				$attr_value = strtolower($attr_value);
				if($attr_value=='hidden' or $attr_value=='true'){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'hidden must have "hidden" values you provide sth else!' );
					return NULL;
				}
			break;
			case "id":
				if($this->has_not_space($attr_value)){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'id must not contain space.' );
					return NULL;
				}
			break;
			case "inputmode":
				$attr_value = strtolower($attr_value);
				$valid_input_values = array('none','text','decimal','numeric','tel','search','email','url');
				if(in_array($attr_value,$valid_input_values)){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'inputmode must have none|text|decimal|numeric|tel|search|email|url values you provide sth else!' );
					return NULL;
				}
			break;
			case "is":
				$reserved_names = array('annotation-xml','color-profile','font-face','font-face-src','font-face-uri','font-face-format','font-face-name','missing-glyph');
				$attr_value = strtolower($attr_value);
				$first_str = substr($attr_value, 0, 1);
				if($this->has_not_space($attr_value)){
					if($this->is_ascii($attr_value)){
						if($first_str<>'-'){
							if(!is_numeric($first_str)){
								if(strpos($attr_value,'-')===true){
									if(!in_array($attr_value,$reserved_names )){
										//there is some warning in element naming that will not applied
										return $this->sst_set_attr_pair($attr_name,$attr_value);
									}else{
										sst_error_log( 'The supplied element name is reserved and can\'t be used.\nSee: https://html.spec.whatwg.org/multipage/scripting.html#valid-custom-element-name');
										return NULL;
									}
								}else{
									sst_error_log( 'Custom element names must contain a hyphen. Example: unicorn-cake');
									return NULL;
								}
							}else{
								sst_error_log( 'Custom element names must not start with a digit.');
								return NULL;
							}
						}else{
							sst_error_log( 'Custom element names must not start with a hyphen.');
							return NULL;					
						}
					}else{
						sst_error_log( 'Custom element names must not conatin non ASCII.');
						return NULL;					
					}
				}else{
					sst_error_log( 'Custom element names must not conatin any type of space.');
					return NULL;					
				}
			break;
			case "itemid":
				//it can be global identifier and or url very complicated to validate
				return $this->sst_set_attr_pair($attr_name,$attr_value);
			break;
			case "itemscope":
				return $attr_name;
			break;
			case "itemtype":
				$valid = $this->is_absoulute_url($attr_value);
				if($valid){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'itemtype must be url you provide not valid one.');
					return NULL;					
				}
			break;
			case "lang":
				//Visit registerd languages:http://www.iana.org/assignments/language-subtag-registry/language-subtag-registry
				if(!empty($attr_value)){
					$attr_value_arr = explode('-',$attr_value);
					$lang_count = count($attr_value_arr[0]);
					if(isset($attr_value_arr[1])){
						$subtag_count = count($attr_value_arr[1]);
					}else{
						$subtag_count = '';
					}
					if( 2 > $lang_count and $lang_count > 3 and $this->is_alpha($attr_value_arr[0])){
						if(2>$subtag_count and $subtag_count>3  and $this->is_alpha($attr_value_arr[0] and !isset($attr_value_arr[2]))){
							return $this->sst_set_attr_pair($attr_name,$attr_value);
						}else{
							return $this->sst_set_attr_pair($attr_name,$attr_value_arr[0]);
						}
					}else{
						sst_error_log( 'lang code cant be more than three letters and less than two letters.');
						return NULL;					
					}
				}
			break;
			case "slot"://"name" attribute rules
				if($this->has_not_space($attr_value)){
					if($this->is_ascii($attr_value)){
						if(!$this->has_html_prevented_chars($attr_value)){
							return $this->sst_set_attr_pair($attr_name,$attr_value);
						}else{
							sst_error_log( 'slot name must have prevented chars:",\',>,/,= .');
							return NULL;					
						}
					}else{
						sst_error_log( 'slot name must have only ASCII charecters.');
						return NULL;					
					}
				}else{
					sst_error_log( 'slot name cant have space.');
					return NULL;					
				}
			break;
			case "spellcheck":
				$attr_value = strtolower($attr_value);
				if($attr_value=='true' or $attr_value=='false'){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'spellcheck must have true|false values you provide sth else!' );
					return NULL;
				}
			break;
			case "tabindex":
				if(is_numeric($attr_value)){
					if($attr_value>=-1){
						return $this->sst_set_attr_pair($attr_name,$attr_value);
					}else{
						sst_error_log( 'tabindex numbers start form -1 to infinite positive numebers!' );
						return NULL;
					}
				}else{
					sst_error_log( 'tabindex must be number!' );
					return NULL;
				}
			break;
			case "title":
				return $this->sst_set_attr_pair($attr_name,$attr_value);
			break;
			case "translate":
				$attr_value = strtolower($attr_value);
				if($attr_value=='yes' or $attr_value=='no'){
					return $this->sst_set_attr_pair($attr_name,$attr_value);
				}else{
					sst_error_log( 'translate must have yes|no values you provide sth else!' );
					return NULL;
				}
			break;
			case "class":
				//multiple values allowed so space is allowed
				return $this->sst_set_attr_pair($attr_name,$attr_value);
			break;
			case "itemref":
				//multiple values allowed so space is allowed
				return $this->sst_set_attr_pair($attr_name,$attr_value);
			break;
			case "itemprop":
				return $this->sst_set_attr_pair($attr_name,$attr_value);
			break;
			case "style":
				return $this->sst_set_attr_pair($attr_name,$attr_value);
			break;
			default:
				return $this->sst_set_attr_pair($attr_name,$attr_value);
			break;
		}
    }

    /**************************************************
     *version 1.0.0
     *these is for creating multiple simple attribute and value pair by giving attr name in key and attr value in array value
     **************************************************/
    function create_multiple_attrs( $attr_name_value ) {
        $attrs = array();
        foreach ( $attr_name_value as $attr_name => $attr_value ) {
            $attr = $this->create_simple_attr( $attr_name, $attr_value );
            if ( !empty( $attr ) ) {
                //itemid requires existence of itemscope and itemtype
                if ( $attr_name == 'itemid'
                    and $attr_name_value[ 'itemscope' ]and $attr_name_value[ 'itemtype' ] ) {
                    $attrs[] = $attr;
                    //itemref requires existence of itemscope
                } elseif ( $attr_name == 'itemref'
                    and $attr_name_value[ 'itemscope' ] ) {
                    $attrs[] = $attr;
                } else {
                    $attrs[] = $attr;
                }
            }
        }
        if ( !empty( $attrs ) ) {

            return implode( ' ', $attrs );
        } else {
            return NULL;
        }
    }
	
	function sst_set_attr_pair($attr_name,$attr_value){
		if(!empty($attr_value)){
			return $attr_name . '="' . htmlentities($attr_value) . '"';
		}else{
			return NULL;
		}
	}
}
