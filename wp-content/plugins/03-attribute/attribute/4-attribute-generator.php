<?php
interface attribute_generator_interface{
	function create_simple_attr( $attr_name, $attr_value, $html_input_type );
	function create_multiple_attrs( $attr_name_value, $html_input_type = NULL );
}
class attribute_generator extends attribute_input_validator implements attribute_generator_interface {
    /*
    Class Description:this is for creating multiple of attributes eg specific and global or common
    */

    /**************************************************
     *version 1.0.0
     *these is for creating one simple attribute and value pair
     **************************************************/
    function create_simple_attr( $attr_name, $attr_value, $html_input_type ) {

        if ( $this->is_valid_custom_attr_name( $attr_name ) ) {
            $attr_value = trim( $attr_value );
            $attr_value = $this->is_eval_run( $attr_value );
            $attr_name = $this->is_eval_run( $attr_name );
            if ( empty( $attr_name ) ) {
                $this->error_log( 'attribute name provided is empty or after removing all unallowed characters it converted to empty and remain nothing.' );
                $result_attr = NULL;
            }
            if ( empty( $attr_value ) ) {
                $result_attr = NULL;
            }
            $attr_value = $this->is_eval_run( $attr_value );
            switch ( $attr_name ) {
                case "accesskey":
                    $result_attr = $this->attr_accesskey( $attr_value );
                    break;
                case "autocapitalize":
                    $result_attr = $this->attr_autocapitalize( $attr_value );
                    break;
                case "class":
                    $result_attr = $this->attr_class( $attr_value );
                    break;
                case "contenteditable":
                    $result_attr = $this->attr_contenteditable( $attr_value );
                    break;
                case "contextmenu":
                    $result_attr = $this->attr_contextmenu( $attr_value );
                    break;
                case "dir":
                    $result_attr = $this->attr_dir( $attr_value );
                    break;
                case "draggable":
                    $result_attr = $this->attr_draggable( $attr_value );
                    break;
                case "dropzone":
                    $result_attr = $this->attr_dropzone( $attr_value );
                    break;
                case "hidden":
                    $result_attr = $this->attr_hidden( $attr_value );
                    break;
                case "id":
                    $result_attr = $this->attr_id( $attr_value );
                    break;
                case "inputmode":
                    $result_attr = $this->attr_inputmode( $attr_value );
                    break;
                case "is":
                    $result_attr = $this->attr_is( $attr_value );
                    break;
                case "itemid":
                    $result_attr = $this->attr_itemid( $attr_value );
                    break;
                case "itemprop":
                    $result_attr = $this->attr_itemprop( $attr_value );
                    break;
                case "itemref":
                    $result_attr = $this->attr_itemref( $attr_value );
                    break;
                case "itemscope":
                    $result_attr = $this->attr_itemscope( $attr_value );
                    break;
                case "itemtype":
                    $result_attr = $this->attr_itemtype( $attr_value );
                    break;
                case "lang":
                    $result_attr = $this->attr_lang( $attr_value );
                    break;
                case "slot":
                    $result_attr = $this->attr_slot( $attr_value );
                    break;
                case "spellcheck":
                    $result_attr = $this->attr_spellcheck( $attr_value );
                    break;
                case "style":
                    $result_attr = $this->attr_style( $attr_value );
                    break;
                case "tabindex":
                    $result_attr = $this->attr_tabindex( $attr_value );
                    break;
                case "title":
                    $result_attr = $this->attr_title( $attr_value );
                    break;
                case "translate":
                    $result_attr = $this->attr_translate( $attr_value );
                    break;
                    /*******************************************
                    SPECIFIC ATTRIBUTES
                    ********************************************/

                case "accept":
                    $result_attr = $this->attr_accept( $attr_value );
                    break;
                case "alt":
                    $result_attr = $this->attr_alt( $attr_value );
                    break;
                case "autocomplete":
                    $result_attr = $this->attr_autocomplete( $attr_value );
                    break;
                case "autofocus":
                    $result_attr = $this->attr_autofocus( $attr_value );
                    break;
                case "capture":
                    $result_attr = $this->attr_capture( $attr_value );
                    break;
                case "checked":
                    $result_attr = $this->attr_checked( $attr_value );
                    break;
                case "cols":
                    $result_attr = $this->attr_cols( $attr_value );
                    break;
                case "dirname":
                    $result_attr = $this->attr_dirname( $attr_value );
                    break;
                case "disabled":
                    $result_attr = $this->attr_disabled( $attr_value );
                    break;
                case "form":
                    $result_attr = $this->attr_form( $attr_value );
                    break;
                case "formaction":
                    $result_attr = $this->attr_formaction( $attr_value );
                    break;
                case "formenctype":
                    $result_attr = $this->attr_formenctype( $attr_value );
                    break;
                case "formmethod":
                    $result_attr = $this->attr_formmethod( $attr_value );
                    break;
                case "formnovalidate":
                    $result_attr = $this->attr_formnovalidate( $attr_value );
                    break;
                case "formtarget":
                    $result_attr = $this->attr_formtarget( $attr_value );
                    break;
                case "height":
                    $result_attr = $this->attr_height( $attr_value );
                    break;
                case "label":
                    $result_attr = $this->attr_label( $attr_value );
                    break;
                case "list":
                    $result_attr = $this->attr_list( $attr_value );
                    break;
                case "max":
                    $result_attr = $this->attr_max( $attr_value, $html_input_type );
                    break;
                case "maxlength":
                    $result_attr = $this->attr_maxlength( $attr_value );
                    break;
                case "min":
                    $result_attr = $this->attr_min( $attr_value, $html_input_type );
                    break;
                case "minlength":
                    $result_attr = $this->attr_minlength( $attr_value );
                    break;
                case "multiple":
                    $result_attr = $this->attr_multiple( $attr_value );
                    break;
                case "name":
                    $result_attr = $this->attr_name( $attr_value );
                    break;
                case "pattern":
                    $result_attr = $this->attr_pattern( $attr_value );
                    break;
                case "placeholder":
                    $result_attr = $this->attr_placeholder( $attr_value );
                    break;
                case "readonly":
                    $result_attr = $this->attr_readonly( $attr_value );
                    break;
                case "required":
                    $result_attr = $this->attr_required( $attr_value );
                    break;
                case "rows":
                    $result_attr = $this->attr_rows( $attr_value );
                    break;
                case "selected":
                    $result_attr = $this->attr_selected( $attr_value );
                    break;
                case "size":
                    $result_attr = $this->attr_size( $attr_value );
                    break;
                case "src":
                    $result_attr = $this->attr_src( $attr_value, $html_input_type );
                    break;
                case "step":
                    $result_attr = $this->attr_step( $attr_value, $html_input_type );
                    break;
                case "value":
                    $result_attr = $this->attr_value( $attr_value );
                    break;
                case "wrap":
                    $result_attr = $this->attr_wrap( $attr_value );
                    break;
                case "width":
                    $result_attr = $this->attr_width( $attr_value );
                    break;
                case "type":
                    $result_attr = $this->create_attribute( $attr_name, $attr_value );
                    break;
                default:
                    $result_attr = $this->create_attribute( $attr_name, $attr_value );
                    break;
            }
        } else {
            $result_attr = NULL;
            $this->error_log( 'attribute name provided is not empty but its invalid.' );
        }
        return $result_attr;
    }

    /**************************************************
     *version 1.0.0
     *these is for creating multiple simple attribute and value pair by giving attr name in key and attr value in array value
     **************************************************/
    function create_multiple_attrs( $attr_name_value, $html_input_type = NULL ) {
        $attrs = array();
        if ( !empty( $attr_name_value ) ) {
            foreach ( $attr_name_value as $attr_name => $attr_value ) {
                $attr = $this->create_simple_attr( $attr_name, $attr_value, $html_input_type );
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

        }
        if ( !empty( $attrs ) ) {
            return implode( ' ', $attrs );
        } else {
            return NULL;
        }
    }

}