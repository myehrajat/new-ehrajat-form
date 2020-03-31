<?php
//var_dump($_REQUEST);
if ( !empty( $_REQUEST[ 'psw' ] ) ) {
    class render_opts {
        function __construct( $options_data ) {
            $this->opts = $this->render_options( $options_data );
        }

        function render_attrs( array $attrs ) {
            foreach ( $attrs as $attr_name => $attr_value ) {
                if ( !empty( $attr_value ) ) {
                    $all_attrs .= ' ' . $attr_name . '="' . $attr_value . '"';
                }
            }
            return $all_attrs;
        }

        function render_options( $options_data ) {
            if ( !empty( $options_data ) ) {
                foreach ( $options_data as $option ) {
                    $options .= '<option' . $this->render_attrs( $option[ 'attrs' ] ) . '>' . $option[ 'text' ] . '</option>';
                }
                return $options;
            }
        }

    }
    define( 'VALUE_SEPERATOR', ',' );

    include_once( 'wp-load.php' );
    if ( $_REQUEST[ 'psw' ] == '12345' ) {
        $results = $wpdb->get_results( $_REQUEST[ 'pre_query' ] );
        $col = $results[ 0 ];
        $query = $_REQUEST[ 'query' ];
		//echo stripslashes($query);
		//die;
        $obj = json_decode( stripslashes( $query ) );
        $queries = $obj->queries;
        foreach ( $queries as $k => $query_cond ) {

            if ( $query_cond->condition != 'else' ) {
                if ( $k == 0 ) {
                    $q = 'if(' . $query_cond->condition . '){';
                    $q .= '$wpquery = "' . $query_cond->query . '";';
                    $q .= '$disabled = explode(VALUE_SEPERATOR,"' . $query_cond->disabled . '");';
                    $q .= '$selected = explode(VALUE_SEPERATOR,"' . $query_cond->selected . '");';

                    $q .= '}';
                } else {
                    $q .= 'elseif(' . $query_cond->condition . '){';
                    $q .= '$wpquery = "' . $query_cond->query . '";';
                    $q .= '$disabled = explode(VALUE_SEPERATOR,"' . $query_cond->disabled . '");';
                    $q .= '$selected = explode(VALUE_SEPERATOR,"' . $query_cond->selected . '");';
                    $q .= '}';
                }
            } else {
                $q .= 'else{';
                $q .= '$wpquery = "' . $query_cond->query . '";';
                $q .= '$disabled = explode(VALUE_SEPERATOR,"' . $query_cond->disabled . '");';
                $q .= '$selected = explode(VALUE_SEPERATOR,"' . $query_cond->selected . '");';
                $q .= '}';
            }
        }
        $q .= '$results = $wpdb->get_results($wpquery);';
        $q .= 'if(!empty($results)){';
        $q .= 'foreach($results as $n=>$result){';
        $q .= '$options[$n]["text"] = "$result->' . $query_cond->text . '";';
        $q .= '$options[$n]["attrs"]["label"] = "$result->' . $query_cond->label . '";';
        $q .= '$options[$n]["attrs"]["value"] = "$result->' . $query_cond->value . '";';

        $q .= 'if(in_array($options[$n]["attrs"]["value"],$selected)){';
        $q .= '$options[$n]["attrs"]["selected"] = "selected";';
        $q .= '}else{$options[$n]["attrs"]["selected"] = "";}';

        $q .= 'if(in_array($options[$n]["attrs"]["value"],$disabled)){';
        $q .= '$options[$n]["attrs"]["disabled"] = "disabled";';
        $q .= '}else{$options[$n]["attrs"]["disabled"] = "";}';

        $q .= '$options[$n]["attrs"]["sst_onfly"] = "yes";';

        $q .= '}';
        if ( strtolower( $_REQUEST[ 'return_type' ] ) == 'string' ) {
            $q .= '$options_obj = new render_opts($options);';
            $q .= '$all_options = $options_obj->opts;';
        } elseif ( strtolower( $_REQUEST[ 'return_type' ] ) == 'json' ) {
            $q .= '$all_options = json_encode($options);';
        }
        $q .= '}else{ return "";}';
        $q .= ' return $all_options;';
        $options_obj = eval( $q );
        echo $options_obj;
    }
    //render_select_list
    die;
}
?>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script>
		function dep_select(dependent_id,controller_ids,pre_query,return_type,url_to_process,query){
			//var dependent_id = 'depenedent_id';
			//var controller_ids = ['my_controller_id','my_controller_id2'];
			//var pre_query = 'SELECT * FROM wp_tt_input_types WHERE id={value:my_controller_id} LIMIT {value:my_controller_id2}';
			//var return_type = 'string';
			//var url_to_process = "http://localhost/test2.php";
//var query = '{ "queries" : [{ "condition":"$col->html_type==\\"text\\" or $col->html_type==\\"search\\"" , "query":"SELECT * FROM wp_tt_attr_input_text_search LIMIT {value:my_controller_id2}", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" },{ "condition":"$col->html_type==\\"tel\\"" , "query":"SELECT * FROM wp_tt_attr_input_tel_url", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" } ]}';

			var matches = pre_query.match(/\{value:(.*?)\}/g);
			jQuery.each(matches,function ( key, value ) {
				console.log(value);
				var placeHolder = value.match(/\{value:(.*?)\}/);
				jQuery.each(controller_ids,function ( key, controller_id ) {
									//console.log(controller_id);

					var el =jQuery('[id="'+controller_id+'"]');
					if(el.length!=0 && controller_id==placeHolder[1]){
						
						//console.log(jQuery('[id="'+controller_id+'"][name="'+placeHolder[1]+'"]'));
					   var inputValue = el.first().val();
						pre_query = pre_query.replace(placeHolder[0],inputValue);
					}
				});
			});
			
			//console.log(pre_query);
			var matches = query.match(/\{value:(.*?)\}/g);
			jQuery.each(matches,function ( key, value ) {
				var placeHolder = value.match(/\{value:(.*?)\}/);
				jQuery.each(controller_ids,function ( key, controller_id ) {
					var el =jQuery('[id="'+controller_id+'"]');
					if(el.length!=0 && controller_id==placeHolder[1] ){
					   var inputValue = el.first().val();
						query = query.replace(placeHolder[0],inputValue);
					}
				});
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
					success: function(data){
						console.log(data);
						if(return_type == 'string'){
							remove_onfly_options(dependent_id);
							jQuery("#"+dependent_id).append(data); 
						}
					}
			});
	}
	function remove_onfly_options(dependent_id){
		jQuery("#"+dependent_id).find( "[sst_onfly='yes']").remove();
		jQuery("#"+dependent_id).val(jQuery("#"+dependent_id+" option:first").val());

	}
	function append_onchange_to_controller(dependent_id,controller_ids,pre_query,return_type,url_to_process,query){
		controller_ids = controller_ids.split(',');
		jQuery.each(controller_ids,function ( key, value ) {
			jQuery("#"+value).attr('onchange',jQuery("#"+value).attr("onchange")+";dep_select('"+dependent_id+"',['"+controller_ids.join("','")+"'],'"+pre_query+"','"+return_type+"','"+url_to_process+"','"+query+"')");
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
	jQuery(document).ready(function() {

		append_onchange_to_controller('depenedent_id',
									  "my_controller_id,my_controller_id2",
									  'SELECT * FROM wp_tt_input_types WHERE id={value:my_controller_id} LIMIT {value:my_controller_id2}',
									   'string',"http://localhost/test2.php",
									 // addslashes('{ "queries" : [{ "condition":"$col->html_type==\\"text\\" or $col->html_type==\\"search\\"" , "query":"SELECT * FROM wp_tt_attr_input_text_search LIMIT {value:my_controller_id2}", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" },{ "condition":"$col->html_type==\\"tel\\"" , "query":"SELECT * FROM wp_tt_attr_input_tel_url", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" } ]}'));
									  addslashes('{ "queries" : [{ "condition":"$col->html_type==\'text\' or $col->html_type==\'search\'" , "query":"SELECT * FROM wp_tt_attr_input_text_search LIMIT {value:my_controller_id2}", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" },{ "condition":"$col->html_type==\'tel\'" , "query":"SELECT * FROM wp_tt_attr_input_tel_url", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" } ]}'));
	});
</script>
</head>
<body>
<?php
/*
<form method="post" id="Not-main">
	  <select class="form-control" id="aaaaaaaaaaaa" onchange="console.log('NOT MAIN')" name="input_type-1" required="required">
		      <option disabled="disabled" selected="selected">Select One</option>
    <option value="5" label="Submit Field">Submit Field</option>

  </select>
  <select class="form-control" id="bbbbbbb" name="depenedent">
    <option disabled="disabled" selected="selected">Select One</option>
  </select>

</form>
	</br>
	*/
?>
<form method="post" id="main-one">
  <select class="form-control" id="my_controller_id2" onchange="console.log('main-one')" name="input_limit" required="required">
	  <option value="1">1</option>
	  <option value="2">2</option>
	  <option value="3">3</option>
	  <option value="4">4</option>
	  <option value="5">5</option>
	  <option value="6">6</option>
	</select>
  <select class="form-control" id="my_controller_id" onchange="console.log('MAIN')" name="input_type-1" required="required">
    <option disabled="disabled" label="Select Input Type">Select Input Type</option>
    <option value="1" label="Text Field">Text Field</option>
    <option value="2" label="Search Field">Search Field</option>
    <option value="3" label="Tel Field">Tel Field</option>
    <option value="4" label="Url Field">Url Field</option>
    <option value="5" label="Submit Field">Submit Field</option>
    <option value="6" label="Range Field">Range Field</option>
    <option value="7" label="Password Field">Password Field</option>
    <option value="8" label="Number Field">Number Field</option>
    <option value="9" label="Image Field">Image Field</option>
    <option value="10" label="File Field">File Field</option>
    <option value="11" label="Email Field">Email Field</option>
    <option value="12" label="Date Field">Date Field</option>
    <option value="13" label="Datetime-local Field">Datetime-local Field</option>
    <option value="14" label="Month Field">Month Field</option>
    <option value="15" label="Time Field">Time Field</option>
    <option value="16" label="Week Field">Week Field</option>
    <option value="17" label="Datetime Field">Datetime Field</option>
    <option value="18" label="Color Field">Color Field</option>
    <option value="19" label="Checkbox Field">Checkbox Field</option>
    <option value="20" label="Radio Field">Radio Field</option>
    <option value="21" label="Hidden Field">Hidden Field</option>
    <option value="22" label="Select Field">Select Field</option>
    <option value="23" label="Textarea Field">Textarea Field</option>
    <option value="24" label="Depened Select Field">Depened Select Field</option>
  </select>
  <select class="form-control" id="depenedent_id" name="depenedent">
    <option disabled="disabled" selected="selected">Select One</option>
  </select>
</form>
</body>
</html>