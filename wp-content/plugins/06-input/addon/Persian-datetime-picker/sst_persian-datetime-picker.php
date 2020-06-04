<?php
/**************************************************
*version 1.0.0
*these are some options for user to setup
**************************************************/

$sst['html_type']='text';
$sst['type']='persian-bootstrap4-datetime-picker';
$sst['function']='sst_persian_bootstrap4_datetime_picker';
$sst['epithet']='Persian and gregorian datetime picker';
$sst['description']='This is persian datetime picker';
$sst['slug']='persian-bootstrap4-datetime-picker';
$sst['owner']='Ehrajat';
$sst['id']=27;
//Documentation and options details :https://github.com/Mds92/MD.BootstrapPersianDateTimePicker
function sst_persian_bootstrap4_datetime_picker($input_data_json,$process_data_json=NULL){
	$input_data = data_decoder($input_data_json);
	require_once('register_js_css.php');
	//$targetDateSelector = common::search_by_attr_to_get_other_attr('name',$input_data['meta']['targetDateSelector'],'id',$input_data,'input');
$suffix_of_date_input_id = '_bootstrap4_datetime_picker';
	//$input_data['attrs']['class'] .= ' form-control';
	$input_data['tag']['before'] .= '<div class="conatiner"><div class="row"><div class="col-sm-6"><div class="input-group"><div class="input-group-prepend"> <span class="input-group-text cursor-pointer" id="'.$input_data['attrs']['id'].'_bootstrap4_datetime_picker'.'" data-mdpersiandatetimepicker="" data-original-title="" title="">Date</span></div>';
	$input_data['tag']['after'] .= '</div><label id="showDate_class"></label></div></div></div>';
	
	
	
	
	
	
	$input_data['tag']['after'] .= '<script type="text/javascript">jQuery(function($) {jQuery("#'.$input_data['attrs']['id'].'_bootstrap4_datetime_picker'.'" ).MdPersianDateTimePicker({';
	if(!is_array($input_data['meta']['englishNumber']) and !empty($input_data['meta']['englishNumber'])){
		$input_data['tag']['after'] .= 'englishNumber:"'.$input_data['meta']['englishNumber'].'",';
	}
	if(!is_array($input_data['meta']['placement']) and !empty($input_data['meta']['placement'])){
		$input_data['tag']['after'] .= 'placement:"'.$input_data['meta']['placement'].'",';
	}
	if(!is_array($input_data['meta']['trigger']) and !empty($input_data['meta']['trigger'])){
		$input_data['tag']['after'] .= 'trigger:"'.$input_data['meta']['trigger'].'",';
	}
	if(!is_array($input_data['meta']['enableTimePicker']) and !empty($input_data['meta']['enableTimePicker'])){
		$input_data['tag']['after'] .= 'enableTimePicker:"'.$input_data['meta']['enableTimePicker'].'",';
	}
	//if(!is_array($input_data['meta']['targetTextSelector']) and !empty($input_data['meta']['targetTextSelector'])){
	$input_data['tag']['after'] .= 'targetTextSelector:"#'.$input_data['attrs']['id'].'",';
	//}
	if(!is_array($input_data['meta']['targetDateSelector']) and !empty($input_data['meta']['targetDateSelector'])){
		$input_data['tag']['after'] .= 'targetDateSelector:"#'.$input_data['meta']['targetDateSelector'].'",';
	}
	if(!is_array($input_data['meta']['toDate']) and !empty($input_data['meta']['toDate'])){
		$input_data['tag']['after'] .= 'toDate:"'.$input_data['meta']['toDate'].'",';
	}
	if(!is_array($input_data['meta']['fromDate']) and !empty($input_data['meta']['fromDate'])){
		$input_data['tag']['after'] .= 'fromDate:"'.$input_data['meta']['trigger'].'",';
	}
	if(!is_array($input_data['meta']['groupId']) and !empty($input_data['meta']['groupId'])){
		$input_data['tag']['after'] .= 'groupId:"'.$input_data['meta']['groupId'].'",';
	}
	if(!is_array($input_data['meta']['disabled']) and !empty($input_data['meta']['disabled'])){
		$input_data['tag']['after'] .= 'disabled:"'.$input_data['meta']['disabled'].'",';
	}
	if(!is_array($input_data['meta']['textFormat']) and !empty($input_data['meta']['textFormat'])){
		$input_data['tag']['after'] .= 'textFormat:"'.$input_data['meta']['textFormat'].'",';
	}
	if(!is_array($input_data['meta']['dateFormat']) and !empty($input_data['meta']['dateFormat'])){
		$input_data['tag']['after'] .= 'dateFormat:"'.$input_data['meta']['dateFormat'].'",';
	}
	if(!is_array($input_data['meta']['isGregorian']) and !empty($input_data['meta']['isGregorian'])){
		$input_data['tag']['after'] .= 'isGregorian:'.$input_data['meta']['isGregorian'].',';
	}
	if(!is_array($input_data['meta']['inLine']) and !empty($input_data['meta']['inLine'])){
		$input_data['tag']['after'] .= 'inLine:"'.$input_data['meta']['inLine'].'",';
	}
	if(!is_array($input_data['meta']['selectedDate']) and !empty($input_data['meta']['selectedDate'])){
		$input_data['tag']['after'] .= 'selectedDate:"'.$input_data['meta']['selectedDate'].'",';
	}
	if(!is_array($input_data['meta']['monthsToShow']) and !empty($input_data['meta']['monthsToShow'])){
		$input_data['tag']['after'] .= 'monthsToShow:"'.$input_data['meta']['monthsToShow'].'",';
	}
	if(!is_array($input_data['meta']['yearOffset']) and !empty($input_data['meta']['yearOffset'])){
		$input_data['tag']['after'] .= 'yearOffset:"'.$input_data['meta']['yearOffset'].'",';
	}
	if(!is_array($input_data['meta']['holiDays']) and !empty($input_data['meta']['holiDays'])){
		$input_data['tag']['after'] .= 'holiDays:"'.$input_data['meta']['holiDays'].'",';
	}
	if(!is_array($input_data['meta']['disabledDates']) and !empty($input_data['meta']['disabledDates'])){
		$input_data['tag']['after'] .= 'disabledDates:"'.$input_data['meta']['disabledDates'].'",';
	}
	if(!is_array($input_data['meta']['specialDates']) and !empty($input_data['meta']['specialDates'])){
		$input_data['tag']['after'] .= 'specialDates:"'.$input_data['meta']['specialDates'].'",';
	}
	if(!is_array($input_data['meta']['disabledDays']) and !empty($input_data['meta']['disabledDays'])){
		$input_data['tag']['after'] .= 'disabledDays:"'.$input_data['meta']['disabledDays'].'",';
	}
	if(!is_array($input_data['meta']['disableBeforeToday']) and !empty($input_data['meta']['disableBeforeToday'])){
		$input_data['tag']['after'] .= 'disableBeforeToday:"'.$input_data['meta']['disableBeforeToday'].'",';
	}
	if(!is_array($input_data['meta']['disableAfterToday']) and !empty($input_data['meta']['disableAfterToday'])){
		$input_data['tag']['after'] .= 'disableAfterToday:'.$input_data['meta']['disableAfterToday'].',';
	}
	if(!is_array($input_data['meta']['disableBeforeDate']) and !empty($input_data['meta']['disableBeforeDate'])){
		$input_data['tag']['after'] .= 'disableBeforeDate:"'.$input_data['meta']['disableBeforeDate'].'",';
	}
	if(!is_array($input_data['meta']['disableAfterDate']) and !empty($input_data['meta']['disableAfterDate'])){
		$input_data['tag']['after'] .= 'disableAfterDate:"'.$input_data['meta']['disableAfterDate'].'",';
	}
	if(!is_array($input_data['meta']['rangeSelector']) and !empty($input_data['meta']['rangeSelector'])){
		$input_data['tag']['after'] .= 'rangeSelector:"'.$input_data['meta']['rangeSelector'].'",';
	}
	if(!is_array($input_data['meta']['calendarViewOnChange']) and !empty($input_data['meta']['calendarViewOnChange'])){
		$input_data['tag']['after'] .= 'calendarViewOnChange:"'.$input_data['meta']['calendarViewOnChange'].'",';
	}
	$input_data['tag']['after'] .='}); })</script>';

	return $input_data;
}
