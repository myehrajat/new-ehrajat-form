







jQuery(document).ready(function () {
		 jQuery('body').on('click',"[id$='_file_controller_remove']",function(){
			var element_id = this.id.split('_')[0];
			jQuery("#"+element_id+"_file_place_holder").remove();
			jQuery("#"+element_id).removeAttr("disabled");
			jQuery("#"+element_id).removeAttr("hidden");
			

		});
	
});

