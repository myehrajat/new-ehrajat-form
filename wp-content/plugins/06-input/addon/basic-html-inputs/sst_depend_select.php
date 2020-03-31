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
    $path = preg_replace( '/wp-content.*$/', '', __DIR__ );

    require_once( $path . 'wp-load.php' );

    if ( $_REQUEST[ 'psw' ] == '12345' ) {
        $results = $wpdb->get_results( $_REQUEST[ 'pre_query' ] );
        $col = $results[ 0 ];
        //var_dump( $col);
        //die;
        $query = $_REQUEST[ 'query' ];
        $obj = json_decode( stripslashes( $query ) );


        $queries = $obj->queries;
        foreach ( $queries as $k => $query_cond ) {
            //echo 'QQQQQQQQQQ';
            //			var_dump($queries);
            //			die;
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
<?php

/**************************************************
 *version 1.0.0
 *these are some options for user to setup
 **************************************************/

$sst[ 'html_type' ] = 'select';
$sst[ 'type' ] = 'depend-select';
$sst[ 'function' ] = 'sst_depend_select';
$sst[ 'epithet' ] = 'Depened Select Field';
$sst[ 'description' ] = 'This is Depened Select Field!';
$sst[ 'slug' ] = 'depend_select';
$sst[ 'owner' ] = 'Ehrajat';
$sst[ 'id' ] = 24;

function sst_depend_select( $input_data_json, $process_data_json ) {
    $js_file = 'http://localhost/wp-content/plugins/06-input/addon/basic-html-inputs/dep_select.js';
    add_action_in_function( $js_file );
    $input_data = json_decode( $input_data_json, true );
    $process_data = json_decode( $process_data_json, true );


    ?>
<script type="text/javascript">
			jQuery(document).ready(function() {

		append_onchange_to_controller(
'<?php echo addslashes($input_data['attrs']['id']); ?>',
'<?php 
	if(is_array($input_data['meta']['controller-input-name'])){
		foreach($input_data['meta']['controller-input-name'] as $controller_input_name){
			$controller_input_ids[] = addslashes(get_unique_id_of_input_from_this_process_by_input_name($controller_input_name,$process_data));
		}
		implode(',',$controller_input_ids);
	}else{
		$controller_input_ids = get_unique_id_of_input_from_this_process_by_input_name($input_data['meta']['controller-input-name'],$process_data);
		echo addslashes($controller_input_ids); 
	}
	?>',
'<?php 
	$between_start = '{value:';
	$between_end = '}';
	$query_on_change = $input_data['meta']['query-on-change'];
	preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $query_on_change, $matches );
    foreach ( $matches[ 1 ] as $k => $match ) {
		$id = get_unique_id_of_input_from_this_process_by_input_name($matches[ 1 ][$k] ,$process_data);
    	$query_on_change = str_replace( $matches[ 0 ][ $k ],'{value:'. $id.'}' , $query_on_change );
		
    }
	echo addslashes($query_on_change);?>',
'string',
'<?php echo path2url()."'," ; 
	if(!is_array($input_data['meta']['query'])){
		$query_str =  'addslashes(\'{ "queries" : ['.$input_data['meta']['query'].']}\'));';
	}else{
		$query_str =  'addslashes(\'{ "queries" : ['.implode(',',$input_data['meta']['query']).']}\'));';
	}
	$query = $query_str;
	preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $query, $matches );
    foreach ( $matches[ 1 ] as $k => $match ) {
		$id = get_unique_id_of_input_from_this_process_by_input_name($matches[ 1 ][$k] ,$process_data);
    	$query = str_replace( $matches[ 0 ][ $k ],'{value:'. $id.'}' , $query );
		
	}
	echo $query;
	?>	
});
</script>
<?php
//	  addslashes('{ "queries" : [{ "condition":"$col->html_type==\'text\' or $col->html_type==\'search\'" , "query":"SELECT * FROM wp_tt_attr_input_text_search LIMIT {value:my_controller_id2}", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" },{ "condition":"$col->html_type==\'tel\'" , "query":"SELECT * FROM wp_tt_attr_input_tel_url", "text":"epithet", "label":"epithet", "value":"id" , "selected":"2" , "disabled":"3" } ]}'));
return $input_data;
}

function add_action_in_function( $file_url ) {
    static $inc_js_file;
    if ( !isset( $inc_js_file[ $file_url ] ) ) {
        ?>
<script type="text/javascript" src="<?php echo $file_url; ?>"></script>
<?php
$inc_js_file[ $file_url ] = true;

}
}

function get_unique_id_of_input_from_this_process_by_input_name( $input_name, $process_data ) {
    $all_inputs = get_all_inputs_data( $process_data, 'process' );
    //krumo($all_inputs);
    foreach ( $all_inputs as $input_data ) {
        if ( $input_data[ "attrs" ][ "name" ] == $input_name ) {
            //krumo($input_data["attrs"]["id"]);
            //krumo($process_data);
            return $input_data[ "attrs" ][ "id" ];
        }
    }
    //krumo(get_all_inputs_data($input_name,$process_data,'process'));
    //die;
}

function get_all_inputs_data( $data, $type ) {
    static $temp;
    static $all_input;
    switch ( $type ) {
        case "process":
            if ( !empty( $data[ "form_data" ] ) ) {
                get_all_inputs_data( $data[ "form_data" ], "form" );
            }
            break;
        case "form":
            if ( !empty( $data[ 'blocks_data' ] ) ) {
                foreach ( $data[ 'blocks_data' ] as $block ) {
                    get_all_inputs_data( $block, "block" );
                }
            }
            if ( !empty( $data[ 'fieldsets_data' ] ) ) {
                foreach ( $data[ 'fieldsets_data' ] as $fieldset ) {
                    get_all_inputs_data( $fieldset, "fieldset" );
                }
            }
            if ( !empty( $data[ "inputs_data" ] ) ) {
                get_all_inputs_data( $data[ "inputs_data" ], "input" );
            }
            break;
        case "block":
            if ( !empty( $data[ 'children' ] ) ) {
                foreach ( $data[ 'children' ] as $block ) {
                    get_all_inputs_data( $block, "block" );
                }
            }
            if ( !empty( $data[ "inputs_data" ] ) ) {
                get_all_inputs_data( $data[ "inputs_data" ], "input" );
            }
            break;
        case "fieldset":
            if ( !empty( $data[ 'children' ] ) ) {
                foreach ( $data[ 'children' ] as $fieldset ) {
                    get_all_inputs_data( $fieldset, "fieldset" );
                }
            }
            if ( !empty( $data[ "inputs_data" ] ) ) {
                get_all_inputs_data( $data[ "inputs_data" ], "input" );
            }
            break;
        case "input":
            if ( !empty( $all_input ) ) {
                $all_input = array_merge( $all_input, $data );
            } else {
                $all_input = $data;
            }
            break;

    }
    return $all_input;
}

function path2url( $file = NULL, $Protocol = NULL ) {
    if ( $file == NULL ) {
        $file = __FILE__;
    }
    if ( $Protocol == NULL ) {
        $Protocol = $_SERVER[ 'REQUEST_SCHEME' ] . '://';
    }
    $file = str_replace( '\\', '/', $file );

    return $Protocol . $_SERVER[ 'HTTP_HOST' ] . str_replace( $_SERVER[ 'DOCUMENT_ROOT' ], '', $file );
}
//krumo(path2url());


//add_action( 'wp_footer', 'depend_select_js' );

function depend_select_js() {
    //krumo($GLOBALS);
    $uniqid = uniqid( 'depend_on_', true );
    wp_register_script( $uniqid, '' );
    wp_enqueue_script( $uniqid );
    $js .= $GLOBALS[ 'depend_js' ];

    wp_add_inline_script( $uniqid, $js );

}