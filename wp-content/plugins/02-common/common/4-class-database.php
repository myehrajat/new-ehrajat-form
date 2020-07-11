<?php
interface database_interface {
  function full_prefix();

  function collate_charset();

  function check_is_in_table( $arr, $table, $exclude_to_check_arr = NULL );

  function add_to_table( string $table, array $column_value );

  function drop_tables();

  function create_tables( array $sql_array );
}
class database extends common
implements database_interface {

  protected $collate_charset;
  protected $full_prefix;

  function __construct() {
    parent::__construct();
    $this->full_prefix();
    $this->collate_charset();
  }

  function full_prefix() {
    global $wpdb;
    $this->full_prefix = $wpdb->prefix . DBPREFIX;
  }
  /**************************************************
   *version 1.0.0
   *this function set collate and and follow the configuration rules
   **************************************************/
  function collate_charset() {
    global $wpdb;
    if ( $wpdb->has_cap( 'set_charset' ) ) {
      if ( !empty( $wpdb->charset )and OVERRIDE_CHARSET == false ) {
        $set_charset = " CHARACTER SET " . $wpdb->charset . " ";
      } else {
        $set_charset = " CHARACTER SET " . CHARSET . " ";
      }
    }
    if ( $wpdb->has_cap( 'collation' ) ) {
      if ( !empty( $wpdb->collate )and OVERRIDE_COLLATION == false ) {
        $collate = " COLLATE " . $wpdb->collate . " ";
      } else {
        $collate = " COLLATE " . COLLATION . " ";
      }
    }
    $this->collate_charset = $set_charset . $collate;
    return $set_charset . $collate;

  }
  /**************************************************
  *version 1.0.0
  *this function check the existence of cols and related values in a specific table
  $arr = array key as column & array value as column value
  **************************************************/
  function check_is_in_table( $arr, $table, $exclude_to_check_arr = NULL ) {
    global $wpdb;
    if ( $exclude_to_check_arr ) {
      foreach ( $exclude_to_check_arr as $exclude_to_check ) {
        unset( $arr[ $exclude_to_check ] );
      }
    }
    //k reperesnt column and v represent value
    foreach ( $arr as $k => $v ) {
      $arr_keys[] = $k;
    }
    $i = 0;
    $sql .= "SELECT * FROM `" . $table . "` WHERE ";
    foreach ( $arr as $one_var ) {
      $sql .= "`" . $arr_keys[ $i ] . "`=";
      $sql .= "'" . $one_var . "' AND ";
      $i++;
    }
    $sql .= "1=1 LIMIT 1";
    $result = $wpdb->get_results( $sql );
    if ( !empty( $result ) ) {
      return true;
    } else {
      if ( $wpdb->last_error ) {
        $this->error_log( 'check_is_in_table() MYSQL syntax error:' . $wpdb->print_error() );
        return false;
      } else {
        return false;
      }
    }
  }
  /**************************************************
     *version 1.0.0
     *this function is for adding to table
	 $prevent_insert_rule param => sql query and only for value use {column_name} format this function automatically replace it with 'value' note: no need qoutation
  **************************************************/
  function add_to_table( string $table, array $column_value, $column_mysql_code = array(), $prevent_insert_rule_ids = NULL ) {
    //krumo($vals);
    global $wpdb;
    if ( !is_array( $column_mysql_code ) ) {
      $column_mysql_code = array();
    }
    $column_mysql_code_column = $columns = array_keys( $column_mysql_code );
    if ( is_array( $column_value ) ) {
      $prevent_insert_rule_ids = $this->get_ids( $prevent_insert_rule_ids );
      if ( !empty( $prevent_insert_rule_ids ) ) {
		  //krumo($prevent_insert_rule_ids);
        foreach ( $prevent_insert_rule_ids as $prevent_insert_rule_id ) {
          $prevent_insert_rule_obj = $this->get_by_id( $prevent_insert_rule_id, $GLOBALS[ 'sst_tables' ][ 'data_action_prevent_insert_rule' ] );
          $mysql_rule = $prevent_insert_rule_obj->mysql_rule;
			
          $php_rule = $prevent_insert_rule_obj->php_rule;
          if ( !empty( $php_rule ) ) {
            $php_rule_check_change = $php_rule;
            foreach ( $column_value as $column => $value ) {
              //$php_rule = str_replace( '{col-name:' . $column . "}", '$column_value["' . $column . '"]', $php_rule );
              $php_rule = str_replace( '{col-value:' . $column . "}", '"' . $value . '"', $php_rule );
              //$php_rule = str_replace( '{col-name:'  . $column . "}", '"' . $value . '"', $php_rule );
            }
            if ( $php_rule != $php_rule_check_change) {
              $ecode = 'if(' . $php_rule . '){return true;}else{return false;}';
              $php_res = $this->run_eval( $ecode );
              if ( $php_res == true ) {
				  //'PHP ERROR :' .
                return array( 'result' => false, 'html_error' =>  $prevent_insert_rule_obj->prevented_result_html );
              }
            }
          }
          if ( empty( $prevent_insert_rule_obj->mysql_table ) ) {
            $mysql_rule_table = $table;
          } else {
            $mysql_rule_table = $prevent_insert_rule_obj->mysql_table;
          }
          if ( !empty( $mysql_rule ) ) {
            $mysql_rule_check_change = $mysql_rule;
            foreach ( $column_value as $column => $value ) {
              $mysql_rule = str_replace( "{" . $column . "}", "'" . $value . "'", $mysql_rule );
            }
            if ( $mysql_rule_check_change != $mysql_rule ) {
              $mysql_rule_query = "SELECT * FROM " . $mysql_rule_table . " WHERE " . $mysql_rule . " LIMIT 1;";

              if ( !empty( $wpdb->get_row( $mysql_rule_query ) ) ) {
				  //'MYSQL ERROR :' . 
                return array( 'result' => false, 'html_error' => $prevent_insert_rule_obj->prevented_result_html );
              }
            }
          }

        }
        $columns = array_keys( $column_value );
        $sql = "INSERT  INTO " . $table . "(`" . implode( '`,`', $columns ) . "`";
        if ( !empty( $column_mysql_code ) ) {
          $sql .= ',`' . implode( '`,`', $column_mysql_code_column ) . '`';
        }
        $sql .= ") VALUES (";
        $sql .= "'" . implode( "','", $column_value ) . "'";
        if ( !empty( $column_mysql_code ) ) {
          $sql .= ',' . implode( ',', $column_mysql_code );
        }
        $sql .= ")";
        $result = $wpdb->query( $sql );
        if ( $wpdb->last_error !== '' ) {
          //$wpdb->print_error();
          debug::error_log( '$this->add_to_table() MYSQL syntax error:' . $wpdb->print_error() );
          return array( 'result' => false );
        } else {
          return array( 'result' => true, 'insert_id' => $wpdb->insert_id );
        }
      } else {
        debug::error_log( 'column_value must Not be empty!' );
        return array( 'result' => false );
      }
    } else {
      debug::error_log( 'column_value must be array!' );
      return array( 'result' => false );
    }
  }

  /**************************************************
   *version 1.0.0
   *this function is for adding to table
   **************************************************/
  function update_data_record( string $table, array $column_value, string $where_clause, $column_mysql_code = array() ) {
    global $wpdb;
    if ( !is_array( $column_mysql_code ) ) {
      $column_mysql_code = array();
    }
    if ( is_array( $column_value ) ) {
      if ( !empty( $column_value ) ) {
        $sql = "UPDATE " . $table . " ";
        foreach ( $column_value as $column => $value ) {
          $data[] = "`" . $column . "`='" . $value . "'";
        }
        if ( !empty( $column_mysql_code ) ) {
          foreach ( $column_mysql_code as $column => $value ) {
            $data[] = "`" . $column . "`=" . $value . "";
          }
        }
        $sql .= implode( ',', $data );
        $sql .= " WHERE ";
        $sql .= $where_clause;

        $result = $wpdb->query( $sql );
        if ( $wpdb->last_error !== '' ) {
          //$wpdb->print_error();
          $this->error_log( '$this->update_data_record() MYSQL syntax error:' . $wpdb->print_error() );
          return false;
        } else {

          return true;
        }
      } else {
        $this->error_log( 'column_value must Not be empty!' );
      }
    } else {
      $this->error_log( 'column_value must be array!' );
    }
  }
  /**************************************************
   *version 1.0.0
   *this function drop core tables
   **************************************************/

  function drop_tables() {
    global $wpdb;
    if ( DROP_ON_DEACTIVATION === True ) {
      if ( DONT_DROP_VALS === True ) {
        unset( $GLOBALS[ 'sst_tables' ][ 'vals' ] );
      }
      foreach ( $GLOBALS[ 'sst_tables' ] as $table_query ) {
        $wpdb->query( "DROP TABLE IF EXISTS `" . $table_query . "`;" );
        if ( $wpdb->last_error !== '' ) {
          echo $GLOBALS[ 'sst_errors' ][ 0 ];
          $wpdb->print_error();
          $this->error_log( 'Dropping tables failed due to syntax error.' );
        }
      }
    }
  }

  function create_tables( array $sql_array ) {
    global $wpdb;
    foreach ( $sql_array as $table_query ) {
      $wpdb->query( $table_query );
      if ( $wpdb->last_error !== '' ) {
        echo $GLOBALS[ 'sst_errors' ][ 0 ];
        $wpdb->print_error();
        $this->error_log( 'Creation tables failed due to syntax error.' );
      }
    }
  }

  function create_add_column( $table, $column = 'save_id', $datatype = 'VARCHAR(255)' ) {
    global $wpdb;
    if ( $this->column_exists( $table, $column ) == false ) {
      $q = 'ALTER TABLE `' . $table . '` ADD `' . $column . '` ' . $datatype . ';';
      $wpdb->query( $q );
    }

    //ALTER TABLE table_name ADD column_name datatype;
  }

  function column_exists( $table, $column ) {
    global $wpdb;
    $q = 'SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=\'' . DB_NAME . '\' AND TABLE_NAME=\'' . $table . '\' AND COLUMN_NAME=\'' . $column . '\' LIMIT 1;';
    $result = $wpdb->get_results( $q );
    if ( empty( $result ) ) {
      return false;
    } else {
      return true;
    }
  }
}