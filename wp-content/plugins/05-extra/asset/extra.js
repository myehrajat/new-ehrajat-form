
jQuery(document).ready(function () {
	
	function change_tag_ids(sst){
		sst.tag_names = ['sst-input','sst-block'];
		sst.source_element_length = sst.clone_source_element.id.length;
		sst.to_replace_in_middle = sst.new_clone_target_id.substr(sst.unique_id_length);
		sst.j = 0;

		while(sst.tag_names.length>sst.j){
			sst.new_inputs = jQuery(sst.clone_target_element).find(sst.tag_names[sst.j]);
			sst.i=0;
			 while(sst.new_inputs.length >sst.i){
				sst.this_element_unique = sst.new_inputs[sst.i].id.substr(0,sst.unique_id_length);
				sst.this_element_trailing = sst.new_inputs[sst.i].id.substr(sst.source_element_length);
				jQuery(sst.new_inputs[sst.i]).attr('id',sst.this_element_unique.concat(sst.to_replace_in_middle).concat(sst.this_element_trailing));
				sst.i++;
			}
			sst.j++;
	}

	}
	function change_controller_ids(sst){
		sst.all_target_add_controller = jQuery('#'+sst.new_clone_target_id).find("[id$='"+sst.add_contoller_prefix+"']");
		sst.i=0;
		while(sst.all_target_add_controller.length >sst.i){
			 sst.unique_of_add_controller = sst.all_target_add_controller[sst.i].id.substr(0,sst.unique_id_length);
			sst.trailing_of_add_controller = sst.all_target_add_controller[sst.i].id.substr(sst.unique_id_length+sst.source_identifier.length);
			sst.new_add_controller_id= sst.unique_of_add_controller.concat(sst.target_identifier).concat(sst.trailing_of_add_controller);
			jQuery(sst.all_target_add_controller[sst.i]).attr('id',sst.new_add_controller_id);
			sst.i++;
		}
		sst.all_target_remove_controller = jQuery('#'+sst.new_clone_target_id).find("[id$='"+sst.remove_contoller_prefix+"']");
		sst.i=0;
		while(sst.all_target_remove_controller.length >sst.i){
			 sst.unique_of_remove_controller = sst.all_target_remove_controller[sst.i].id.substr(0,sst.unique_id_length);
			sst.trailing_of_remove_controller = sst.all_target_remove_controller[sst.i].id.substr(sst.unique_id_length+sst.source_identifier.length);
			sst.new_remove_controller_id= sst.unique_of_remove_controller.concat(sst.target_identifier).concat(sst.trailing_of_remove_controller);
			jQuery(sst.all_target_remove_controller[sst.i]).attr('id',sst.new_remove_controller_id);
			sst.i++;
		}
	}
	function change_input_names(sst){
		sst.form_inputs = jQuery('#'+sst.new_clone_target_id).find("[name]");
		sst.source_identifier_length = sst.source_identifier.length;
		sst.i=0;
		while(sst.form_inputs.length>sst.i){
			sst.name_str =  sst.form_inputs[sst.i].name.split('[')[0];
			sst.this_element_trailing_part = sst.form_inputs[sst.i].name.substr(sst.name_str.length+sst.source_identifier_length);	
			sst.middle_part = sst.target_identifier.replace(/≪/g,'[').replace(/≫/g,']');
			jQuery(sst.form_inputs[sst.i]).attr('name',sst.name_str+sst.middle_part+sst.this_element_trailing_part);
			sst.i++;
			  }
		
	}
	var sst = {};
	sst.add_contoller_prefix = '_controller_add';
	sst.remove_contoller_prefix = '_controller_remove';
	sst.unique_id_length = 12;
	 jQuery('body').on('click',"[id$='"+sst.add_contoller_prefix+"']",function(){
		 sst.unique = this.id.substr(0,sst.unique_id_length);
		 sst.source_add_controller_id = this.id;
		 sst.source_identifier = this.id.substr(sst.unique_id_length).split('_')[0];
		 sst.clone_source_element = jQuery("#"+sst.unique+sst.source_identifier)[0];	
		 sst.clone_source_last_number = sst.clone_source_element.id.match(/(≪.*?≫)/g).pop().slice(1,-1);
		 sst.max_extra = jQuery("#"+sst.unique+sst.source_identifier+sst.add_contoller_prefix).attr('max_extra');
		 if(sst.max_extra> sst.clone_source_last_number ){
			 jQuery(sst.clone_source_element.outerHTML).insertAfter("#"+sst.clone_source_element.id);
			 sst.clone_target_element = jQuery("#"+sst.unique+sst.source_identifier)[1];
			 sst.clone_target_last_number = sst.clone_source_last_number-1+2;
			 sst.target_identifier = sst.source_identifier.slice(0,-sst.clone_source_last_number.toString().length-1).concat(sst.clone_target_last_number+"≫");	
			 
			 //replace new number to newly added id
			 sst.new_clone_target_id = jQuery("#"+sst.unique+sst.source_identifier)[1].id.slice(0,-sst.clone_source_last_number.toString().length-1).concat(sst.clone_target_last_number+"≫");
			 jQuery(sst.clone_target_element).attr('id',sst.new_clone_target_id );
			 change_controller_ids(sst);
			 change_tag_ids(sst);
			 change_input_names(sst);
			 jQuery(this).hide();
			 jQuery("#"+sst.unique+sst.source_identifier+sst.remove_contoller_prefix).hide();
			 jQuery("#"+sst.unique+sst.target_identifier+sst.remove_contoller_prefix).show();
			 if(sst.max_extra-1 == sst.clone_source_last_number){
			 	jQuery("#"+sst.unique+sst.target_identifier+sst.add_contoller_prefix).hide();
			 }
		 }
		 
	 });
	function show_add_for_previous(sst){
		sst.num_to_show_controller = sst.clone_source_last_number-1;
		sst.num_to_show_controller_length = sst.num_to_show_controller.toString().length;
		sst.previous_controller_base_id = sst.unique+sst.source_identifier.slice(0, -(sst.num_to_show_controller_length+2)).concat("≪"+sst.num_to_show_controller+"≫");
		jQuery("#"+sst.previous_controller_base_id+sst.add_contoller_prefix).show();
		if(sst.num_to_show_controller!=0){
			jQuery("#"+sst.previous_controller_base_id+sst.remove_contoller_prefix).show();
		}
		
	}
	 jQuery('body').on('click',"[id$='"+sst.remove_contoller_prefix+"']",function(){
		 sst.unique = this.id.substr(0,sst.unique_id_length);
		 sst.source_add_controller_id = this.id;
		 sst.source_identifier = this.id.substr(sst.unique_id_length).split('_')[0];
		 sst.source_element_id = sst.unique+sst.source_identifier;
		 sst.clone_source_last_number = sst.source_element_id.match(/(≪.*?≫)/g).pop().slice(1,-1);
		 jQuery("#"+sst.unique+sst.source_identifier)[0].remove();
		 show_add_for_previous(sst);
		 
	 });
});

