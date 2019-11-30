<?php

class render extends attr {
    #todo : validate html tags
    function create_tag_data( $tag_id ) {
        $tag_id = $this->get_ids( $tag_id, true );
        if ( !empty( $tag_id ) ) {
            $tag_obj = $this->get_by_id( $tag_id, $GLOBALS[ 'sst_tables' ][ 'tags' ] );
            if ( !empty( $tag_obj ) ) {
                return array( 'before' => $tag_obj->tag_before, 'after' => $tag_obj->tag_after );
            }
        }
    }

    function render_tag( $before, $element, $after ) {
        $before = str_replace( '{{id}}', $this->input_data[ 'attrs' ][ 'id' ], $before );
        $after = str_replace( '{{id}}', $this->input_data[ 'attrs' ][ 'id' ], $after );
        return $before . $element . $after;
    }

    function render_datalist() {
        if ( !empty( $this->input_data[ 'option_data' ] ) ) {
            if ( empty( $this->input_data[ 'attrs' ][ 'list' ] ) ) {
                $this->input_data[ 'attrs' ][ 'list' ] = 'random_id_' . $this->random_string();
            }
            $datalist = '<datalist id="' . $this->input_data[ 'attrs' ][ 'list' ] . '">';
            foreach ( $this->input_data[ 'option_data' ] as $option ) {
                $datalist .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>';
            }
            $datalist .= '</datalist>';
            return $datalist;
        }
    }

    function render_select_list() {
        if ( empty( $this->input_data[ 'multiple' ] )and!empty( $this->input_data[ 'unselected_text' ] )and $this->input_data[ 'size' ] <= 1 ) {
            $select_list .= '<option disabled="disabled" label="' . $this->input_data[ 'unselected_text' ] . '">' . $this->input_data[ 'unselected_text' ] . '</option>';
        }
        if ( $this->input_data[ 'show_first' ] == 'option' ) {
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
        } elseif ( $this->input_data[ 'show_first' ] == 'optgroup' ) {
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
        } else {
            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
        }
        return $select_list;
    }

    function render_optgrops( $optgrops ) {
        if ( !empty( $optgrops ) ) {
            foreach ( $optgrops as $optgroup ) {
                $select_list .= '<optgroup' . $this->render_attrs( $optgroup[ 'attrs' ] ) . '>';
                $select_list .= $this->render_options( $optgroup[ 'options' ] );
                $select_list .= '</optgroup>';
            }
        }
        return $select_list;
    }

    function render_options( $options_data ) {
        if ( !empty( $options_data ) ) {
            foreach ( $options_data as $option ) {
                $options .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>' . $option[ 'text' ] . '</option>';
            }
            return $options;
        }
    }
}
class input extends render {
    var $input_type;
    var $input_html_type;

