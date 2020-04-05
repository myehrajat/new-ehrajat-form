<?php
interface attribute_global_generator_interface {
    function create_attr_html_global();

    function create_attr_html_global_itemprops( $itemprop_ids );

    function create_attr_html_global_itemrefs( $itemref_ids );

    function create_attr_html_global_classes( $class_ids );

    function create_attr_html_global_styles( $style_ids );

    function create_attr_html_global_events( $onevent_ids );

    function create_attr_html_global_jsfunction( $jsfunction_id );

    function create_attr_html_global_data( $data_ids );

}
class attribute_global_generator extends attribute_generator implements attribute_global_generator_interface {
    var $global_obj;
    //var $global_attr;

    function __construct( $attr_html_global_id =NULL) {
		parent::__construct();
        if ( !empty( $attr_html_global_id ) ) {
            $attr_html_global_id = $this->get_ids( $attr_html_global_id, true );
            if ( !empty( $attr_html_global_id ) ) { //after trying to extract id from string eg eval code or complex string id
                $this->global_obj = $this->get_by_id( $attr_html_global_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global' ] );
                $this->global_attr = $this->create_attr_html_global();
            } else {
                $this->error_log( 'global attrs ids string after processing provid any id.' );
                $this->global_obj = NULL;
            }
        } else {
            //$this->error_log( 'global attrs id provided is empty string.' );
            $this->global_obj = NULL;
            $this->input_data[ 'attrs' ] = array();
            return $this->input_data[ 'attrs' ];
        }
    }

    /**************************************************
     *version 1.0.0
     *these for styling and adding title/style/class these are styling global attribute ones which will not included in standard
     **************************************************/
    function create_attr_html_global() {
        $attr_html_global_arr = array();
        if ( $this->global_obj ) {
            $global = $this->create_multiple_attrs( array(
                'accesskey' => $this->global_obj->accesskey,
                'autocapitalize' => $this->global_obj->autocapitalize,
                'class' => $this->create_attr_html_global_classes( $this->global_obj->class_ids ), //space seperated values
                'contenteditable' => $this->global_obj->contenteditable,
                'contextmenu' => $this->global_obj->contextmenu,
                'dir' => $this->global_obj->dir,
                'draggable' => $this->global_obj->draggable,
                'dropzone' => $this->global_obj->dropzone,
                'hidden' => $this->global_obj->hidden,
                'inputmode' => $this->global_obj->inputmode,
                'id' => $this->global_obj->the_id,
                'is' => $this->global_obj->is,
                'itemid' => $this->global_obj->itemid,
                'itemprop' => $this->create_attr_html_global_itemprops( $this->global_obj->itemprop_ids ), //space seperated values
                'itemref' => $this->create_attr_html_global_itemrefs( $this->global_obj->itemref_ids ), //space seperated values
                'itemscope' => $this->global_obj->itemscope,
                'itemtype' => $this->global_obj->itemtype,
                'lang' => $this->global_obj->lang,
                'slot' => $this->global_obj->slot,
                'spellcheck' => $this->global_obj->spellcheck,
                'style' => $this->create_attr_html_global_styles( $this->global_obj->style_ids ), //; seperated values
                'tabindex' => $this->global_obj->tabindex,
                'title' => $this->global_obj->title,
                'translate' => $this->global_obj->translate,
            ) );
            if ( !empty( $global ) ) {
				$this->input_data[ 'attrs' ] = array_merge($this->input_data[ 'attrs' ],$global);
               // $attr_html_global_arr[] = $global;
            }
			//krumo($this->input_data);
            $event = $this->create_attr_html_global_events( $this->global_obj->onevent_ids );
            if ( !empty( $event ) ) {
				$this->input_data[ 'attrs' ] = array_merge($this->input_data[ 'attrs' ],$event);
                //$attr_html_global_arr[] = $event;
            }
            $data = $this->create_attr_html_global_data( $this->global_obj->data_ids );
            if ( !empty( $data ) ) {
				$this->input_data[ 'attrs' ] = array_merge($this->input_data[ 'attrs' ],$data);
                //$attr_html_global_arr[] = $data;
            }
            if ( !empty( $attr_html_global_arr ) ) {
                //$this->global_attr = implode( ' ', $attr_html_global_arr );
                //return $this->global_attr;
            } else {
                return NULL;
            }
        } else {
            $this->error_log( 'cant retrieve global input attr row.' );
            return NULL;
        }


    }
    /**************************************************
     *version 1.0.0
     *these for getting itemrefs from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_itemprops( $itemprop_ids ) {
        if ( !empty( $itemprop_ids ) ) {
            $itemprops = array();
            $itemprop_ids_arr = array();
            $itemprop_ids_arr = $this->get_ids( $itemprop_ids );
            if ( !empty( $itemprop_ids_arr ) ) {
                foreach ( $itemprop_ids_arr as $itemprop_id ) {
                    $itemprop_obj = $this->get_by_id( $itemprop_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemprop' ] );
                    if ( !empty( $itemprop_obj->itemprop ) ) {
                        $itemprops[] = htmlentities( $this->is_eval_run( $itemprop_obj->itemprop ) );
                    }
                }
                if ( !empty( $itemprops ) ) {
                    return implode( ' ', $itemprops );
                } else { //class ids is ok but all the $itemprops rows are empty.
                    return NULL;
                }
            } else { //$itemprop ids means empty eg. 1-3,-1,-2,-3

                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }
    /**************************************************
     *version 1.0.0
     *these for getting itemrefs from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_itemrefs( $itemref_ids ) {
        if ( !empty( $itemref_ids ) ) {
            $itemrefs = array();
            $itemref_ids_arr = array();
            $itemref_ids_arr = $this->get_ids( $itemref_ids );
            if ( !empty( $itemref_ids_arr ) ) {
                foreach ( $itemref_ids_arr as $itemref_id ) {
                    $itemref_obj = $this->get_by_id( $itemref_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemref' ] );
                    if ( !empty( $itemref_obj->itemref ) ) {
                        $itemrefs[] = htmlentities( $this->is_eval_run( $itemref_obj->itemref ) );
                    }
                }
                if ( !empty( $itemrefs ) ) {
                    return implode( ' ', $itemrefs );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }

    }
    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_classes( $class_ids ) {
        if ( !empty( $class_ids ) ) {
            $classes = array();
            $class_ids_arr = array();
            $class_ids_arr = $this->get_ids( $class_ids );
            if ( !empty( $class_ids_arr ) ) {
                foreach ( $class_ids_arr as $class_id ) {
                    $class_obj = $this->get_by_id( $class_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_class' ] );
                    if ( !empty( $class_obj->class ) ) {
                        $classes[] = htmlentities( $this->is_eval_run( $class_obj->class ) );
                    }
                }
                if ( !empty( $classes ) ) {
                    return implode( ' ', $classes );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }
    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_styles( $style_ids ) {
        if ( !empty( $style_ids ) ) {
            $styles = array();
            $style_ids_arr = array();
            $style_ids_arr = $this->get_ids( $style_ids );
            if ( !empty( $style_ids_arr ) ) {
                foreach ( $style_ids_arr as $style_id ) {
                    $style = NULL;
                    $style_obj = $this->get_by_id( $style_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_style' ] );
                    if ( !empty( $style_obj->css_attribute ) && !empty( $style_obj->css_value ) ) {
                        $css_attribute_result = $this->is_eval_run( $style_obj->css_attribute );
                        $style = htmlentities( $css_attribute_result ) . ':' . htmlentities( $this->is_eval_run( $style_obj->css_value ) );
                        $important_result = $this->is_eval_run( $style_obj->important );
                        if ( $important_result ) {
                            $style .= ' !important';
                        }
                    }
                    if ( $style != NULL ) {
                        $styles[] = $style;
                    }
                }
                if ( !empty( $styles ) ) {
                    return implode( ';', $styles ) . ';';
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
	 complete list :https://developer.mozilla.org/en-US/docs/Web/Events
     **************************************************/
    function create_attr_html_global_events( $onevent_ids ) {
        if ( !empty( $onevent_ids ) ) {
            $onevents = array();
            $onevent_ids_arr = array();
            $onevent_ids_arr = $this->get_ids( $onevent_ids );
            if ( !empty( $onevent_ids_arr ) ) {
                foreach ( $onevent_ids_arr as $onevent_id ) {
                    $onevent_obj = $this->get_by_id( $onevent_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_event' ] );
                    $onevent_result = strtolower( $this->is_eval_run( $onevent_obj->event ) );
                    if ( $this->starts_with( $onevent_result, 'on' ) && !empty( $onevent_obj->jsfunction_ids ) ) {
						
                        $jsfunction_ids_arr = $this->get_ids( $onevent_obj->jsfunction_ids );
						
                        foreach ( $jsfunction_ids_arr as $jsfunction_id ) {
                            $jsfunction = $this->create_attr_html_global_jsfunction( $jsfunction_id );
                            if ( !empty( $jsfunction ) ) {
                                $onevents[ htmlentities( $onevent_result ) ] .= $this->escape_java_script_text(html_entity_decode(($jsfunction))).';';
                                //$onevents[ htmlentities( $onevent_result ) ] = htmlspecialchars($jsfunction).';';
                            }
                        }
                    }
                }

				if ( !empty( $onevents ) ) {
                    //foreach ( $onevents as $onevent_name => $onevent_js_array ) {
                    ///    $all_events_arr[] = $onevent_name . '="' . implode( ";", $onevent_js_array ) . '"';
                   // }
					//krumo($onevents);
					return $onevents;
                    //return implode( ' ', $all_events_arr );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }
function escape_java_script_text($str)
{	
	$str = str_replace('<','&lt;',$str);
	$str = str_replace('>','&gt;',$str);
	$str = str_replace('&','&amp;',$str);
	$str = str_replace('"','&quot;',$str);
	$str = str_replace("'","&#39;",$str);
    return $str;
}
	/**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_jsfunction( $jsfunction_id ) {
        $jsfunction_obj = $this->get_by_id( $jsfunction_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_event_jsfunction' ] );
        if ( !empty( $jsfunction_obj->jsfunction ) ) {
            return htmlentities( $this->is_eval_run( $jsfunction_obj->jsfunction ) );
        } else {
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting data-* from its special table by  space delimited value
     **************************************************/
    function create_attr_html_global_data( $data_ids ) {
        if ( !empty( $data_ids ) ) {
            $data = array();
            $data_arr = array();
            $data_ids_arr = $this->get_ids( $data_ids );
            if ( !empty( $data_ids_arr ) ) {
                foreach ( $data_ids_arr as $single_data_id ) {
                    $single_data_obj = $this->get_by_id( $single_data_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_data' ] );
                    if ( !empty( $single_data_obj->data_attribute ) && !empty( $single_data_obj->data_value ) ) {
						//the name must not contain capital letters.
                        $data_attribute_result = strtolower($this->is_eval_run( $single_data_obj->data_attribute ));
                        $data_value_result = $this->is_eval_run( $single_data_obj->data_value );
                        if ( $this->is_valid_custom_attr_name( $data_attribute_result ) ) {
							if(!$this->has_contain(';',$data_attribute_result)){
								if(!$this->starts_with( $data_attribute_result, 'xml' )){
									//the name must not contain capital letters.
									$data[] = 'data-' . $data_attribute_result. '="' . htmlentities( $data_value_result ) . '"';
								}else{
									//https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/data-*
									//the name must not start with xml, whatever case is used for these letters;
									return NULL;
								}
							}else{
								//https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/data-*
								//the name must not contain any semicolon (U+003A);
								return NULL;
							}
                        } else { //data-* is not valid name
                            return NULL;
                        }
                    }
                }
                if ( !empty( $data ) ) {
                    return implode( ' ', $data );
                } else { //class ids is ok but all the classes rows are empty.
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                return NULL;
            }
        } else { //classes ids is empty string
            return NULL;
        }
    }
}