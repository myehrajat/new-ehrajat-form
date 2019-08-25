<?php
    /**************************************************
     *version 1.0.0
     *
     **************************************************/

class global_attr extends attr {

    /**************************************************
     *version 1.0.0
     *these for styling and adding title/style/class these are styling global attribute ones which will not included in standard
     **************************************************/
    function sst_create_attr_html_global( $attr_html_global_id ) {
        $attr_html_global_arr = array();
        $attr_html_global_id = $this->make_num( $attr_html_global_id );
        $obj_attr_html_global = $this->get_by_id( $attr_html_global_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global' ] );
        $global = $this->create_multiple_attrs( array( 
			'accesskey' => $obj_attr_html_global->accesskey,
            'autocapitalize' => $obj_attr_html_global->autocapitalize,
            'contenteditable' => $obj_attr_html_global->contenteditable,
            'contextmenu' => $obj_attr_html_global->contextmenu,
            'dir' => $obj_attr_html_global->dir,
            'draggable' => $obj_attr_html_global->draggable,
            'dropzone' => $obj_attr_html_global->dropzone,
            'hidden' => $obj_attr_html_global->hidden,
            'inputmode' => $obj_attr_html_global->inputmode,
            'id' => $obj_attr_html_global->the_id,
            'is' => $obj_attr_html_global->is,
            'itemid' => $obj_attr_html_global->itemid,
            'itemscope' => $obj_attr_html_global->itemscope,
            'itemtype' => $obj_attr_html_global->itemtype,
            'lang' => $obj_attr_html_global->lang,
            'the_id' => $obj_attr_html_global->the_id,
            'slot' => $obj_attr_html_global->slot,
            'spellcheck' => $obj_attr_html_global->spellcheck,
            'tabindex' => $obj_attr_html_global->tabindex,
            'title' => $obj_attr_html_global->title,
            'translate' => $obj_attr_html_global->translate,
            'class' => $this->sst_create_attr_html_global_classes( $obj_attr_html_global->class_ids ),
            'itemref' => $this->sst_create_attr_html_global_itemrefs( $obj_attr_html_global->itemref_ids ),
            'itemprop' => $this->sst_create_attr_html_global_itemprops( $obj_attr_html_global->itemprop_ids ),
            'style' => $this->sst_create_attr_html_global_styles( $obj_attr_html_global->style_ids ),
        ) );
        if ( !empty( $global ) ) {
            $attr_html_global_arr[] = $global;
        }
        $event = $this->sst_create_attr_html_global_events( $obj_attr_html_global->onevent_ids );
        if ( !empty( $event ) ) {
            $attr_html_global_arr[] = $event;
        }
        $data = $this->sst_create_attr_html_global_data( $obj_attr_html_global->data_ids );
        if ( !empty( $data ) ) {
            $attr_html_global_arr[] = $data;
        }
        if ( !empty( $attr_html_global_arr ) ) {
            //dbg(implode(' ',$attr_html_global_arr));
            return implode( ' ', $attr_html_global_arr );
        } else {
            return NULL;
        }
    }


    /**************************************************
     *version 1.0.0
     *these for getting itemrefs from its special table by  space delimited value
     **************************************************/
    function sst_create_attr_html_global_itemprops( $itemprop_ids ) {
        if ( !empty( $itemprop_ids ) ) {
            $itemprops = array();
            $itemprop_ids_arr = array();
            $itemprop_ids_arr = $this->get_ids( $itemprop_ids );
            if ( !empty( $itemprop_ids_arr ) ) {
                foreach ( $itemprop_ids_arr as $itemprop_id ) {
                    $itemprop_obj = $this->get_by_id( $itemprop_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemprop' ] );
                    if ( !empty( $itemprop_obj->itemprop ) ) {
                        $itemprops[] = htmlentities( $itemprop_obj->itemprop );
                    }
                }
                if ( !empty( $itemprops ) ) {
                    return implode( ' ', $itemprops );
                } else { //class ids is ok but all the classes rows are empty.
                    //dbg('class ids is ok but all the classes rows are empty.');
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                //dbg('class ids means empty eg. 1-3,-1,-2,-3');
                return NULL;
            }
        } else { //classes ids is empty string
            //dbg('classes ids is empty string');
            return NULL;
        }
    }
    /**************************************************
     *version 1.0.0
     *these for getting itemrefs from its special table by  space delimited value
     **************************************************/
    function sst_create_attr_html_global_itemrefs( $itemref_ids ) {
        if ( !empty( $itemref_ids ) ) {
            $itemrefs = array();
            $itemref_ids_arr = array();
            $itemref_ids_arr = $this->get_ids( $itemref_ids );
            if ( !empty( $itemref_ids_arr ) ) {
                foreach ( $itemref_ids_arr as $itemref_id ) {
                    $itemref_obj = $this->get_by_id( $itemref_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_itemref' ] );
                    if ( !empty( $itemref_obj->itemref ) ) {
                        $itemrefs[] = htmlentities( $itemref_obj->itemref );
                    }
                }
                if ( !empty( $itemrefs ) ) {
                    return implode( ' ', $itemrefs );
                } else { //class ids is ok but all the classes rows are empty.
                    //dbg('class ids is ok but all the classes rows are empty.');
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                //dbg('class ids means empty eg. 1-3,-1,-2,-3');
                return NULL;
            }
        } else { //classes ids is empty string
            //dbg('classes ids is empty string');
            return NULL;
        }

    }
    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function sst_create_attr_html_global_classes( $class_ids ) {
        if ( !empty( $class_ids ) ) {
            $classes = array();
            $class_ids_arr = array();
            $class_ids_arr = $this->get_ids( $class_ids );
            if ( !empty( $class_ids_arr ) ) {
                foreach ( $class_ids_arr as $class_id ) {
                    $class_obj = $this->get_by_id( $class_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_class' ] );
                    if ( !empty( $class_obj->class ) ) {
                        $classes[] = htmlentities( $class_obj->class );
                    }
                }
                if ( !empty( $classes ) ) {
                    return implode( ' ', $classes );
                } else { //class ids is ok but all the classes rows are empty.
                    //dbg('class ids is ok but all the classes rows are empty.');
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                //dbg('class ids means empty eg. 1-3,-1,-2,-3');
                return NULL;
            }
        } else { //classes ids is empty string
            //dbg('classes ids is empty string');
            return NULL;
        }
    }
    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function sst_create_attr_html_global_styles( $style_ids ) {
        if ( !empty( $style_ids ) ) {
            $styles = array();
            $style_ids_arr = array();
            $style_ids_arr = $this->get_ids( $style_ids );
            if ( !empty( $style_ids_arr ) ) {
                foreach ( $style_ids_arr as $style_id ) {
                    $style = NULL;
                    $style_obj = $this->get_by_id( $style_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_style' ] );
                    if ( !empty( $style_obj->css_attribute ) && !empty( $style_obj->css_value ) ) {
                        $style = htmlentities( $style_obj->css_attribute ) . ':' . htmlentities( $style_obj->css_value );
                        if ( $style_obj->important ) {
                            $style .= ' !important';
                        }
                        $style .= ';';
                    }
                    if ( $style != NULL ) {
                        $styles[] = $style;
                    }
                }
                if ( !empty( $styles ) ) {
                    //dbg($styles);
                    return implode( '', $styles );
                } else { //class ids is ok but all the classes rows are empty.
                    //dbg('class ids is ok but all the classes rows are empty.');
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                //dbg('class ids means empty eg. 1-3,-1,-2,-3');
                return NULL;
            }
        } else { //classes ids is empty string
            //dbg('classes ids is empty string');
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function sst_create_attr_html_global_events( $onevent_ids ) {
        if ( !empty( $onevent_ids ) ) {
            $onevents = array();
            $onevent_ids_arr = array();
            $onevent_ids_arr = $this->get_ids( $onevent_ids );
            if ( !empty( $onevent_ids_arr ) ) {
                foreach ( $onevent_ids_arr as $onevent_id ) {
                    $onevent_obj = $this->get_by_id( $onevent_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_event' ] );
                    if ( !empty( $onevent_obj->event ) && !empty( $onevent_obj->jsfunction_ids ) ) {
                        $jsfunction_ids_arr = $common->get_ids( $onevent_obj->jsfunction_ids );
                        foreach ( $jsfunction_ids_arr as $jsfunction_id ) {
                            $jsfunction = sst_create_attr_html_global_jsfunction( $jsfunction_id );
                            if ( !empty( $jsfunction ) ) {
                                $onevents[ htmlentities( $onevent_obj->event ) ][] = $jsfunction;
                            }
                        }
                    }
                }
                if ( !empty( $onevents ) ) {
                    foreach ( $onevents as $onevent_name => $onevent_js_array ) {
                        $all_events_arr[] = $onevent_name . '="' . implode( ";", $onevent_js_array ) . '"';
                    }
                    return implode( ' ', $all_events_arr );
                } else { //class ids is ok but all the classes rows are empty.
                    //dbg('class ids is ok but all the classes rows are empty.');
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                //dbg('class ids means empty eg. 1-3,-1,-2,-3');
                return NULL;
            }
        } else { //classes ids is empty string
            //dbg('classes ids is empty string');
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function sst_create_attr_html_global_jsfunction( $jsfunction_id ) {
        $jsfunction_obj = $this->get_by_id( $jsfunction_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_event_jsfunction' ] );
        if ( !empty( $jsfunction_obj->jsfunction ) ) {
            return htmlentities( $jsfunction_obj->jsfunction );
        } else {
            return NULL;
        }
    }

    /**************************************************
     *version 1.0.0
     *these for getting classes from its special table by  space delimited value
     **************************************************/
    function sst_create_attr_html_global_data( $data_ids ) {
        if ( !empty( $data_ids ) ) {
            $data = array();
            $data_arr = array();
            $data_ids_arr = $this->get_ids( $data_ids );
            if ( !empty( $data_ids_arr ) ) {
                foreach ( $data_ids_arr as $single_data_id ) {
                    $single_data_obj = $this->get_by_id( $single_data_id, $GLOBALS[ 'sst_tables' ][ 'attr_html_global_data' ] );
                    if ( !empty( $single_data_obj->data_attribute ) && !empty( $single_data_obj->data_value ) ) {
                        $data[] = 'data-' . htmlentities( strtolower( $single_data_obj->data_attribute ) ) . '="' . htmlentities( $single_data_obj->data_value ) . '"';
                    }
                }
                if ( !empty( $data ) ) {
                    return implode( ' ', $data );
                } else { //class ids is ok but all the classes rows are empty.
                    //dbg('class ids is ok but all the classes rows are empty.');
                    return NULL;
                }
            } else { //class ids means empty eg. 1-3,-1,-2,-3
                //dbg('class ids means empty eg. 1-3,-1,-2,-3');
                return NULL;
            }
        } else { //classes ids is empty string
            //dbg('classes ids is empty string');
            return NULL;
        }
    }
}