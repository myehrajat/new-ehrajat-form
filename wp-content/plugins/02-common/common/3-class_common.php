<?php
interface common_interface {

  function get_by_id( $id, $table_name );

  function get_by_col( $col, $val, $table_name );

  function get_current_user_id();

  function file_get_contents_with_timer( $url, $timer = NULL );

  function render_attrs( array $attrs );
}
class common extends ids
implements common_interface {
  public $user_id;
  public $mode;

  function __construct() {
    parent::__construct();
    $this->get_current_user_id();
    $this->get_mode();
  }
  /**************************************************
   *version 1.0.0
   * this function return only numbers
   **************************************************/

  //get a record
  //$identifier is for debugging only and when you want to what has been returned use specific identifier
  function get_by_id( $id, $table_name ) {
    global $wpdb;
    if ( $this->is_positive_number( $id ) ) {
      if ( $table_name ) {
        $sql = "SELECT * FROM `" . $table_name . "` WHERE `id`= " . $id . " LIMIT 1";
        $results = $wpdb->get_results( $sql );
        if ( $wpdb->last_error !== '' ) {
          $this->error_log( 'get_by_id MYSQL query failed due to syntax error.' );
          $return = false;
        } else {
          if ( !empty( $results ) ) {
            $return = $results[ 0 ];
          } else {
            $this->error_log( 'id provided for get_by_id is not correct.Can not find id:"' . $id . '" in table:"' . $table_name . '".' );
            $return = false;
          }
        }
      } else {
        $this->error_log( 'table name NOT provided in get_by_id().' );
        $return = false;

      }
    } else {
      $this->error_log( 'ids provided in get_by_id() must be only number and we will not fix it.' );
      $return = false;

    }
    return $return;
  }

  function get_by_col( $col, $val, $table_name ) {
    global $wpdb;
    if ( $table_name ) {
      $sql = "SELECT * FROM `" . $table_name . "` WHERE `" . $col . "`= '" . $val . "' LIMIT 1";
      $results = $wpdb->get_results( $sql );
      if ( $wpdb->last_error !== '' ) {
        $this->error_log( 'get_by_id MYSQL query failed due to syntax error.' );
        $return = false;
      } else {
        if ( !empty( $results ) ) {
          $return = $results[ 0 ];
        } else {
          $this->error_log( 'id provided for get_by_col is not correct.Can not find ' . $col . ':"' . $val . '" in table:"' . $table_name . '".' );
          $return = false;
        }
      }
    } else {
      $this->error_log( 'table name NOT provided in get_by_id().' );
      $return = false;

    }
    return $return;
  }

  /**************************************************
   *version 1.0.0
   *only str with a-z or A-Z - _ are acceptable this correct it
   **************************************************/
  /*
  https://html.spec.whatwg.org/multipage/syntax.html#attributes-2

   	"Attribute names must consist of one or more characters other than controls, U+0020 SPACE, U+0022 ("), U+0027 ('), U+003E (>), U+002F (/), U+003D (=), and noncharacters"
  	following characters are not allowed:
  	all char in brace { \"'>/=	}
  	controls:https://infra.spec.whatwg.org/#control
  	noncharacter:https://infra.spec.whatwg.org/#noncharacter
  test by:https://www.regextester.com/103704
  */
  function get_current_user_id() {
    require_once( ABSPATH . 'wp-includes/pluggable.php' );
    $this->user_id = get_current_user_id();
    return $this->user_id;
  }

  function file_get_contents_with_timer( $url, $timer = NULL ) {
    if ( $timer == NULL ) {
      $result = file_get_contents( $url );
    } else {
      $default_socket_timeout = ini_get( 'default_socket_timeout' );
      ini_set( 'default_socket_timeout', $timer );
      $result = file_get_contents( $url );
      ini_set( 'default_socket_timeout', $default_socket_timeout );
    }
    return $result;
  }

  function render_attrs( array $attrs ) {
    foreach ( $attrs as $attr_name => $attr_value ) {
      $all_attrs .= ' ' . $attr_name . '="' . $attr_value . '"';
    }
    return $all_attrs;
  }

  function get_mode() {
    $this->mode = strtolower( $_REQUEST[ COMMON_MODE_KEYWORD ] );
    if ( isset( $_REQUEST[ COMMON_MODE_KEYWORD ] ) ) {
      $this->mode = $_REQUEST[ COMMON_MODE_KEYWORD ];
    } elseif ( isset( $_REQUEST[ '__sst__mode' ] ) ) {
      $this->mode = $_REQUEST[ '__sst__mode' ];
    } else {
      $this->mode = 'add';
    }
  }

  /*this function search in process ,form, block or any type input recursivley and find which at first is matched and return the attr which you need
  use mostly for js coding*/
  function search_by_attr_to_get_other_attr( $attr_name, $attr_value, $return_attr_name, $process_data, $data_type ) {
    $all_inputs = get_all_inputs_data( $process_data, $data_type );
    foreach ( $all_inputs as $input_data ) {
      if ( $input_data[ "attrs" ][ $attr_name ] == $attr_value ) {
        return $input_data[ "attrs" ][ $return_attr_name ];
      }
    }
    return NULL;
  }
  /* Get all inputs of a process or form or block or fieldset it recursively search for childern and block in block or field set*/
  function get_all_inputs_data( $data, $type ) {
    static $temp;
    static $all_input;
    switch ( $type ) {
      case "process":
        if ( !empty( $data[ "form_data" ] ) ) {
          common::get_all_inputs_data( $data[ "form_data" ], "form" );
        }
        break;
      case "form":
        if ( !empty( $data[ 'blocks_data' ] ) ) {
          foreach ( $data[ 'blocks_data' ] as $block ) {
            common::get_all_inputs_data( $block, "block" );
          }
        }
        if ( !empty( $data[ 'fieldsets_data' ] ) ) {
          foreach ( $data[ 'fieldsets_data' ] as $fieldset ) {
            common::get_all_inputs_data( $fieldset, "fieldset" );
          }
        }
        if ( !empty( $data[ "inputs_data" ] ) ) {
          common::get_all_inputs_data( $data[ "inputs_data" ], "input" );
        }
        break;
      case "block":
        if ( !empty( $data[ 'children' ] ) ) {
          foreach ( $data[ 'children' ] as $block ) {
            common::get_all_inputs_data( $block, "block" );
          }
        }
        if ( !empty( $data[ "inputs_data" ] ) ) {
          common::get_all_inputs_data( $data[ "inputs_data" ], "input" );
        }
        break;
      case "fieldset":
        if ( !empty( $data[ 'children' ] ) ) {
          foreach ( $data[ 'children' ] as $fieldset ) {
            common::get_all_inputs_data( $fieldset, "fieldset" );
          }
        }
        if ( !empty( $data[ "inputs_data" ] ) ) {
          common::get_all_inputs_data( $data[ "inputs_data" ], "input" );
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

  function autogenerate_id( $attrs, $enable = 'yes' ) {
    //krumo( 'this is auto generator of id' );
    if ( $enable == 'yes'
      and!isset( $attrs[ 'id' ] )or empty( $attrs[ 'id' ] ) ) {
      $attrs[ 'id' ] = $this->random_string( 12 );
    }
    return $attrs;
  }

}