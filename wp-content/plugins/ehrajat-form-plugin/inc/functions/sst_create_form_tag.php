<?php

function sst_create_form_tag($obj_form,$pre_post,$vals=NULL,$save_id=NULL){
	if(DEBUG){
		echo 'sst_create_form_tag<br />';
	}
	//dbg($save_id);
	if($pre_post=='pre'){
		$tag = '<form  ';
		//null action mean the self page
		//todo:send vals save_id to be accessed by other plugins
		/*if($obj_form->method=='GET'){
			$tag .= 'action="'.$obj_form->action.'&record_id='.$vals['save_id'].'" ';
		}else{
			$tag .= 'action="'.$obj_form->action.'&record_id='.$vals['save_id'].'" ';
		}*/
		
		$tag .= 'action="'.sst_send_save_id_to_next_page($obj_form->action,$vals,$save_id).'" ';
//attribute of form tag = "post" or "get" the default is configured by defaultFormMethod and its default is "post" suitable for sending large data		if($obj_form->method){
		if($obj_form->method){
			$tag .= 'method="'.$obj_form->method.'" ';
		}elseif(sst_get_option('defaultFormMethod')){
			$tag .= 'method="'.sst_get_option('defaultFormMethod').'" ';
		}else{
			sst_save_option('defaultFormMethod','post');
		}
		if($obj_form->name){
			$tag .= 'name="'.$obj_form->name.'" ';
		}elseif($obj_form->slug){
			$tag .= 'name="'.$obj_form->slug.'" ';
		}else{
			$tag .= 'name="'.$obj_form->epithet.'" ';
		}
		if($obj_form->the_id){
			$tag .= 'id="'.$obj_form->the_id.'" ';
		}elseif($obj_form->name){
			$tag .= 'name="'.$obj_form->name.'" ';
		}elseif($obj_form->slug){
			$tag .= 'name="'.$obj_form->slug.'" ';
		}else{
			$tag .= 'id="'.$obj_form->epithet.'" ';
		}
//attribute of form tag = "application/x-www-form-urlencoded" or "multipart/form-data" or "text/plain" the default is configured by defaultFormEnctype and its default is "multipart/form-data" suitable for uploading file and sending data
		if($obj_form->enctype){
			$tag .= 'enctype="'.$obj_form->enctype.'" ';
		}elseif(sst_get_option('defaultFormEnctype')){
			$tag .= 'enctype="'.sst_get_option('defaultFormEnctype').'" ';	
		}else{
			sst_save_option('defaultFormEnctype','multipart/form-data');
		}
//attribute of form tag = "_top" or "_parent" or "_self" or "new" or "_blank" the default is configured by formTargetDefault and if its not yet set this attribute will nobe created
		if($obj_form->target){
			$tag .= 'target="_'.$obj_form->target.'" ';
		}elseif(sst_get_option('formTargetDefault')){
			$tag .= 'target="_'.sst_get_option('formTargetDefault').'" ';
		}else{
			//will not be created this attribute
		}
		$tag .= sst_create_language($obj_form->language_id);
		//dbg($obj_form->event_ids);
		$tag .= sst_create_events($obj_form->event_ids);

		$tag .= '>';
	}else{//if($pre_post=='pre')
		$tag = '</form>';
	}
	if(DEBUG){
		echo 'End sst_create_form_tag<br />';
	}
	return $tag;
}
