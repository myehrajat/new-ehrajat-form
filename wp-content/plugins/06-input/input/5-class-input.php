<?php

class input extends data_creator {
    public $input_data;
    private $common_attr_obj;
    private $global_attr_obj;
    private $specific_attr_obj;
    private $custom_attr_obj;
    public $input_obj;

    function __construct( $input_id = NULL ) {
        parent::__construct();

        $input_id = $this->get_ids( $input_id, true );
        if ( !empty( $input_id ) ) {

            $this->input_obj = $this->get_by_id( $input_id, $GLOBALS[ 'sst_tables' ][ 'input' ] );
            if ( !empty( $this->input_obj ) ) {
                $this->all_attributes( $input_id );
            } else {

                $this->error_log( 'input object cant retrieve.' );
                return NULL;
            }
        } else {
            $this->error_log( 'input id is empty or after processing is empty.' );
            return NULL;
        }
    }

    function common_atrributes( string $input_id ) {
        $this->common_attr_obj = new attribute_input_common_generator( $input_id );
        $input_type_id = $input_obj->type_id;
        $this->input_data[ 'input_type' ] = $this->common_attr_obj->input_type;
        $this->input_data[ 'input_html_type' ] = $this->common_attr_obj->input_html_type;
        $this->input_data[ 'function' ] = $this->common_attr_obj->input_type_obj->function;

    }

    function global_atrributes( string $global_id ) {
        $this->global_attr_obj = new attribute_global_generator( $this->get_ids( $global_id, true ) );
    }

