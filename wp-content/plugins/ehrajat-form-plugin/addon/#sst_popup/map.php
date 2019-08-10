<?php
/*
load code only by server to work
http://www.plus2net.com/javascript_tutorial/window-child3-demo.php
http://www.plus2net.com/javascript_tutorial/window-child3.php

metas for window:
	channelmode=yes|no|1|0	Whether or not to display the window in theater mode. Default is no. IE only
	directories=yes|no|1|0	Obsolete. Whether or not to add directory buttons. Default is yes. IE only
	fullscreen=yes|no|1|0	Whether or not to display the browser in full-screen mode. Default is no. A window in full-screen mode must also be in theater mode. IE only
	height=pixels	The height of the window. Min. value is 100
	left=pixels	The left position of the window. Negative values not allowed
	location=yes|no|1|0	Whether or not to display the address field. Opera only
	menubar=yes|no|1|0	Whether or not to display the menu bar
	resizable=yes|no|1|0	Whether or not the window is resizable. IE only
	scrollbars=yes|no|1|0	Whether or not to display scroll bars. IE, Firefox & Opera only
	status=yes|no|1|0	Whether or not to add a status bar
	titlebar=yes|no|1|0	Whether or not to display the title bar. Ignored unless the calling application is an HTML Application or a trusted dialog box
	toolbar=yes|no|1|0	Whether or not to display the browser toolbar. IE and Firefox only
	top=pixels	The top position of the window. Negative values not allowed
	width=pixels	The width of the window. Min. value is 100
*/

$sst['type']='map';
$sst['function']='sst_map';
$sst['epithet']='Map';
$sst['description']='';
$sst['slug']='map_field';
$sst['owner']='Ehrajat';
$sst['id']=18;

function sst_popup($input_id,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user,$vals;
	//dbg(11111111111);
	//dbg($vals);
	//echo 'sst_text<br />';
	if(DEBUG){
		echo 'sst_text<br />';
	}

	
	
	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input);
	
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		//dbg($obj_standard);
		$attributes['name'] = sst_create_name($obj_input);
		//dbg($vals);
		$attributes['value'] = sst_create_value($obj_standard,$obj_input,$vals);
		$attributes['maxlength'] = sst_create_maxlength($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['readonly'] = sst_create_readonly($obj_standard);
		$attributes['datafld'] = sst_create_datafld($obj_standard);
		$attributes['datascr'] = sst_create_datascr($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		//$attributes['metas'] = sst_create_metas($obj_standard);
		//dbg(__FILE__);
		$metas  = sst_get_metas($obj_standard);
		//include( plugin_dir_path( __FILE__ ) . 'addon/sst_map/map_show.php');

		if(isset($metas['mapurl'])){
			//$metas=
		}		
		
		$attributes['events'] = sst_append_events(
			$attributes['events'],
			'onFocus',
			"window.open('".plugins_url( 'map_show.php', __FILE__ ) ."','Ratting' ,'width=550, height=170 ,left=150 ,top=200, toolbar=1,status=1');");
		$text_input = '<input type="text" '.implode('',$attributes).'>';
		
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_text<br />';
	}
	return $text_input;
}













?>