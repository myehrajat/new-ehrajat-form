function dep_select(dependent_id, controller_ids, pre_query, return_type, url_to_process, query,order_by,unique_option,query_joiner) {
//console.log(unique_option);

  var matches = pre_query.match(/\{name:(.*?)\}/g);
	//console.log( matches);
  //jQuery.each(matches, function (key, value) {
  jQuery.each(matches, function (key, value) {
    // console.log(value);
    var placeHolder = value.match(/\{name:(.*?)\}/);
    jQuery.each(controller_ids, function (key, controller_id) {
      //console.log(controller_id);

      var el = jQuery('[id="' + controller_id + '"]');
      if (el.length != 0 && controller_id == placeHolder[1]) {

        //console.log(jQuery('[id="'+controller_id+'"][name="'+placeHolder[1]+'"]'));
        var inputValue = el.first().val();
		  if(typeof inputValue!='number'){
			  inputValue = "'"+inputValue+"'";
		  }
        pre_query = pre_query.replace(placeHolder[0],inputValue );
      }
    });
  });

  //console.log(pre_query);
  var matches = query.match(/\{name:(.*?)\}/g);
  jQuery.each(matches, function (key, value) {
    var placeHolder = value.match(/\{name:(.*?)\}/);
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
    query = query.replace(placeHolder[0], '$col->' + placeHolder[1]);

  });

//console.log(query);
  jQuery.ajax({
    method: "POST",
    url: url_to_process,
    data: {
      psw: "12345",
      pre_query: pre_query,
      query: query,
	  order_by: order_by,
	  unique_option: unique_option,
		query_joiner:query_joiner,
		return_type: 'string',
    },
    success: function (data) {

      if (return_type == 'string') {
        //console.log(jQuery("#" + dependent_id));
       // console.log(data);
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

function append_onchange_to_controller(dependent_id, controller_ids, pre_query, return_type, url_to_process,query,order_by,unique_option,query_joiner) {

  controller_ids = controller_ids.split(',');
  jQuery.each(controller_ids, function (key, value) {
    var current_onchange = jQuery("#" + value).attr("onchange");
    if (current_onchange === undefined) {
      current_onchange = '';
    }
	  //console.log(";dep_select('" + dependent_id + "',['" + controller_ids.join("','") + "'],'" + pre_query + "','" + return_type + "','" + url_to_process + "','" + query + "','"+order_by+"','"+unique_option+"');");
		eval(";dep_select('" + dependent_id + "',['" + controller_ids.join("','") + "'],'" + pre_query + "','" + return_type + "','" + url_to_process + "','" + query + "','"+order_by+"','"+unique_option+"','"+query_joiner+"');");
	  
	  jQuery("#" + value).attr('onchange', current_onchange + ";dep_select('" + dependent_id + "',['" + controller_ids.join("','") + "'],'" + pre_query + "','" + return_type + "','" + url_to_process + "','" + query + "','"+order_by+"','"+unique_option+"','"+query_joiner+"');");
	  

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
/*
jQuery(document).ready(function () {
  append_onchange_to_controller('pxMBCKN3aCGZ',
								'AZHv4s3Ml9lV',
								'SELECT * FROM wp_tt_input_types WHERE id={name:AZHv4s3Ml9lV}',
								'string', 'http://localhost/wp-content/plugins/06-input/addon/dependent-select/sst_depend_select.php',
								addslashes('{ "queries" : [{ "condition":"{col:html_type}==\'textarea\'" , "query":"SELECT * FROM wp_tt_attr_input_textarea", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'text\' or {col:html_type}==\'search\'" , "query":"SELECT * FROM wp_tt_attr_input_text_search", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'tel\' or {col:html_type}==\'url\'" , "query":"SELECT * FROM wp_tt_attr_input_tel_url", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'submit\'" , "query":"SELECT * FROM wp_tt_attr_input_submit", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'select\'" , "query":"SELECT * FROM wp_tt_attr_input_select", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'range\'" , "query":"SELECT * FROM wp_tt_attr_input_range", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'password\'" , "query":"SELECT * FROM wp_tt_attr_input_password", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'number\'" , "query":"SELECT * FROM wp_tt_attr_input_number", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'image\'" , "query":"SELECT * FROM wp_tt_attr_input_image", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'file\'" , "query":"SELECT * FROM wp_tt_attr_input_file", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'email\'" , "query":"SELECT * FROM wp_tt_attr_input_email", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'date\' or {col:html_type}==\'datetime-local\' or {col:html_type}==\'month\' or {col:html_type}==\'time\' or {col:html_type}==\'week\' or {col:html_type}==\'datetime\' " , "query":"SELECT * FROM wp_tt_attr_input_date_time_related", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'color\'" , "query":"SELECT * FROM wp_tt_attr_input_color", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'checkbox\' or {col:html_type}==\'radio\'" , "query":"SELECT * FROM wp_tt_attr_input_checkbox_radio", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" }]}')
							   );
});
jQuery(document).ready(function() {
	append_onchange_to_controller('1FOH1YldCgfd≪1≫',
								  '',
								  'SELECT * FROM wp_tt_input_types WHERE id={name:}',
								  'string',
								  'http://localhost/wp-content/plugins/06-input/addon/dependent-select/sst_depend_select.php',
								  addslashes('{ "queries" : [{ "condition":"{col:html_type}==\'textarea\'" , "query":"SELECT * FROM wp_tt_attr_input_textarea", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'text\' or {col:html_type}==\'search\'" , "query":"SELECT * FROM wp_tt_attr_input_text_search", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'tel\' or {col:html_type}==\'url\'" , "query":"SELECT * FROM wp_tt_attr_input_tel_url", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'submit\'" , "query":"SELECT * FROM wp_tt_attr_input_submit", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'select\'" , "query":"SELECT * FROM wp_tt_attr_input_select", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'range\'" , "query":"SELECT * FROM wp_tt_attr_input_range", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'password\'" , "query":"SELECT * FROM wp_tt_attr_input_password", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'number\'" , "query":"SELECT * FROM wp_tt_attr_input_number", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'image\'" , "query":"SELECT * FROM wp_tt_attr_input_image", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'file\'" , "query":"SELECT * FROM wp_tt_attr_input_file", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'email\'" , "query":"SELECT * FROM wp_tt_attr_input_email", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'date\' or {col:html_type}==\'datetime-local\' or {col:html_type}==\'month\' or {col:html_type}==\'time\' or {col:html_type}==\'week\' or {col:html_type}==\'datetime\' " , "query":"SELECT * FROM wp_tt_attr_input_date_time_related", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'color\'" , "query":"SELECT * FROM wp_tt_attr_input_color", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" },{ "condition":"{col:html_type}==\'checkbox\' or {col:html_type}==\'radio\'" , "query":"SELECT * FROM wp_tt_attr_input_checkbox_radio", "text":"epithet", "label":"epithet", "value":"id" , "selected":"" , "disabled":"" }]}'));});
*/