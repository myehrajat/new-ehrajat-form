//Thnaks to http://makitweb.com/demo/addremoveelement/
//https://makitweb.com/dynamically-add-and-remove-element-with-jquery/
function add_remove( tag_name, unique_id, extra) {
    jQuery(document).ready(function () {

        // Add new element
        jQuery("." + unique_id + "-add").click(function () {

            // Finding total number of elements added
            var total_element = jQuery("."+unique_id+"-element").length;

            // last <div> with element class id
            var lastid = jQuery("."+unique_id+"-element:last").attr("id");
            var split_id = lastid.split("_");
            var nextindex = Number(split_id[1]) + 1;

            var max = extra;
            // Check total number elements
            if (total_element < max) {
                // Adding new div container after last occurance of element class
                jQuery("."+unique_id+"-element:last").after("<"+tag_name+" id='"+unique_id+"-div_" + nextindex + "' class='"+unique_id+"-element'></"+tag_name+">");

                // Adding element to <div>
				//var element_to_add = "<input type='text' placeholder='Enter your skill' id='txt_" + nextindex + "'>";
				//element_to_add = element_to_add+"<span id='"+unique_id+"-remove_" + nextindex + "' class='"+unique_id+"-remove'>X</span>";
				
				var element_to_add_2 = jQuery("."+unique_id+"-element:first")[0].innerHTML;
				element_to_add_2 = element_to_add_2.replace( unique_id + "-add_1",  unique_id + "-remove_" + nextindex);//change id of add icon
				element_to_add_2 = element_to_add_2.replace( unique_id + "-add",  unique_id + "-remove");//change class of add icon
				element_to_add_2 = element_to_add_2.replace( "add.png?"+unique_id,  "remove.png?"+unique_id);//change add icon to remove
				//console.log(element_to_add_2);
				
                //jQuery("#"+unique_id+"-div_" + nextindex).append(element_to_add);
                jQuery("#"+unique_id+"-div_" + nextindex).append(element_to_add_2);

            }

        });

        // Remove element
        jQuery('.' + unique_id + '-container').on('click', '.'+unique_id+'-remove', function () {

            var id = this.id;
            var split_id = id.split("_");
            var deleteindex = split_id[1];

            // Remove <div> with id
            jQuery("#"+unique_id+"-div_" + deleteindex).remove();
        });
    });
}
