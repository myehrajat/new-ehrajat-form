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
     **************************************************/
    function add_to_table( string $table, array $column_value, $column_mysql_code = array() ) {
        global $wpdb;

        if ( !is_array( $column_mysql_code ) ) {
            $column_mysql_code = array();
        }
        $column_mysql_code_column = $columns = array_keys( $column_mysql_code );
        if ( is_array( $column_value ) ) {
            if ( !empty( $column_value ) ) {
                $columns = array_keys( $column_value );
                $sql = "INSERT  INTO " . $table . "(`" . implode( '`,`', $columns ) . "`";
                if ( !empty( $column_mysql_code ) ) {
                    $sql .= ',`' . implode( '`,`', $column_mysql_code_column ).'`';
                }
                $sql .= ") VALUES (";
                $sql .= "'" . implode( "','", $column_value ) . "'";
                if ( !empty( $column_mysql_code ) ) {
                    $sql .= ',' . implode( ',', $column_mysql_code );
                }
                $sql .= ")";
				//krm()
                $result = $wpdb->query( $sql );
                if ( $wpdb->last_error !== '' ) {
                    //$wpdb->print_error();
                    $this->error_log( '$this->add_to_table() MYSQL syntax error:' . $wpdb->print_error() );
                    return false;
                } else {
                    return $wpdb->insert_id;
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
            //			krm($table_query);
            $wpdb->query( $table_query );
            if ( $wpdb->last_error !== '' ) {
                echo $GLOBALS[ 'sst_errors' ][ 0 ];
                $wpdb->print_error();
                $this->error_log( 'Creation tables failed due to syntax error.' );
            }
        }
    }

}