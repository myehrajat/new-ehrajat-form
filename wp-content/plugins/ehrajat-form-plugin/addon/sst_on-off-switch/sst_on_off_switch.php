<?php
/*
https://www.w3schools.com/howto/howto_css_switch.asp




*/
$sst['type']='on_off_switch';
$sst['function']='sst_on_off_switch';
$sst['epithet']='On Off Switch Field';
$sst['description']='';
$sst['slug']='on_off_switch';
$sst['owner']='Ehrajat';
$sst['id']=19;
function sst_on_off_switch($input_id,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
	if(DEBUG){
		echo 'sst_checkbox<br />';
	}
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input);

	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		$attributes['name'] = sst_create_name($obj_input);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['value'] = sst_create_value($obj_standard,$obj_input,$vals);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$attributes['checked'] = sst_create_checked($obj_standard);
		$content = sst_create_content($obj_standard);
		$switch = 'switch';
		$slider = 'slider';
		
		$checkbox_input .= '<label class="'.$switch.'">';
		$checkbox_input .= '<input type="checkbox" '.implode('',$attributes).' >'.$content;
		$checkbox_input .= '<span class="'.$slider.' round"></span></label>';//you can remove round
		/* The switch - the box around the slider */
		static $inc;
		if(empty($inc)){
			$inc='included';
		$checkbox_input .='<style type="text/css">
			.switch {
			  position: relative;
			  display: inline-block;
			  width: 60px;
			  height: 34px;
			}

			/* Hide default HTML checkbox */
			.switch input {display:none;}

			/* The slider */
			.slider {
			  position: absolute;
			  cursor: pointer;
			  top: 0;
			  left: 0;
			  right: 0;
			  bottom: 0;
			  background-color: #ccc;
			  -webkit-transition: .4s;
			  transition: .4s;
			}

			.slider:before {
			  position: absolute;
			  content: "";
			  height: 26px;
			  width: 26px;
			  left: 4px;
			  bottom: 4px;
			  background-color: white;
			  -webkit-transition: .4s;
			  transition: .4s;
			}

			input:checked + .slider {
			  background-color: #2196F3;
			}

			input:focus + .slider {
			  box-shadow: 0 0 1px #2196F3;
			}

			input:checked + .slider:before {
			  -webkit-transform: translateX(26px);
			  -ms-transform: translateX(26px);
			  transform: translateX(26px);
			}

			/* Rounded sliders */
			.slider.round {
			  border-radius: 34px;
			}

			.slider.round:before {
			  border-radius: 50%;
			}</style>';
		}
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_checkbox<br />';
	}
	return $checkbox_input;	
}
