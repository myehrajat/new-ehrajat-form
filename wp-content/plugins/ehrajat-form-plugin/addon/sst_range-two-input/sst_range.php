<?php
/*
https://refreshless.com/nouislider/

$sst['type']='range-two-input';
$sst['function']='sst_range-two-input';
$sst['epithet']='Range Two Input Field';
$sst['description']='Permitted attributes #
global attributes & name & disabled & form & type★ & autocomplete & autofocus & list & min & max & step (float) & value';
$sst['slug']='range_field';
$sst['owner']='Ehrajat';
$sst['id']=16;
*/
function sst_range_two_input($input_id,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
	if(DEBUG){
		echo 'sst_range<br />';
	}
	$obj_input = sst_get_by_id($input_id,$input_table);
	//dbg($obj_input);
	//dbg($obj_input->the_id);
	//dbg($obj_input->appearance_id);
	//dbg($obj_input->keyboard_id);
	//dbg($obj_input->event_ids);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input,true);
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		//dbg($obj_standard);
		$attributes['name'] = sst_create_name($obj_input);
		//dbg($vals);
		$attributes['value'] = sst_create_value($obj_standard,$obj_input,$vals);
		$attributes['step'] = sst_create_step($obj_standard,$obj_input,$vals);
		$attributes['min'] = sst_create_min($obj_standard);
		$attributes['max'] = sst_create_max($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['readonly'] = sst_create_readonly($obj_standard);
		$attributes['datafld'] = sst_create_datafld($obj_standard);
		$attributes['datascr'] = sst_create_datascr($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$id=str_replace('"','',$attributes['id']);
		$id=str_replace('id=','',$id);
		$id='id'.trim($id);
		//dbg($id);
		unset($attributes['id']);
		$attributes['events'] = sst_create_events($obj_input->event_ids,array('oninput'=>$id."out.value=".$id."in.value"));
$range_input .='<script>
$( function($) {
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 500,
      values: [ 75, 300 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
    });
    $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
      " - $" + $( "#slider-range" ).slider( "values", 1 ) );
  } );</script>';
		$range_input .= '<input type="range" '.implode('',$attributes).' id="'.$id.'in"  >';
		//$range_input .= '<input type="text" id="'.$id.'out" oninput="'.$id.'in.value='.$id.'out.value" value="">';
		$value=str_replace('"','',$attributes['value']);
		$value=str_replace('value=','',$value);
//		/if()
		$range_input .= '<output name="'.$id.'out" id="'.$id.'out">'.number_format($value).'</output>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_text<br />';
	}
	return $range_input;
}


