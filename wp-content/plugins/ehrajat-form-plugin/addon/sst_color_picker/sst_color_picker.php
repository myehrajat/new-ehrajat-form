<?php
/*





*/
$sst['type']='color_picker';
$sst['function']='sst_color_picker';
$sst['epithet']='Color Picker Field';
$sst['description']='these meta can be used:
		required
        adjust
        hash
        caps
        slider
        valueElement
        styleElement
        onImmediateChange
        hsv
        rgb
        minH
        maxH
        minS
        maxS
        minV
        maxV
        pickerOnfocus
        pickerMode
        pickerPosition
        pickerSmartPosition
        pickerButtonHeight
        pickerClosable
        pickerCloseText
        pickerButtonColor
        pickerFace
        pickerFaceColor
        pickerBorder
        pickerBorderColor
        pickerInset
        pickerInsetColor
        pickerZIndex
and the class automatically will be named as color
';
$sst['slug']='color_picker_field';
$sst['owner']='Ehrajat';
$sst['id']=3;
//no icon
function sst_color_picker($input_id){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
/*
		required
        adjust
        hash
        caps
        slider
        valueElement
        styleElement
        onImmediateChange
        hsv
        rgb
        minH
        maxH
        minS
        maxS
        minV
        maxV
        pickerOnfocus
        pickerMode
        pickerPosition
        pickerSmartPosition
        pickerButtonHeight
        pickerClosable
        pickerCloseText
        pickerButtonColor
        pickerFace
        pickerFaceColor
        pickerBorder
        pickerBorderColor
        pickerInset
        pickerInsetColor
        pickerZIndex
*/
	if(DEBUG){
		echo 'sst_color_picker<br />';
	}
	include_once('/jscolor-1.4.0/include_all.php');
	$obj_input = sst_get_by_id($input_id,$input_table);
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
		if($metas['required']){
			$color_picker_options[] = 'required:'.$metas['required'];//true; // refuse empty values?
		}
		if($metas['adjust']){
			$color_picker_options[] = 'adjust:'.$metas['adjust'];//true; // adjust value to uniform notation?
		}
		if($metas['hash']){
			$color_picker_options[] = 'hash:'.$metas['hash'];//false; // prefix color with # symbol?
		}
		if($metas['caps']){
			$color_picker_options[] = 'caps:'.$metas['caps'];//true; // uppercase?
		}
		if($metas['slider']){
			$color_picker_options[] = 'slider:'.$metas['slider'];// true; // show the value/saturation slider?
		}
		if($metas['valueElement']){
			$color_picker_options[] = "valueElement:'".$metas['valueElement']."'";//target id; // value holder
		}
		if($metas['styleElement']){
			$color_picker_options[] = "styleElement:'".$metas['styleElement']."'";// target id; // where to reflect current color
		}
		if($metas['onImmediateChange']){
			if($metas['onImmediateChange']=='null' or $metas['onImmediateChange']=='NULL'){
			$color_picker_options[] = "onImmediateChange:".$metas['onImmediateChange'];//null; // onchange callback (can be either string or function)
			}else{
			$color_picker_options[] = "onImmediateChange:'".$metas['onImmediateChange']."'";//null; // onchange callback (can be either string or function)
			}
		}
		if($metas['hsv']){
			$color_picker_options[] = 'hsv:'.$metas['hsv'];//[0, 0, 1]; // read-only  0-6, 0-1, 0-1
		}
		if($metas['rgb']){
			$color_picker_options[] = 'rgb:'.$metas['rgb'];// [1, 1, 1]; // read-only  0-1, 0-1, 0-1
		}
		if($metas['minH']){
			$color_picker_options[] = 'minH:'.$metas['minH'];//0; // read-only  0-6
		}
		if($metas['maxH']){
			$color_picker_options[] = 'maxH:'.$metas['maxH'];//6; // read-only  0-6
		}
		if($metas['minS']){
			$color_picker_options[] = 'minS:'.$metas['minS'];//0; // read-only  0-1
		}
		if($metas['maxS']){
			$color_picker_options[] = 'maxS:'.$metas['maxS'];//1; // read-only  0-1
		}
		if($metas['minV']){
			$color_picker_options[] = 'minV:'.$metas['minV'];//0; // read-only  0-1
		}
		if($metas['maxV']){
			$color_picker_options[] = 'maxV:'.$metas['maxV'];//1; // read-only  0-1
		}
		if($metas['pickerOnfocus']){
			$color_picker_options[] = 'pickerOnfocus:'.$metas['pickerOnfocus'];//true; // display picker on focus?
		}
		if($metas['pickerMode']){
			$color_picker_options[] = "pickerMode:'".$metas['pickerMode']."'";//'HSV'; // HSV | HVS
		}
		if($metas['pickerPosition']){
			$color_picker_options[] = "pickerPosition:'".$metas['pickerPosition']."'";// 'bottom'; // left | right | top | bottom
		}
		if($metas['pickerSmartPosition']){
			$color_picker_options[] = 'pickerSmartPosition:'.$metas['pickerSmartPosition'];//true; // automatically adjust picker position when necessary
		}
		if($metas['pickerButtonHeight']){
			$color_picker_options[] = 'pickerButtonHeight:'.$metas['pickerButtonHeight'];//20; // px
		}
		if($metas['pickerClosable']){
			$color_picker_options[] = 'pickerClosable:'.$metas['pickerClosable'];//false;
		}
		if($metas['pickerCloseText']){
			$color_picker_options[] = "pickerCloseText:'".$metas['pickerCloseText']."'";//'Close';
		}
		if($metas['pickerButtonColor']){
			$color_picker_options[] = "pickerButtonColor:'".$metas['pickerButtonColor']."'";//'ButtonText'; // px
		}
		if($metas['pickerFace']){
			$color_picker_options[] = 'pickerFace:'.$metas['pickerFace'];//10; // px
		}
		if($metas['pickerFaceColor']){
			$color_picker_options[] = "pickerFaceColor:'".$metas['pickerFaceColor']."'";//'ThreeDFace'; // CSS color
		}
		if($metas['pickerBorder']){
			$color_picker_options[] = 'pickerBorder:'.$metas['pickerBorder'];//1; // px
		}
		if($metas['pickerBorderColor']){
			$color_picker_options[] = "pickerBorderColor:'".$metas['pickerBorderColor']."'";//'ThreeDHighlight ThreeDShadow ThreeDShadow ThreeDHighlight'; // CSS color
		}
		if($metas['pickerInset']){
			$color_picker_options[] = 'pickerInset:'.$metas['pickerInset'];//1; // px
		}
		if($metas['pickerInsetColor']){
			$color_picker_options[] = "pickerInsetColor:'".$metas['pickerInsetColor']."'";//'ThreeDShadow ThreeDHighlight ThreeDHighlight ThreeDShadow'; // CSS color
		}
		if($metas['pickerZIndex']){
			$color_picker_options[] = 'pickerZIndex:'.$metas['pickerZIndex'];//10000;
		}
		$meta_options_in_class[] = 'color';
		if(!empty($color_picker_options)){
			$meta_options_in_class[] = '{'.implode(',',$color_picker_options).'}';
		}
		$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id,$meta_options_in_class);//it doesn't contain id
		//dbg($attributes['appearance']);
		$color_picker = '<input type="text" onFocus="jscolor.init();"  '.implode('',$attributes).'>';//onFocus="this.color.showPicker();"//
		
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_color_picker<br />';
	}
	return $color_picker;
}
