<?php
/*
required html5 added





*/
/*
property 	type 	description 	default

inputField 	string 	The ID of your input field. 	null

displayArea 	string 	This is the ID of a <span>, <div>, or any other element that you would like to use to display the current date. This is generally useful only if the input field is hidden, as an area to display the date. 	null

button 	string 	The ID of the calendar ``trigger''. This is an element (ordinarily a button or an image) that will dispatch a certain event (usually ``click'') to the function that creates and displays the calendar. 	null

eventName 	string 	The name of the event that will trigger the calendar. The name should be without the ``on'' prefix, such as ``click'' instead of ``onclick''. Virtually all users will want to let this have the default value (``click''). Anyway, it could be useful if, say, you want the calendar to appear when the input field is focused and have no trigger button (in this case use ``focus'' as the event name). 	``click''

ifFormat 	string 	The format string that will be used to enter the date in the input field. This format will be honored even if the input field is hidden. 	``%Y/%m/%d''

daFormat 	string 	Format of the date displayed in the displayArea (if specified). 	``%Y/%m/%d''

singleClick 	boolean 	Wether the calendar is in ``single-click mode'' or ``double-click mode''. If true (the default) the calendar will be created in single-click mode. 	true

disableFunc 	function 	A function that receives a JS Date object. It should return true if that date has to be disabled, false otherwise. DEPRECATED (see below). 	null

dateStatusFunc 	function 	A function that receives a JS Date object and returns a boolean or a string. This function allows one to set a certain CSS class to some date, therefore making it look different. If it returns true then the date will be disabled. If it returns false nothing special happens with the given date. If it returns a string then that will be taken as a CSS class and appended to the date element. If this string is ``disabled'' then the date is also disabled (therefore is like returning true). For more information please also refer to section 5.3.8. 	null

firstDay 	integer 	Specifies which day is to be displayed as the first day of week. Possible values are 0 to 6; 0 means Sunday, 1 means Monday, ..., 6 means Saturday. The end user can easily change this too, by clicking on the day name in the calendar header. 	0

weekNumbers 	boolean 	If ``true'' then the calendar will display week numbers. 	true

align 	string 	Alignment of the calendar, relative to the reference element. The reference element is dynamically chosen like this: if a displayArea is specified then it will be the reference element. Otherwise, the input field is the reference element. For the meaning of the alignment characters please section 5.3.11. 	``Bl''

range 	array 	An array having exactly 2 elements, integers. (!) The first [0] element is the minimum year that is available, and the second [1] element is the maximum year that the calendar will allow. 	[1900, 2999]

flat 	string 	If you want a flat calendar, pass the ID of the parent object in this property. If not, pass null here (or nothing at all as null is the default value). 	null

flatCallback 	function 	You should provide this function if the calendar is flat. It will be called when the date in the calendar is changed with a reference to the calendar object. See section 2.2 for an example of how to setup a flat calendar. 	null

onSelect 	function 	If you provide a function handler here then you have to manage the ``click-on-date'' event by yourself. Look in the calendar-setup.js and take as an example the onSelect handler that you can see there. 	null

onClose 	function 	This handler will be called when the calendar needs to close. You don't need to provide one, but if you do it's your responsibility to hide/destroy the calendar. You're on your own. Check the calendar-setup.js file for an example. 	null

onUpdate 	function 	If you supply a function handler here, it will be called right after the target field is updated with a new date. You can use this to chain 2 calendars, for instance to setup a default date in the second just after a date was selected in the first. 	null

date 	date 	This allows you to setup an initial date where the calendar will be positioned to. If absent then the calendar will open to the today date. 	null

showsTime 	boolean 	If this is set to true then the calendar will also allow time selection. 	false

timeFormat 	string 	Set this to ``12'' or ``24'' to configure the way that the calendar will display time. 	``24''

electric 	boolean 	Set this to ``false'' if you want the calendar to update the field only when closed (by default it updates the field at each date change, even if the calendar is not closed) 	true

position 	array 	Specifies the [x, y] position, relative to page's top-left corner, where the calendar will be displayed. If not passed then the position will be computed based on the ``align'' parameter. Defaults to ``null'' (not used). 	null

cache 	boolean 	Set this to ``true'' if you want to cache the calendar object. This means that a single calendar object will be used for all fields that require a popup calendar 	false

showOthers 	boolean 	If set to ``true'' then days belonging to months overlapping with the currently displayed month will also be displayed in the calendar (but in a ``faded-out'' color) 	








*/

$sst['type']='persian_date_picker';
$sst['function']='sst_persian_date_picker';
$sst['epithet']='Persian Date Picker Field';
$sst['description']='';
$sst['slug']='persian_date_picker_field';
$sst['owner']='Ehrajat';
$sst['id']=9;

//no icon
function sst_persian_date_picker($input_id,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;

	include_once('JalaliJSCalendar-1.4/include_all.php');
	if(DEBUG){
		echo 'sst_date_picker<br />';
	}

	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	if($obj_input->the_id){
		$attributes['id'] = sst_create_id($obj_input);
	}else{
		$rand_id = 'id'.rand(10000,999999);
		$attributes['id'] = ' id="'.$rand_id.'" ';
		$obj_input->the_id=$rand_id;
	}
	//dbg($attributes['id']);
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		//dbg($obj_standard);
		$attributes['name'] = sst_create_name($obj_input);
		$attributes['value'] = sst_create_value($obj_standard,$obj_input,$vals);
		$attributes['maxlength'] = sst_create_maxlength($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['readonly'] = sst_create_readonly($obj_standard);
		$attributes['datafld'] = sst_create_datafld($obj_standard);
		$attributes['datascr'] = sst_create_datascr($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		//$attributes['metas'] = sst_create_metas($obj_standard);
		$metas = sst_get_metas($obj_standard);
		//dbg($attributes['id']);
		static $i=0;
		if(isset($metas["style"]) and $i<1){
			$date_picker .= '<script type="text/javascript" src="'. sst_get_option('JalaliJSCalendar_url').'/setActiveStyleSheet.js"></script>';
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
		$date_picker .= 'inputField:\''.$rand_id.'\',';/* id of the input field*/
		$date_picker .= 'displayArea:\''.$rand_id.'\',';
			//$date_picker .= 'button:\''.$obj_input->the_id.'\',';/* trigger for the calendar (button ID)*/
		if(isset($metas["ifFormat"])){
			$date_picker .= 'ifFormat:\''.$metas["ifFormat"].'\',';/* format of the input field*/
		}
		//if(isset($metas["dateType"])){
			//$date_picker .= 'dateType:\''.$metas["dateType"].'\',';/*"gregorian"*/
		//}
		$date_picker .= 'dateType:\'jalali\',';/*"gregorian"*/
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
	//dbg($date_picker,true);
	return $date_picker;
}