    function __construct( $input_id = NULL ) {

        $input_id = $this->get_ids( $input_id, true );
        if ( !empty( $input_id ) ) {

            $input_obj = $this->get_by_id( $input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
            if ( !empty( $input_obj ) ) {

                $all_attr = array();
                $common_attr_obj = new common_attr( $input_id );
                $input_type_id = $input_obj->type_id;
                $this->input_type = $common_attr_obj->input_type;
                $this->input_html_type = $common_attr_obj->input_html_type;
                $this->input_data[ 'input_type' ] = $common_attr_obj->input_type;
                $this->input_data[ 'input_html_type' ] = $common_attr_obj->input_html_type;
                $global_attr_obj = new global_attr( $this->get_ids( $input_obj->attr_html_global_id, true ) );

                if ( $this->input_html_type !== 'hidden' ) {
                    $specific_id = $this->get_ids( $input_obj->attr_input_specific_id, true );
                    if ( !empty( $specific_id ) ) {
                        $specific_attr_obj = new specific_attr( $specific_id, $this->input_html_type );
                        if ( !empty( $specific_attr_obj ) ) {
                            /***********
                            following input can use list
                            /text,search,tel,url,range,number,email,date,datetime-local,month,time,week,datetime,color,select
                            **************/
                            $this->input_data[ 'option_data' ] = $specific_attr_obj->option_data;
                            $this->input_data[ 'optgroup_data' ] = $specific_attr_obj->optgroup_data;
                            $this->input_data[ 'unselected_text' ] = $specific_attr_obj->unselected_text;
                            $this->input_data[ 'text' ] = $specific_attr_obj->text;
                            $this->input_data[ 'show_first' ] = $specific_attr_obj->show_first;
                        } else {
                            $this->error_log( 'input specific id is incorrect.' );
                            $select_list .= $this->render_optgrops( $this->input_data[ 'optgroup_data' ] );
                            $select_list .= $this->render_options( $this->input_data[ 'option_data' ] );
                            return NULL;
                        }
                    } else {
                        $this->error_log( 'input specific id is empty.' );
                        return NULL;
                    }
                } else {
                    $specific_attr_obj->input_data[ 'attrs' ] = array();
                }
                $custom_attr_obj = new custom_attr( $input_obj->attr_custom_ids );
                $this->input_data[ 'attrs' ] = array_merge(
                    $global_attr_obj->input_data[ 'attrs' ],
                    $common_attr_obj->input_data[ 'attrs' ],
                    $custom_attr_obj->input_data[ 'attrs' ],
                    $specific_attr_obj->input_data[ 'attrs' ]
                );
                $this->input_data[ 'tag' ] = $this->create_tag_data( $input_obj->tag_id );
            } else {
                $this->error_log( 'input object cant retrieve.' );
                return NULL;
            }
        } else {
            $this->error_log( 'input id is empty or after processing is empty.' );
            return NULL;
        }
    }

    function render() {

        switch ( $this->input_data[ 'input_html_type' ] ) {

            case "hidden":
                $this->input = '<input' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>';
                break;
            case "submit":
            case "password":
            case "image":
            case "file":
            case "checkbox":
            case "radio":
                $this->input = '<input' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>';
                break;
            case "text":
            case "search":
            case "tel":
            case "url":
            case "range":
            case "number":
            case "email":
            case "date":
            case "datetime-local":
            case "month":
            case "time":
            case "week":
            case "datetime":
            case "color":
                $datalist = $this->render_datalist();
                $this->input = '<input' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>' . $this->input_data[ 'tag' ][ 'after' ] . $datalist;
                break;
            case "select":
                $select_list = $this->render_select_list();
                $this->input = '<select' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>' . $select_list . '</select>';
                break;
            case "textarea":
                $this->input = '<textarea' . $this->render_attrs( $this->input_data[ 'attrs' ] ) . '>';
                $this->input .= $this->text;
                $this->input .= '</textarea>';
                break;
        }
        $this->input = $this->render_tag( $this->input_data[ 'tag' ][ 'before' ], $this->input, $this->input_data[ 'tag' ][ 'after' ] );
        return $this->input;

    }

    function render_attrs( array $attrs ) {
        foreach ( $attrs as $attr_name => $attr_value ) {
            $all_attrs .= ' ' . $attr_name . '="' . $attr_value . '"';
        }
        return $all_attrs;
    }

}

class field {
    protected $common;
    var $field_obj;
	var $tag_obj;
    var $inputs_data;
    var $inputs;
    var $field;
	var $user_access_obj;
	var $show_or_hide;
	var $enable_or_disable;
	function __construct( $field_id ) {
        $this->common = new common();
		$this->get_field_object($field_id);
		$this->restrict_access();
		$this->create_inputs();
    }
	function get_field_object($field_id){
        $field_id = $this->common->get_ids( $field_id, true );
		if ( !empty( $field_id ) ) {
            $this->field_obj = $this->common->get_by_id( $field_id, $GLOBALS[ 'sst_tables' ][ 'field' ] );
        } else {
            $this->error_log( 'field id is empty or is now positive int.' );
            return NULL;
        }
	}
    function create_inputs() {
            if ( !empty( $this->field_obj ) ) {
                $input_ids = $this->common->get_ids( $this->field_obj->input_ids);
                if ( !empty( $input_ids ) ) {
                    foreach ( $input_ids as $input_id ) {
						$input_obj = new input( $input_id );
						if($this->enable_or_disable == 'disable'){
							$input_obj->input_data['attrs']['disabled'] = 'disabled';
						}
                        $this->inputs_data[] = $input_obj;
                        $this->inputs[] = $input_obj->render();
                    }
                } else {
                    $this->error_log( 'no input ids after processing input ids of your field.' );
                    return NULL;
                }
            } else {
                $this->error_log( 'field id is empty or after processing is empty.' );
                return NULL;
            }

    }

