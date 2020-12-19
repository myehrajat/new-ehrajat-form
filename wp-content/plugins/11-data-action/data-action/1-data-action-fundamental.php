<?php
class data_action_fundamental extends process {
var $data_actions;
var $vals;
	function __construct( $is_modal = false ) {
    parent::__construct();
    $this->is_modal = $is_modal;
	$this->vals = $GLOBALS[ 'vals' ];
    if ( $this->vals[ '__sst__data_actions' ] ) {
      $this->vals = $GLOBALS[ 'vals' ];
      $this->get_data_actions();
      $this->do_data_actions();
    }
  }
  function get_data_actions() {
    $this->data_actions = array();
    $data_action_ids_str = $this->vals[ '__sst__data_actions' ];
    $data_action_ids = $this->get_ids( $data_action_ids_str );
    foreach ( $data_action_ids as $data_action_id ) {
      $data_action_obj = $this->get_by_id( $data_action_id, $GLOBALS[ 'sst_tables' ][ 'data_action' ] );
      if ( !empty( $data_action_obj ) ) {
        $this->data_actions[] = $data_action_obj;
      } else {
        $this->error_log( 'this data action id cant be retrived:' . $data_action_id );
      }
    }
  }
	
	
}