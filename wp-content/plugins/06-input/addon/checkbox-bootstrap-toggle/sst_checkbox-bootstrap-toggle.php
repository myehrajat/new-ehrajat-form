<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='checkbox';
$sst['type']='checkbox-bootstrap-toggle';
$sst['function']='sst_checkbox_bootstrap_toggle';
$sst['epithet']='Checkbox Bootstrap Toggle Field';
$sst['description']='This is Checkbox Bootstrap Toggle Field! Meta:data-size,data-width,data-height,data-onstyle,data-offstyle,data-style,data-on,data-off';
$sst['slug']='checkbox_bootstrap_toggle';
$sst['owner']='Ehrajat';
$sst['id']=26;
//Documentation and options details :https://gitbrent.github.io/bootstrap4-toggle/
function sst_checkbox_bootstrap_toggle($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	require_once('register_js_css.php');
	//$input_data['tag']['after'] = $input_data['tag']['after'].'<script type="text/javascript">jQuery(function($) {jQuery("#'.$input_data['attrs']['id'].'" ).bootstrapToggle(); })</script>';
	$input_data['attrs']['data-toggle']='toggle';
	if(!is_array($input_data['meta']['data-size']) and !empty($input_data['meta']['data-size'])){
		$input_data['attrs']['data-size']=strtolower($input_data['meta']['data-size']);//lg|sm|xs
	}
	if(!is_array($input_data['meta']['data-width']) and !empty($input_data['meta']['data-width'])){
		$input_data['attrs']['data-width']=strtolower($input_data['meta']['data-width']);//number
	}
	if(!is_array($input_data['meta']['data-height']) and !empty($input_data['meta']['data-height'])){
		$input_data['attrs']['data-height']=strtolower($input_data['meta']['data-height']);//number
	}
	if(!is_array($input_data['meta']['data-onstyle']) and !empty($input_data['meta']['data-onstyle'])){
		$input_data['attrs']['data-onstyle']=strtolower($input_data['meta']['data-onstyle']);//primary|secondary|success|danger|warning|info|light|dark|outline-primary|outline-secondary|outline-success|outline-danger|outline-warning|outline-info|outline-light|outline-dark
	}
	if(!is_array($input_data['meta']['data-offstyle']) and !empty($input_data['meta']['data-offstyle'])){
		$input_data['attrs']['data-offstyle']=strtolower($input_data['meta']['data-offstyle']);//outline-primary|outline-secondary|outline-success|outline-danger|outline-warning|outline-info|outline-light|outline-dark|primary|secondary|success|danger|warning|info|light|dark|
	}
	if(!is_array($input_data['meta']['data-style']) and !empty($input_data['meta']['data-style'])){
		$input_data['attrs']['data-style']=strtolower($input_data['meta']['data-style']);//Appends the provided value to the toggle's class attribute. Use this to apply custom styles to the toggle.
	}
	if(!is_array($input_data['meta']['data-on']) and !empty($input_data['meta']['data-on'])){
		$input_data['attrs']['data-on']=$input_data['meta']['data-on'];//string | html
	}
	if(!is_array($input_data['meta']['data-off']) and !empty($input_data['meta']['data-off'])){
		$input_data['attrs']['data-off']=$input_data['meta']['data-off'];//string | html
	}

	//$input_data['tag']['after'] .= '<script type="text/javascript">jQuery("#'.$input_data['attrs']['id'].'").on("change",function(){jQuery("#'.$input_data['attrs']['id'].'").attr("checked",document.getElementById("'.$input_data['attrs']['id'].'").checked);});</script>';

	return $input_data;
}
