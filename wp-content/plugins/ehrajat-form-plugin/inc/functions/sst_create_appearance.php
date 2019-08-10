<?php
/*












*/
function sst_create_appearance($appearance_id,$classes=NULL/*array*/,$styles=NULL/*array*/,$titles=NULL/*array*/){
	if(DEBUG){
		echo 'sst_create_appearance<br />';
	}
	global $appearance_table;
	if($appearance_id){
		$obj_appearance = sst_get_by_id($appearance_id,$appearance_table);
		if($obj_appearance->class or $classes!=NULL){
			$appearance .= ' class="'.$obj_appearance->class.' ';
			if($classes!=NULL and is_array($classes)){
				$appearance .= implode(' ',$classes);
			}
			$appearance .= '" ';
		}
		if($obj_appearance->style or $styles!=NULL){
			$appearance .= ' style="'.$obj_appearance->style.' ';
			if($styles!=NULL and is_array($styles)){
				$appearance .= implode(' ',$styles);
			}
			$appearance .= '" ';
		}
		if($obj_appearance->title or $titles!=NULL){
			$appearance .= ' title="'.$obj_appearance->title.' ';
			if($titles!=NULL and is_array($titles)){
				$appearance .= implode(' ',$titles);
			}
			$appearance .= '" ';
		}
	
	}elseif($classes!=NULL and is_array($classes)){
		$appearance .= ' class="'.implode(' ',$classes).'" ';
	}elseif($styles!=NULL and is_array($styles)){
		$appearance .= ' style="'.implode(' ',$styles).'" ';
	}elseif($titles!=NULL and is_array($titles)){
		$appearance .= ' title="'.implode(' ',$titles).'" ';
	}
	if(DEBUG){
		echo 'End sst_create_appearance<br />';
	}
	return $appearance;
}
