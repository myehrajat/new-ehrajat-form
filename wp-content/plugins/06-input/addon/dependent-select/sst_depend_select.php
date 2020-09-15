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
    /*
	  //this func is used in dep_select.js
	function warp_for_sql_col($var){
		if(empty($var) or !is_numeric($var)){
			$var =  "'".$var."'";
		}
			return $var;
	}
	*/

  }

  function wrap_non_numeric( $str, $warp ) {
    if ( !is_numeric( $str ) ) {
      $str = $warp . $str . $warp;
    }
    return $str;
  }

  function prepare_cols( $obj ) {
    foreach ( $obj as $k => $v ) {
      $obj->$k = wrap_non_numeric( $v, "'" );
    }
    return $obj;
  }
	
function null_pre_query_result_prepare($qu){
$qu = preg_replace( '/[\t\n\r\s]+/', ' ', $qu );
$qu_arr = explode( ' ', $qu );
foreach ( $qu_arr as $k => $el ) {
  if ( starts_with( $el, '$col->' ) ) {
    $qu_arr[ $k ] = "''";
  }
}
return implode( ' ', $qu_arr );

}
function starts_with( $string, $startString ) {
  settype( $string, 'string' );
  settype( $startString, 'string' );
  $len = strlen( $startString );
  return ( substr( $string, 0, $len ) === $startString );
}
	$path = preg_replace( '/wp-content.*$/', '', __DIR__ );
  require_once( $path . 'wp-load.php' );
  if ( $_REQUEST[ 'psw' ] == '12345' ) {
    $query = $_REQUEST[ 'query' ];
    $obj = json_decode( stripslashes( $query ) );
    $queries = $obj->queries;
    if ( !empty( $_REQUEST[ 'pre_query' ] ) ) {
      $pre_query = stripslashes( $_REQUEST[ 'pre_query' ] );
      $pre_query_results = $wpdb->get_results( $pre_query );
      $new_queries = $queries;
      foreach ( $new_queries as $k => $query ) {
        if ( !empty( $pre_query_results ) ) {
          foreach ( $pre_query_results as $col ) {
            $col = prepare_cols( $col );
            $query_set[] = eval( 'return "' . $query->query . '";' );
          }
			//prequery return zero result
        }else{
            $query_set[] =null_pre_query_result_prepare($query->query );
		}
        $new_queries[ $k ]->query = $query_set;

      }
    } else {
      $new_queries = $queries;
      foreach ( $new_queries as $k => $query ) {
        $query_set[] = $query->query;
      }
      $new_queries[ $k ]->query = $query_set;
    }
    $queries = $new_queries;

    foreach ( $queries as $k => $query_cond ) {
      $json = str_replace( "'", "\'", json_encode( $query_cond->query, JSON_UNESCAPED_SLASHES ) );
      if ( $query_cond->condition != 'else' ) {
        if ( $k == 0 ) {
          $q = 'if(' . $query_cond->condition . '){';
          $q .= '$wpqueries = \'' . $json . '\';';
          $q .= "define( 'VALUE_SEPERATOR', ',' );";
          $q .= '$disabled = explode(VALUE_SEPERATOR,"' . $query_cond->disabled . '");';
          $q .= '$selected = explode(VALUE_SEPERATOR,"' . $query_cond->selected . '");';
          $q .= '}';
        } else {
          $q .= 'elseif(' . $query_cond->condition . '){';
          $q .= '$wpqueries = \'' . /*json_encode( $query_cond->query )*/ $json . '\';';
          $q .= '$disabled = explode(VALUE_SEPERATOR,"' . $query_cond->disabled . '");';
          $q .= '$selected = explode(VALUE_SEPERATOR,"' . $query_cond->selected . '");';
          $q .= '}';
        }
      } else {
        $q .= 'else{';
        $q .= '$wpqueries = \'' . /*json_encode( $query_cond->query )*/ $json . '\';';
        $q .= '$disabled = explode(VALUE_SEPERATOR,"' . $query_cond->disabled . '");';
        $q .= '$selected = explode(VALUE_SEPERATOR,"' . $query_cond->selected . '");';
        $q .= '}';
      }
    }

    //$q .= 'echo "<pre>";var_dump($wpqueries);echo "</pre>";';

    $q .= '$wpqueries = json_decode($wpqueries);';
    $q .= '$n = 0;';
    $q .= 'foreach($wpqueries as $wpquery){';
    // $q .= 'echo "<pre>";var_dump($wpquery);echo "</pre>";';
    //$q .= 'echo "<pre>";var_dump($wpquery);echo "</pre>";';
    $q .= '}';
	switch(strtolower($_POST['query_joiner'])){
		case'union':
		$q .= '$wpquery = implode(" UNION ",$wpqueries);';
		break;
		case'intersect':
		$q .= '$wpquery = implode(" INTERSECT ",$wpqueries);';
		break;
		default:
		$q .= '$wpquery = implode(" UNION ",$wpqueries);';
		break;
	}
    $q .= '/*echo $wpquery;*/';
    $q .= 'if(strtolower("' . $_REQUEST[ 'unique_option' ] . '")=="yes"){';
    if ( !empty( $query_cond->text ) ) {
      $q .= '$distinct_cols[] = "' . $query_cond->text . '";';
      $distinct_check[] = $query_cond->text;
    }
    if ( !empty( $query_cond->label )and!in_array( $query_cond->label, $distinct_check ) ) {
      $q .= '$distinct_cols[] = "' . $query_cond->label . '";';
      $distinct_check[] = $query_cond->label;
    }
    if ( !empty( $query_cond->value )and!in_array( $query_cond->value, $distinct_check ) ) {
      $q .= '$distinct_cols[] = "' . $query_cond->value . '";';
    }
    $q .= '$distinct_cols_str = implode(", ",$distinct_cols);';
    $q .= '$wpquery = "SELECT DISTINCT ".$distinct_cols_str." FROM(".$wpquery.") AS sst_temp_table";';
    $q .= '}';
    $q .= 'if(!empty("' . $_REQUEST[ 'order_by' ] . '")){';
    $q .= '$wpquery .= " ORDER BY ' . $_REQUEST[ 'order_by' ] . ';";';
    $q .= '}';
    //$q .= 'echo $wpquery."<br>";';
    $q .= '$results = $wpdb->get_results($wpquery);';
    $q .= 'if(!empty($results)){';
    $q .= 'foreach($results as $result){';
    //$q .= 'if(){';
    $q .= '$options[$n]["text"] = "$result->' . $query_cond->text . '";';
    $q .= '$options[$n]["attrs"]["label"] = "$result->' . $query_cond->label . '";';
    $q .= '$options[$n]["attrs"]["value"] = "$result->' . $query_cond->value . '";';

    $q .= 'if(in_array($options[$n]["attrs"]["value"],$selected)){';
    $q .= '$options[$n]["attrs"]["selected"] = "selected";';
    $q .= '}else{';
    $q .= '$options[$n]["attrs"]["selected"] = "";';
    $q .= '}';
    $q .= 'if(in_array($options[$n]["attrs"]["value"],$disabled)){';
    $q .= '$options[$n]["attrs"]["disabled"] = "disabled";';
    $q .= '}else{';
    $q .= '$options[$n]["attrs"]["disabled"] = "";';
    $q .= '}';
    $q .= '$options[$n]["attrs"]["sst_onfly"] = "yes";';
    $q .= '$n++;';
    //$q .= '}';
    $q .= '}';
    $q .= '}else{ }'; //return "";

    if ( strtolower( $_REQUEST[ 'return_type' ] ) == 'string' ) {
      $q .= '$options_obj = new render_opts($options);';
      $q .= '$all_options = $options_obj->opts;';
    } elseif ( strtolower( $_REQUEST[ 'return_type' ] ) == 'json' ) {
      $q .= '$all_options = json_encode($options);';
    }
    $q .= ' return $all_options;';
   // echo $q;
    $options_obj = eval( $q );
    if ( empty( $options_obj )and strtolower( $_REQUEST[ 'return_type' ] ) == 'string' ) {
      $options_obj = '<option disabled="disabled" sst_onfly="yes">No Option On Change Found!</option>"';
    }
    //var_dump($options_obj);
    //$options_obj .= '<script>alert("sssssssssss");</script>';
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
define( 'WP_USE_THEMES', false );
$path = preg_replace( '/wp-content.*$/', '', __DIR__ );
require_once( $path . 'wp-load.php' );

function sst_depend_select( $input_data_json, $process_data_json ) {
  $input_data = data_decoder( $input_data_json );
  $process_data = data_decoder( $process_data_json );
  $p = explode( '/', path2url( __FILE__, $_SERVER[ 'REQUEST_SCHEME' ] ) );
  array_pop( $p );
  $p[] = 'dep_select.js';
  $js_file = implode( '/', $p );
  add_action_in_function( $js_file );

  if ( is_array( $input_data[ 'meta' ][ 'controller-input-name' ] ) ) {
    foreach ( $input_data[ 'meta' ][ 'controller-input-name' ] as $controller_input_name ) {
      $controller_input_ids[] = addslashes( common::search_by_attr_to_get_other_attr( 'name', $controller_input_name, 'id', $process_data, 'process' ) );
    }
    $controller_inputs_str = implode( ',', $controller_input_ids );
  } else {
    $controller_input_ids = common::search_by_attr_to_get_other_attr( 'name', $input_data[ 'meta' ][ 'controller-input-name' ], 'id', $process_data, 'process' );
    $controller_inputs_str = addslashes( $controller_input_ids );
  }
  //$script = '<script type="text/javascript">' . "\n";
  //$script .= 'jQuery(document).ready(function($) {' . "\n";
  //$script .= 'jQuery("#' . addslashes( $controller_input_ids ) . '").on("change focus blur click input",function() {' . "\n";
  $script .= 'append_onchange_to_controller(' . "\n";
  /*********************dependent_id*******************/
  $script .= "'" . addslashes( $input_data[ 'attrs' ][ 'id' ] ) . "'," . "\n";

  /***********************controller_ids*********************/
  $script .= "'" . $controller_inputs_str . "'," . "\n";

  /**********************pre_query*********************/
  $between_start = '{name:';
  $between_end = '}';
  $query_on_change = $input_data[ 'meta' ][ 'query-on-change' ];
  preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $query_on_change, $matches );
  foreach ( $matches[ 1 ] as $k => $match ) {
    $id = common::search_by_attr_to_get_other_attr( 'name', $matches[ 1 ][ $k ], 'id', $process_data, 'process' );
    // var_dump($matches[ 0 ][ $k ]);
    //var_dump($between_start . $id . $between_end);
    $query_on_change = str_replace( $matches[ 0 ][ $k ], $between_start . $id . $between_end, $query_on_change );

  }
  $script .= "'" . addslashes( $query_on_change ) . "'," . "\n";
  /*******************return_type*****************/
  $script .= "'string'," . "\n";
  /*******************url_to_process*****************/
  $script .= "'" . path2url( __FILE__, $_SERVER[ 'REQUEST_SCHEME' ] ) . "'," . "\n";
  /*******************query*****************/
  if ( !is_array( $input_data[ 'meta' ][ 'query' ] ) ) {
    $query_str = 'addslashes(\'{ "queries" : [' . $input_data[ 'meta' ][ 'query' ] . ']}\'),' . "\n";
  } else {
    $query_str = 'addslashes(\'{ "queries" : [' . implode( ',', $input_data[ 'meta' ][ 'query' ] ) . ']}\'),' . "\n";
  }
  preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $query_str, $matches );
  foreach ( $matches[ 1 ] as $k => $match ) {
    $id = common::search_by_attr_to_get_other_attr( 'name', $matches[ 1 ][ $k ], 'id', $process_data, 'process' );
    $query_str = str_replace( $matches[ 0 ][ $k ], $between_start . $id . $between_end, $query_str );

  }
  $script .= $query_str;
  /*******************order_by*****************/
  $script .= "'" . $input_data[ 'meta' ][ 'order-by' ] . "'," . "\n";
  /*******************unique_option*****************/
  $script .= "'" . $input_data[ 'meta' ][ 'unique-option' ] . "'," . "\n";
  $script .= "'" . $input_data[ 'meta' ][ 'query-joiner' ] . "'" . "\n";
  $script .= ');';
  //$query = $query_str;

  //$script .= $query;
  //$script .= '});';
  //$script .= '});';
  //$script .= '</script>';
  //echo $script;
  //$input_data[ 'tag' ][ 'after' ] .= $script;
  //krumo($controller_inputs_str);
  //krumo(explode(',', $controller_inputs_str));
  //$controller_inputs_str_id_selector = implode(',#',explode(',', $controller_inputs_str));
  // $input_data[ 'js_code' ] .= 'jQuery("#'. $controller_inputs_str_id_selector .'").on("change remove create",function(){alert("سسسسسسسسسسسسسسسسسس")});';
  //krumo(  $script);
  $input_data[ 'js_code' ] .= $script;
  //$input_data[ 'tag' ][ 'before' ] .= '<script type="text/javascript">alert("sssssssssss");</script>';
  //$input_data[ 'tag' ][ 'before' ] .= '<script type="text/javascript"></script>';
  //krumo($input_data);
  return $input_data;
}

function add_action_in_function( $file_url ) {
  static $inc_js_file;
  if ( !isset( $inc_js_file[ $file_url ] ) ) {
    echo '<script type="text/javascript" src="' . $file_url . '"></script>';
    $inc_js_file[ $file_url ] = true;
  }
}


function path2url( $file = NULL, $Protocol = NULL ) {
  if ( $file == NULL ) {
    $file = __FILE__;
  }
  if ( $Protocol == NULL ) {
    $Protocol = $_SERVER[ 'REQUEST_SCHEME' ] . '://';
  } else {
    $Protocol = $Protocol . '://';
  }
  $file = str_replace( '\\', '/', $file );

  return $Protocol . $_SERVER[ 'HTTP_HOST' ] . str_replace( $_SERVER[ 'DOCUMENT_ROOT' ], '', $file );
}