<?php

function sst_create_the_id($obj,$default_pack_level,$extra=NULL){//addextra
	if(DEBUG){
		echo 'sst_create_the_id<br />';
	}
	if($obj->the_id){
		switch($default_pack_level){
			case "form":
				$the_id = ' id="'.$obj->the_id.'_form" ';
			break;
			case "text":
				if($extra){
					$the_id = ' id="'.$obj->the_id.'_textsst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->the_id.'_text" ';
				}
			break;
			case "tooltip":
				if($extra){
					$the_id = ' id="'.$obj->the_id.'_tooltipsst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->the_id.'_tooltip" ';
				}
			break;
			case "note":
				if($extra){
					$the_id = ' id="'.$obj->the_id.'_notesst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->the_id.'_note" ';
				}
			break;
			default:
				if($extra){
					$the_id = ' id="'.$obj->the_id.'sst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->the_id.'" ';
				}
			break;
		}
	}
	//this cause id collision for example make some error in date picker
	/*elseif($obj->slug){
		switch($default_pack_level){
			case "form":
				$the_id = ' id="'.$obj->slug.'_form" ';
			break;
			case "text":
				if($extra){
					$the_id = ' id="'.$obj->slug.'_textsst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->slug.'_text" ';
				}
			break;
			case "tooltip":
				if($extra){
					$the_id = ' id="'.$obj->slug.'_tooltipsst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->slug.'_tooltip" ';
				}
			break;
			case "note":
				if($extra){
					$the_id = ' id="'.$obj->slug.'_notesst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->slug.'_note" ';
				}
			break;
			default:
				if($extra){
					$the_id = ' id="'.$obj->slug.'sst_unique_string_for_extra" ';
				}else{
					$the_id = ' id="'.$obj->slug.'" ';
				}
			break;
		}
	}*/
	if(DEBUG){
		echo 'End sst_create_the_id<br />';
	}
	return $the_id;
}




