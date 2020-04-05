		function dep_select(dependent_id, controller_ids, pre_query, return_type, url_to_process, query) {
		    var matches = pre_query.match(/\{value:(.*?)\}/g);
		    jQuery.each(matches, function (key, value) {
		       // console.log(value);
		        var placeHolder = value.match(/\{value:(.*?)\}/);
		        jQuery.each(controller_ids, function (key, controller_id) {
		            //console.log(controller_id);

		            var el = jQuery('[id="' + controller_id + '"]');
		            if (el.length != 0 && controller_id == placeHolder[1]) {

		                //console.log(jQuery('[id="'+controller_id+'"][name="'+placeHolder[1]+'"]'));
		                var inputValue = el.first().val();
		                pre_query = pre_query.replace(placeHolder[0], inputValue);
		            }
		        });
		    });

		    //console.log(pre_query);
		    var matches = query.match(/\{value:(.*?)\}/g);
		    jQuery.each(matches, function (key, value) {
		        var placeHolder = value.match(/\{value:(.*?)\}/);
		        jQuery.each(controller_ids, function (key, controller_id) {
		            var el = jQuery('[id="' + controller_id + '"]');
		            if (el.length != 0 && controller_id == placeHolder[1]) {
		                var inputValue = el.first().val();
		                query = query.replace(placeHolder[0], inputValue);
		            }
		        });
		    });
		    var matches = query.match(/\{col:(.*?)\}/g);
		    jQuery.each(matches, function (key, value) {
		        var placeHolder = value.match(/\{col:(.*?)\}/);
		        query = query.replace(placeHolder[0], '$col->'+placeHolder[1]);
		        
		    });
			
		    //console.log(query);
		    jQuery.ajax({
		        method: "POST",
		        url: url_to_process,
		        data: {
		            psw: "12345",
		            pre_query: pre_query,
		            query: query,
		            query: query,
		            return_type: 'string',
		        },
		        success: function (data) {
		            if (return_type == 'string') {
						console.log( jQuery("#" + dependent_id));
						console.log( data);
		                remove_onfly_options(dependent_id);
		                jQuery("#" + dependent_id).append(data);
		            }
		        }
		    });
		}

		function remove_onfly_options(dependent_id) {
		    jQuery("#" + dependent_id).find("[sst_onfly='yes']").remove();
		    jQuery("#" + dependent_id).val(jQuery("#" + dependent_id + " option:first").val());

		}

		function append_onchange_to_controller(dependent_id, controller_ids, pre_query, return_type, url_to_process, query) {
		    controller_ids = controller_ids.split(',');
		    jQuery.each(controller_ids, function (key, value) {
				var current_onchange = jQuery("#" + value).attr("onchange");
				if(current_onchange === undefined){
					current_onchange = '';
				}
		        jQuery("#" + value).attr('onchange', current_onchange + ";dep_select('" + dependent_id + "',['" + controller_ids.join("','") + "'],'" + pre_query + "','" + return_type + "','" + url_to_process + "','" + query + "')");
		    });
		}

		function addslashes(string) {
		    return string.replace(/\\/g, '\\\\').
		    replace(/\u0008/g, '\\b').
		    replace(/\t/g, '\\t').
		    replace(/\n/g, '\\n').
		    replace(/\f/g, '\\f').
		    replace(/\r/g, '\\r').
		    replace(/'/g, '\\\'').
		    replace(/"/g, '\\"');
		}
