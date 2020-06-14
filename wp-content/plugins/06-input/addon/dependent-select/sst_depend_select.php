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
    $controller_inputs_str = implode( ',', $controller_input_ids ) ;
  } else {
    $controller_input_ids = common::search_by_attr_to_get_other_attr( 'name', $input_data[ 'meta' ][ 'controller-input-name' ], 'id', $process_data, 'process' );
    $controller_inputs_str =  addslashes( $controller_input_ids );
  }
  //$script = '<script type="text/javascript">' . "\n";
  //$script .= 'jQuery(document).ready(function($) {' . "\n";
  //$script .= 'jQuery("#' . addslashes( $controller_input_ids ) . '").on("change focus blur click input",function() {' . "\n";
  $script .= 'append_onchange_to_controller(' . "\n";
  $script .= "'" . addslashes( $input_data[ 'attrs' ][ 'id' ] ) . "'," . "\n";


  $script .= "'" .$controller_inputs_str . "'," . "\n";
	

  $between_start = '{name:';
  $between_end = '}';
  $query_on_change = $input_data[ 'meta' ][ 'query-on-change' ];
  preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $query_on_change, $matches );
  foreach ( $matches[ 1 ] as $k => $match ) {
    $id = common::search_by_attr_to_get_other_attr( 'name', $matches[ 1 ][ $k ], 'id', $process_data, 'process' );
    $query_on_change = str_replace( $matches[ 0 ][ $k ], $between_start . $id . $between_end, $query_on_change );

  }
  $script .= "'" . addslashes( $query_on_change ) . "'," . "\n";
  $script .= "'string'," . "\n";
  $script .= "'" . path2url( __FILE__, $_SERVER[ 'REQUEST_SCHEME' ] ) . "'," . "\n";
  if ( !is_array( $input_data[ 'meta' ][ 'query' ] ) ) {
    $query_str = 'addslashes(\'{ "queries" : [' . $input_data[ 'meta' ][ 'query' ] . ']}\')' . "\n";
  } else {
    $query_str = 'addslashes(\'{ "queries" : [' . implode( ',', $input_data[ 'meta' ][ 'query' ] ) . ']}\')' . "\n";
  }
  $query_str .= ');';
  $query = $query_str;
  preg_match_all( '/' . addslashes( $between_start ) . '(.*?)' . addslashes( $between_end ) . '/', $query, $matches );
  foreach ( $matches[ 1 ] as $k => $match ) {
    $id = common::search_by_attr_to_get_other_attr( 'name', $matches[ 1 ][ $k ], 'id', $process_data, 'process' );
    $query = str_replace( $matches[ 0 ][ $k ], $between_start . $id . $between_end, $query );

  }
  $script .= $query;
  //$script .= '});';
	//$script .= '});';
	//$script .= '</script>';
  //echo $script;
  //$input_data[ 'tag' ][ 'after' ] .= $script;
	//krumo($controller_inputs_str);
	//krumo(explode(',', $controller_inputs_str));
	//$controller_inputs_str_id_selector = implode(',#',explode(',', $controller_inputs_str));
 // $input_data[ 'js_code' ] .= 'jQuery("#'. $controller_inputs_str_id_selector .'").on("change remove create",function(){alert("سسسسسسسسسسسسسسسسسس")});';
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