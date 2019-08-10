<?php
/*










*/
$sst['type']='english_date_picker';
$sst['function']='sst_english_date_picker';
$sst['epithet']='English Date Picker Field';
$sst['description']='';
$sst['slug']='english_date_picker_field';
$sst['owner']='Ehrajat';
$sst['id']=7;

//no icon
function sst_english_date_picker($input_id){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
	include_once('JalaliJSCalendar-1.4/include_all.php');
	if(DEBUG){
		echo 'sst_date_picker<br />';
	}
	//dbg($input_id);

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
		$attributes['value'] = sst_create_value($obj_standard);
		$attributes['maxlength'] = sst_create_maxlength($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['readonly'] = sst_create_readonly($obj_standard);
		$attributes['datafld'] = sst_create_datafld($obj_standard);
		$attributes['datascr'] = sst_create_datascr($obj_standard);
		//$attributes['metas'] = sst_create_metas($obj_standard);
		$metas = sst_get_metas($obj_standard);
		//dbg($attributes['id']);
		static $i=0;
		if(isset($metas["style"]) and $i<1){
			$date_picker .= '<script type="text/javascript" src="JalaliJSCalendar-1.4/setActiveStyleSheet.js"></script>';
			$i++;
		}
		//if(!$metas['buttonScr']){
			//$metas['buttonScr'] = sst_get_option('JalaliJSCalendar_icon');
		//}
		$date_picker .= '<input type="text" '.implode('',$attributes).' ';
		//$date_picker .= '<img ';
		$date_picker .= 'onFocus="';
		if(isset($metas["style"])){
			$date_picker .= 'setActiveStyleSheet(\''.$metas["style"].'\');';//choose one of these :Aqua/winter/blue/green/win2k-1/win2k-2/win2k-cold-1/win2k-cold-2/system default is Aqua
		}
		$date_picker .= 'Calendar.setup({';
		if($extra){
			$date_picker .= 'inputField:\''.$obj_input->the_id.'sst_unique_string_for_extra\',';/* id of the input field*/
			$date_picker .= 'displayArea:\''.$obj_input->the_id.'sst_unique_string_for_extra\',';
			//$date_picker .= 'button:\''.$obj_input->the_id.'sst_unique_string_for_extra\',';/* trigger for the calendar (button ID)*/
		}else{
			$date_picker .= 'inputField:\''.$obj_input->the_id.'\',';/* id of the input field*/
			$date_picker .= 'displayArea:\''.$obj_input->the_id.'\',';
			//$date_picker .= 'button:\''.$obj_input->the_id.'\',';/* trigger for the calendar (button ID)*/
		}
		if(isset($metas["ifFormat"])){
			$date_picker .= 'ifFormat:\''.$metas["ifFormat"].'\',';/* format of the input field*/
		}
		if(isset($metas["dateType"])){
			$date_picker .= 'dateType:\''.$metas["dateType"].'\',';/*"gregorian"*/
		}
		if(isset($metas["weekNumbers"])){
			$date_picker .= 'weekNumbers:'.$metas["weekNumbers"].',';
		}		
		//if(isset($metas["displayArea"])){
			//$date_picker .= 'displayArea:\''.$metas["displayArea"].'\',';
		//}		
		if(isset($metas["eventName"])){
			$date_picker .= 'eventName:\''.$metas["eventName"].'\',';
		}		
		if(isset($metas["daFormat"])){
			$date_picker .= 'daFormat:\''.$metas["daFormat"].'\',';
		}		
		if(isset($metas["singleClick"])){
			$date_picker .= 'singleClick:'.$metas["singleClick"].',';
		}		
		if(isset($metas["disableFunc"])){
			$date_picker .= 'disableFunc:'.$metas["disableFunc"].',';
		}		
		//if(isset($metas["dateStatusFunc"])){
			//$text_input .= 'dateStatusFunc:'.$metas["dateStatusFunc"].'params["disableFunc"],';
		//}		
		if(isset($metas["dateText"])){
			$date_picker .= 'dateText:'.$metas["dateText"].',';
		}		
		if(isset($metas["firstDay"])){
			$date_picker .= 'firstDay:'.$metas["firstDay"].',';
		}		
		if(isset($metas["align"])){
			$date_picker .= 'align:\''.$metas["align"].'\',';
		}		
		if(isset($metas["range"])){
			$date_picker .= 'range:'.$metas["range"].',';
		}		
		if(isset($metas["flat"])){
			$date_picker .= 'flat:'.$metas["flat"].',';
		}		
		if(isset($metas["flatCallback"])){
			$date_picker .= 'flatCallback:'.$metas["flatCallback"].',';
		}		
		if(isset($metas["onSelect"])){
			$date_picker .= 'onSelect:'.$metas["onSelect"].',';
		}
		if(isset($metas["onClose"])){
			$date_picker .= 'onClose:'.$metas["onClose"].',';
		}		
		if(isset($metas["onUpdate"])){
			$date_picker .= 'onUpdate:'.$metas["onUpdate"].',';
		}		
		if(isset($metas["date"])){
			$date_picker .= 'date:'.$metas["date"].',';
		}		
		if(isset($metas["showsTime"])){
			$date_picker .= 'showsTime:'.$metas["showsTime"].',';
		}		
		if(isset($metas["timeFormat"])){
			$date_picker .= 'timeFormat:]\''.$metas["timeFormat"].'\',';
		}		
		if(isset($metas["electric"])){
			$date_picker .= 'electric:'.$metas["electric"].',';
		}		
		if(isset($metas["step"])){
			$date_picker .= 'step:'.$metas["step"].',';
		}		
		if(isset($metas["position"])){
			$date_picker .= 'position:'.$metas["position"].',';
		}		
		if(isset($metas["showOthers"])){
			$date_picker .= 'showOthers:'.$metas["showOthers"].',';
		}		
		if(isset($metas["multiple"])){
			$date_picker .= 'multiple:'.$metas["multiple"].',';
		}		
		if(isset($metas["ifDateType"])){
			$date_picker .= 'ifDateType:'.$metas["ifDateType"].',';
		}		
		if(isset($metas["langNumbers"])){
			$date_picker .= 'langNumbers:'.$metas["langNumbers"].',';
		}
		$date_picker .= 'autoShowOnFocus:true,';
		//if(isset($metas["autoShowOnFocus"])){
			//$date_picker .= 'autoShowOnFocus:true,';
		//	$date_picker .= 'autoShowOnFocus:'.$metas["autoShowOnFocus"].',';
		//}		
		if(isset($metas["autoFillAtStart"])){
			$date_picker .= 'autoFillAtStart:'.$metas["autoFillAtStart"].',';
		}		
		$date_picker = substr($date_picker,0,strlen($date_picker)-1);//delete last comma
		$date_picker .= '});"';

//end the onload
		//if($extra){
		//	$date_picker .= ' id="'.$obj_input->the_id.'sst_unique_string_for_extra" ';
		//}else{
		//	$date_picker .= ' id="'.$obj_input->the_id.'" ';
		//}
		//$date_picker .= 'src="'.$metas['buttonScr'].'" ';
		//$date_picker .= 'width="'.sst_get_option('JalaliJSCalendar_icon_width').'" ';
		//$date_picker .= 'height="'.sst_get_option('JalaliJSCalendar_icon_height').'" ';
		$date_picker .= '>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_date_picker<br />';
	}
	return $date_picker;
}
