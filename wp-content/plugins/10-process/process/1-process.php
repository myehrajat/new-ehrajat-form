<?php
class process extends data_creator {
    function __construct( $process_id_str ) {
		parent::__construct();
		$this->generate_vals();
		//krm($this->vals);
		$this->apply_conditions();
		if($this->break!= true){
			$this->get_process_object( $process_id_str );
			$this->generate_process_data();
		}
    }
	function apply_conditions(){
		//krm($this->vals);
		if(!empty($this->vals['__sst__conditions'])){
			//krm('dddddddd');
        	$condition_ids = $this->get_ids( $this->vals['__sst__conditions'] );
			$i=0;
			foreach($condition_ids as $condition_id){
				$condition_obj = $this->get_by_id( $condition_id, $GLOBALS[ 'sst_tables' ][ 'condition' ] );
				$condition_process_id = $this->get_ids($condition_obj->process_id,true);
				if($this->is_positive_number($condition_process_id)){
					if($condition_obj->condition != 'else'){
						if($i == 0){
							$eval_condition_first = 'if('.$condition_obj->condition.'){$p = new process('.$condition_process_id.');echo $p->render();}';
						}else{
							$eval_condition_middle .= 'elseif('.$condition_obj->condition.'){$p = new process('.$condition_process_id.');echo $p->render();}';
						}
					}else{
							$eval_condition_else = 'else{$p = new process('.$condition_process_id.');echo $p->render();}';
					}
					$i++;
				}else{
                    //$this->error_log( 'your condition id is not correct' );
					//May be NULL MEANS END SO NO ERROR
				}
			}
			$eval_condition = EVAL_STR.$eval_condition_first.$eval_condition_middle.$eval_condition_else;
			//krm($eval_condition);
			unset($this->vals['__sst__conditions']);
			unset($_REQUEST['__sst__conditions']);
			
			$this->run_eval( $eval_condition, $this->vals );
			$this->break = true;
			//krm($eval_condition );
			//$eval_condition = EVAL_STR;
			
		}
	}
	function generate_vals(){
		if($_REQUEST['__sst__step']){
			$this->vals = $_REQUEST;
		}
	}
    function get_process_object( $process_id_str ) {
        $process_id = $this->get_ids( $process_id_str, true );
        if ( $this->is_positive_number( $process_id ) ) {
            $this->process_obj = $this->get_by_id( $process_id, $GLOBALS[ 'sst_tables' ][ 'process' ] );
        } else {
            $this->error_log( 'process_id is empty or is not positive int.You have provided:' . $process_id_str );
            return NULL;
        }
    }

	function generate_process_data(){
		$form_obj = new form($this->process_obj->form_id);
		$this->process_data['form_data'] = $form_obj->form_data;
		$this->generate_step_now();
		//$this->generate_roadmap();
		//$this->generate_max_step();
		$this->generate_super_unique();
		$this->generate_condition_ids();
	}
	function generate_condition_ids(){
		$this->process_data['form_data']['inputs_data'][] = array('input_type'=>'simple-hidden',
													 'input_html_type'=>'hidden',
													 'attrs'=>array('type'=>'hidden','name'=>'__sst__conditions','value'=>$this->process_obj->condition_ids) );
	}
	function generate_super_unique(){
		if(!isset($this->vals)){
			$__sst__unique = uniqid($this->user_id.'_',true) ; 
		}else{
			$__sst__unique = $this->vals['__sst__unique'];
		}
		$this->process_data['form_data']['inputs_data'][] = array('input_type'=>'simple-hidden',
													 'input_html_type'=>'hidden',
													 'attrs'=>array('type'=>'hidden','name'=>'__sst__unique','value'=>$__sst__unique) );
	}
	function generate_max_step(){
		
	}
	function generate_step_now(){
		if(!isset($this->vals)){
			$__sst__step = 1 ; 
		}else{
			$__sst__step = $this->vals['__sst__step']+1;
		}

		$this->process_data['form_data']['inputs_data'][] = array('input_type'=>'simple-hidden',
													 'input_html_type'=>'hidden',
													 'attrs'=>array('type'=>'hidden','name'=>'__sst__step','value'=>$__sst__step) );
	}
	function generate_roadmap($process_id=NULL){
		/*static $roadmap;
		if(debug_backtrace()[ 1 ][ 'function' ] !== __FUNCTION__){
			$process_obj = $this->process_obj;
		}else{
			$process_obj = $this->get_by_id( $process_id, $GLOBALS[ 'sst_tables' ][ 'process' ] );
		}
		$roadmap[$process_obj->form_id]= $process_obj->condition_ids;
		
        $condition_ids = $this->get_ids( $process_obj->condition_ids );
		foreach($condition_ids as $condition_id){
			$condition_obj = $this->get_by_id( $condition_id, $GLOBALS[ 'sst_tables' ][ 'condition' ] );
			$process_ids = $this->get_ids( $condition_obj->process_ids );
			foreach($process_ids as $new_process_id){
				//$roadmap[$process_obj->form_id][]
				//krm( $condition_obj);
			}				
			
		}
		*/
	}
	function render( $process_data = NULL ) {
		if($this->break!=true){
        return $this->render_process( $process_data );
		}
    }
}