    function render() {
       $tag_id =  $this->common->get_ids( $this->field_obj->tag_id,true );
		if(!empty($tag_id)){
            $this->tag_obj = $this->common->get_by_id( $tag_id , $GLOBALS[ 'sst_tables' ][ 'tags' ] );
			if(!empty( $this->tag_obj )){
				if($this->show_or_hide == 'show'){

					$this->field = $this->tag_obj->tag_before.implode('',$this->inputs).$this->tag_obj->tag_after;
					return $this->field;
				}
			}else{
            $this->error_log( 'tag id provided for field can retireve object.' );
            return NULL;
			}
		}else{
            return NULL;
		}
    }
	function restrict_access(){
       $user_access_id =  $this->common->get_ids( $this->field_obj->user_access_id,true );
		if(!empty($user_access_id)){
            $this->user_access_obj = $this->common->get_by_id( $user_access_id , $GLOBALS[ 'sst_tables' ][ 'user_access' ] );
			if(!empty($this->user_access_obj)){
				$default_show_or_hide = strtolower($this->user_access_obj->default_show_or_hide);
				$except_show_or_hide =  $this->common->get_ids( $this->user_access_obj->except_show_or_hide );
				if($default_show_or_hide!='show' and $default_show_or_hide!='hide'){
					//dbg('gggggggggggggg');
					$default_show_or_hide = DEFAULT_SHOW_OR_HIDE;
				}
				//dbg($default_show_or_hide);
				//dbg($except_show_or_hide);
				//dbg($this->common->user_id);
				switch($default_show_or_hide){
					case 'show':
						if(in_array($this->common->user_id,$except_show_or_hide)){
							$this->show_or_hide = 'hide';
						}else{
							$this->show_or_hide = 'show';
						}
						break;
					case 'hide':
						if(in_array($this->common->user_id,$except_show_or_hide)){
							$this->show_or_hide = 'show';
						}else{
							$this->show_or_hide = 'hide';
						}
						break;
					default:
						$this->error_log( 'default_show_or_hide is incorect even DEFAULT_SHOW_OR_HIDE in config is incorect.' );
						$this->show_or_hide = 'hide';
						break;
				}
				$default_enable_or_disable = strtolower($this->user_access_obj->default_enable_or_disable);
				$except_enable_or_disable =  $this->common->get_ids( $this->user_access_obj->except_enable_or_disable);
				if($default_enable_or_disable!='enable' and $default_enable_or_disable!='disable'){
					$default_show_or_hide = DEFAULT_ENABLE_OR_DISABLE;
				}
				switch($default_enable_or_disable){
					case 'enable':
						if(in_array($this->common->user_id,$except_enable_or_disable)){
							$this->enable_or_disable = 'disable';
						}else{
							$this->enable_or_disable = 'enable';
						}
						break;
					case 'disable':
						if(in_array($this->common->user_id,$except_enable_or_disable)){
							$this->enable_or_disable = 'enable';
						}else{
							$this->enable_or_disable = 'disable';
						}
						break;
					default:
						$this->error_log( 'default_enable_or_disable is incorect even DEFAULT_ENABLE_OR_DISABLE in config is incorect.' );
						$this->enable_or_disable = 'hide';
						break;
				}
			}else{
				$this->error_log( 'user_access_id cant fitnd its obj.' );
				return NULL;
			}
		}else{
            $this->error_log( 'user_access_id after proceesing return enpty id.' );
            return NULL;
		}
		
	}
}



/*
$f = new field( 1 );
//dbg($f );
//die;
echo $f->render();
die;
*/