    function specific_atrributes( string $specific_id ) {
        if ( $this->input_data[ 'input_html_type' ] !== 'hidden' ) {
            $specific_id = $this->get_ids( $specific_id, true );
            if ( !empty( $specific_id ) ) {
                $this->specific_attr_obj = new attribute_input_specific_generator( $specific_id, $this->input_data[ 'input_html_type' ] );
                if ( !empty( $this->specific_attr_obj ) ) {
                    /***********
                    following input can use list
                    /text,search,tel,url,range,number,email,date,datetime-local,month,time,week,datetime,color,select
                    **************/
                    $this->input_data[ 'option_data' ] = $this->specific_attr_obj->option_data;
                    $this->input_data[ 'optgroup_data' ] = $this->specific_attr_obj->optgroup_data;
                    $this->input_data[ 'unselected_text' ] = $this->specific_attr_obj->unselected_text;
                    $this->input_data[ 'text' ] = $this->specific_attr_obj->text;
                    $this->input_data[ 'show_first' ] = $this->specific_attr_obj->show_first;
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

        }
    }

    function custom_atrributes( string $custom_id ) {
        $this->custom_attr_obj = new attribute_custom_generator( $input_obj->attr_custom_ids );
    }

    function all_attributes( $input_id ) {

        $all_attr = array();

        $this->common_atrributes( $input_id );
        //dbg('common_atrributes',false);
        $this->global_atrributes( $this->input_obj->attr_html_global_id );
        //dbg('global_atrributes',false);
        $this->specific_atrributes( $this->input_obj->attr_input_specific_id );
        //dbg('specific_atrributes',false);
        $this->custom_atrributes( $this->input_obj->attr_custom_ids );
        if ( empty( $this->common_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->common_attr_obj->input_data[ 'attrs' ] = array();
        }
        if ( empty( $this->global_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->global_attr_obj->input_data[ 'attrs' ] = array();
        }
        if ( empty( $this->specific_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->specific_attr_obj->input_data[ 'attrs' ] = array();
        }
        if ( empty( $this->custom_attr_obj->input_data[ 'attrs' ] ) ) {
            $this->custom_attr_obj->input_data[ 'attrs' ] = array();
        }
        $this->global_attr_obj->input_data[ 'attrs' ] = $this->autogenerate_id( $this->global_attr_obj->input_data[ 'attrs' ] );
        //dbg($this->specific_atrributes->input_data[ 'attrs' ]);
        $this->input_data[ 'attrs' ] = array_merge(
            $this->global_attr_obj->input_data[ 'attrs' ],
            $this->common_attr_obj->input_data[ 'attrs' ],
            $this->custom_attr_obj->input_data[ 'attrs' ],
            $this->specific_attr_obj->input_data[ 'attrs' ]
        );


        $this->input_data = $this->create_access_data( $this->input_data, $this->input_obj );
        $this->input_data = $this->create_unique_id_data( $this->input_data );
        $this->input_data = $this->create_own_data_data( $this->input_data, $this->input_obj );
        $this->input_data = $this->create_tag_data( $this->input_data, $this->input_obj );
        if ( class_exists( 'extra' ) ) {
            if ( $this->input_obj->extra > 0 ) {
                //dbg($this->input_data[ 'attrs' ]['name']); 
                // $this->input_data[ 'attrs' ][ 'name' ] = $this->input_data[ 'attrs' ][ 'name' ] . '[0]';
                // $this->input_data[ 'unique_id' ] = $this->input_data[ 'unique_id' ] . '≪0≫';
            }
            //$this->input_data['extra'][ 'max' ] = $this->input_obj->extra;
        }
		$this->create_input_metas();
		$this->create_input_attr_changer_code();
		$this->create_input_evals();
		//krumo($this->input_data['attr_changer_code']);

		//$this->input_data[ 'eval' ][] =  '$input_data["attrs"]["placeholder"] = $process_data["id"];';
		//$this->input_data[ 'eval' ][] =  '$input_data["attrs"]["disabled"] = "disabled";';
		//krumo('TO do : make eval input data');
    }
	function create_input_attr_changer_code(){
		if(!empty($this->input_obj->attr_changer_condition_ids)){
            $attr_changer_condition_ids = $this->get_ids($this->input_obj->attr_changer_condition_ids );
			if(!empty( $attr_changer_condition_ids)){
				$first_done =false;
				foreach($attr_changer_condition_ids as $attr_changer_condition_id){
					$attr_changer_condition_obj = $this->get_by_id( $attr_changer_condition_id,  $GLOBALS[ 'sst_tables' ][ 'attr_changer_condition' ] );
					if(!empty($attr_changer_condition_obj)){
						if($first_done==false){
							$position = 'first';
							$first_done = true;
						}elseif(strtolower($attr_changer_condition_obj->condition)!='else' and $first_done==true){
							$position = 'middle';
						}elseif(strtolower($attr_changer_condition_obj->condition)=='else'){
							$position = 'last';
						}
						$jquery_code .= $this->create_attr_changer_based_conditions($attr_changer_condition_obj,$position);
					}else{
						$this->error_log( 'attr_changer_condition_obj cant find you use id which not exists :'.$attr_changer_condition_id  );
					}
				}
			}else{
                $this->error_log( 'attr_changer_condition_ids after proccessing ids renturn nothing see:'.$this->input_obj->attr_changer_condition_ids  );
			}
		}
		if(!empty($jquery_code )){
			
			$this->input_data['attr_changer_code']= "jQuery('#".$this->input_data['attrs']['id']."').on('input', function($) {".$jquery_code .'});';
			//if()
			//krumo($this->input_data['input_html_type']);
			switch($this->input_data['input_html_type']){
				case "radio":
				case "checkbox":
					$this->input_data['attr_changer_code']= str_replace('{self}','jQuery("#'.$this->input_data['attrs']['id'].':checked").val()',$this->input_data['attr_changer_code']);
					break;
				default:
					$this->input_data['attr_changer_code']= str_replace('{self}','jQuery("#'.$this->input_data['attrs']['id'].'").val()',$this->input_data['attr_changer_code']);
					break;
			}
			//
		}

	}
	function create_attr_changer_based_conditions($attr_changer_condition_obj,$position){
		//krumo($this->input_data['attrs']['id']);
		switch($position){
			case 'first':
				$jquery_code .= 'if(' . str_replace('{name:','{name_jq_value:',$attr_changer_condition_obj->condition).'){';
				break;
			case 'middle':
				$jquery_code .= 'else if(' . str_replace('{name:','{name_jq_value:',$attr_changer_condition_obj->condition).'){';
				break;
			case 'last':
				$jquery_code .= 'else(' . str_replace('{name:','{name_jq_value:',$attr_changer_condition_obj->condition).'){';
				break;
		}
        $attr_changer_ids = $this->get_ids( $attr_changer_condition_obj->attr_changer_ids );
		if(!empty($attr_changer_ids)){
			foreach($attr_changer_ids as $attr_changer_id){
				$attr_changer_obj = $this->get_by_id( $attr_changer_id,  $GLOBALS[ 'sst_tables' ][ 'attr_changer' ] );
				$input_ids = $this->get_ids( $attr_changer_obj->input_ids );
				if(!empty($input_ids)){
					foreach($input_ids as $input_id){
						$input_obj = $this->get_by_id( $input_id,  $GLOBALS[ 'sst_tables' ][ 'input' ]);
						if(strtolower($attr_changer_obj->remove_attr)=='remove'){
							$jquery_code .= 'jQuery("{name:'.$input_obj->name.'}").removeAttr("'.$attr_changer_obj->attr.'");';
						}else{
							$jquery_code .= 'jQuery("{name:'.$input_obj->name.'}").attr("'.$attr_changer_obj->attr.'","'.$attr_changer_obj->attr.'");';
						}
					}
				}else{
					$this->error_log( 'Attr change need input ids its empty or after processing return empty.');
				}
			}
		}else{
            $this->error_log( 'No attr change ids is provided with conditions id:'.$attr_changer_condition_obj->id );
		}
		$jquery_code .= '}';
 		return $jquery_code;
	}
    function create_input_evals(){
		if(!empty($this->input_obj->eval_ids)){
            $input_eval_ids = $this->get_ids( $this->input_obj->eval_ids );
            if ( !empty( $input_eval_ids ) ) {
                foreach ( $input_eval_ids as $input_eval_id ) {
                    $input_eval_obj = $this->get_by_id( $input_eval_id, $GLOBALS[ 'sst_tables' ][ 'evals' ] );
					try {
						$input_data = eval( 'error_reporting(E_ALL  & ~E_NOTICE & ~E_WARNING & ~E_NOTICE  );'. $input_eval_obj->eval.";");
						$this->input_data['eval'][] = $input_eval_obj->eval;
					} catch ( Throwable $error ) {
						echo ( 'eval string in evals table has syntax error.Eval id:'.$input_eval_id.'.this code has error: ' . $input_eval_obj->eval );
					}	
				}
			}else{
                $this->error_log( 'input_eval_ids is provided by after processing id string no id remained: '.$this->input_obj->eval_ids );
            }
		}
	}
    function create_input_metas() {
        if ( !empty( $this->input_obj->input_meta_ids ) ) {
            $input_meta_ids = $this->get_ids( $this->input_obj->input_meta_ids );
            if ( !empty( $input_meta_ids ) ) {
                foreach ( $input_meta_ids as $input_meta_id ) {
                    $input_meta_obj = $this->get_by_id( $input_meta_id, $GLOBALS[ 'sst_tables' ][ 'input_meta' ] );
                    if ( !empty( $input_meta_obj ) ) {

						if(!isset($this->input_data[ 'meta' ][ $input_meta_obj->key ])){
							$this->input_data[ 'meta' ][ $input_meta_obj->key ] = $input_meta_obj->value;
						}elseif(!is_array($this->input_data[ 'meta' ][ $input_meta_obj->key ])){
							$this->input_data[ 'meta' ][ $input_meta_obj->key ] = array($this->input_data[ 'meta' ][ $input_meta_obj->key ]); 
							$this->input_data[ 'meta' ][ $input_meta_obj->key ][] = $input_meta_obj->value;
						}else{
							$this->input_data[ 'meta' ][ $input_meta_obj->key ][] = $input_meta_obj->value;
						}
                    } else {
                        $this->error_log( 'no input meta found. meta id:' . $input_meta_id . ' in meta id string:' . $this->input_obj->input_meta_ids );
                    }
                }
            } else {
                $this->error_log( 'input_meta_ids is provided by after processing id string no id remained.' );
            }
        }
    }

    function autogenerate_id( $attrs ) {
        if ( INPUT_AUTO_GENERATE_INPUT_ID == 'yes'
            and!isset( $attrs[ 'id' ] )or empty( $attrs[ 'id' ] ) ) {
            $attrs[ 'id' ] = $this->random_string( 12 );
        }
        return $attrs;
    }

    function render( $input_data = NULL ) {

        return $this->render_input( $input_data );
    }
}