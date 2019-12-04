

function add_remove (add_random_id,remove_random_id,tag_name,unique_id,extra) {
	
        //jQuery("#<?php echo $remove_random_id; ?>").hide();		
		
        jQuery.noConflict();
        jQuery("#"+add_random_id).click(function () {
			
            var inputs = jQuery(tag_name+"[id='"+unique_id+"']");
            var lastIndex = inputs.length - 1;
            var input = inputs.last();
            if (inputs.length < extra) {
                // console.log(input[0].outerHTML);
                var hidedInput = jQuery(input[0].outerHTML).insertAfter(input[0]).hide();
                //alert(input[0].outerHTML);

                hidedInput.show(300);
                //jQuery("#<?php echo $remove_random_id; ?>").fadeIn(300);	
            } else if (inputs.length == extra) {
                var hidedInput = jQuery(input[0].outerHTML).insertAfter(input[0]).hide();
                hidedInput.show(300);
                //jQuery("#<?php echo $add_random_id; ?>").hide(200);
                //jQuery("#<?php echo $remove_random_id; ?>").fadeIn(300);	
            }
        });

        jQuery("#"+remove_random_id).click(function () {
            var input = jQuery(tag_name+"[id='"+unique_id+"']");
            if (input.length > 2) {
                input.last().fadeOut(200, function () {
                    input.last().remove();
                });
                jQuery("#"+remove_random_id).fadeIn(300);
            } else if (input.length == 2) {
                input.last().fadeOut(200, function () {
                    input.last().remove();
                });
                jQuery("#"+remove_random_id).hide();
            }
            jQuery("#"+add_random_id).fadeIn(300);
        });
		
}




//https://makitweb.com/dynamically-add-and-remove-element-with-jquery/
//https://makitweb.com/demo/addremoveelement/
function add_remove(add_random_id, remove_random_id, tag_name, unique_id, extra) {
	//alert(111111111111);
		
        jQuery(document).ready(function () {

            // Add new element
            jQuery("#"+add_random_id).click(function () {

                // Finding total number of elements added
                var total_element = jQuery("#"+unique_id).length;

                // last <div> with element class id
                var lastid = jQuery("#"+unique_id+":last").attr("id");
                var split_id = lastid.split("_");
                var nextindex = Number(split_id[1]) + 1;

                var max = extra;
				alert(max);
                // Check total number elements
                if (total_element < max) {       
					 var elements = jQuery(tag_name + "[id='" + unique_id + "']");
					 var last_element = elements.last()[0];
                     var last_outerHTML = last_element.outerHTML.replace(unique_id, unique_id + "_" + nextindex );
					//alert(last_outerHTML)
                    // Adding new div container after last occurance of element class
                    jQuery("#"+unique_id+":last").after("<"+tag_name+" id='"+unique_id+"_" + nextindex + "'></"+tag_name+">");

                    // Adding element to <div>
					//
					   jQuery("#"+unique_id+":last").after("<div class='element' id='"+unique_id+"_"+ nextindex +"'></div>");

                    jQuery("#"+unique_id+"_" + nextindex).append('<div class="container">'+last_outerHTML+ "&nbsp;<input type='image' class='remove' src='http://localhost/wp-content/plugins/5-extra/asset/remove.png' id='"+ remove_random_id + "_"+nextindex+"' alt='Remove'></div>");

                }

            });

            // Remove element
            jQuery('.container').on('click', '.remove', function () {
alert('assssssssssssss');
                var id = this.id;
                var split_id = id.split("_");
                var deleteindex = split_id[1];
				alert(deleteindex);
                // Remove <div> with id
                jQuery(unique_id+"_" + nextindex).remove();

            });
    });
}


/*function add_remove(add_random_id, remove_random_id, tag_name, unique_id, extra) {
    (function ($) {

            jQuery(document).ready(function () {
				alert(1);
                    var scripts = jQuery("sst-script[add_random_id='" + add_random_id + "']").last()[0];
                    console.log(jQuery(scripts).attr("id").slice(0,-7));
                    console.log(unique_id);
                    if (unique_id == jQuery(scripts).attr("id").slice(0,-7)) {
                        //jQuery("#<?php echo $remove_random_id; ?>").hide();		
                        jQuery.noConflict();
                        jQuery("#" + add_random_id).click(function () {
                            var scripts = jQuery("sst-script[id='" + unique_id + "-script']").last()[0];

                            //if(unique_id == jQuery(scripts).attr('id').slice(0,-7)){
                            //new_unique_id = unique_id+"_1";
                            var elements = jQuery(tag_name + "[id='" + unique_id + "']");
                            var last_element = elements.last()[0];
                            var last_outerHTML = last_element.outerHTML.replace(unique_id, unique_id + "_1");


                            var created_element = jQuery(last_outerHTML).insertAfter(last_element).hide();
                            created_element.show(300);
                            //var scripts = jQuery("sst-scripts #"+unique_id+"")[0].html("<script>jQuery(document).ready(function(){add_remove('"+add_random_id+"', '"+remove_random_id+"', '"+tag_name+"', '".unique_id+"_1', "+extra+");});</script>");
                            //var elements = jQuery( tag_name + "[id='" + unique_id + "']");

                            var scripts = jQuery("sst-script[id='" + unique_id + "-script']").last()[0];
                            jQuery(scripts).attr("id", unique_id + "_1-script");
                            jQuery(scripts).html("<script>jQuery(document).ready(function(){add_remove('" + add_random_id + "', '" + remove_random_id + "', '" + tag_name + "', '" + unique_id + "_1" + "', " + (extra - 1) + ");});</script>");
                            //stat = unique_id+"_1"
                            //}
                           // console.log(scripts);
                            //alert(scripts);

                           // console.log(last_element);

                        });
                    }
            });
    })(jQuery);


}
*/
