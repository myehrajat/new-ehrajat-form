<?php
class register_addon extends database {
	function __construct(){
				parent::__construct();

		$this->auto_register();
	}
  function auto_register() {

    $addons = glob( INPUT_ADDON_PATH . '*', GLOB_ONLYDIR );
    foreach ( $addons as $addon ) {
      $addon_files = glob( $addon . '/*.php' );
      if ( $addon_files ) {
        foreach ( $addon_files as $addon_file ) {
          include_once( $addon_file );
			/*checking is including correct file 
			$sst used for defining input
			*/
          if ( isset( $sst ) ) {
            //checking is it before registered
            if ( $this->check_is_in_table( array( 'function' => $sst[ 'function' ] ), $GLOBALS[ 'sst_tables' ][ 'input_type' ] ) === false ) {
              $this->register_field_type( $sst[ 'html_type' ], $sst[ 'type' ], $sst[ 'function' ], $sst[ 'epithet' ], $sst[ 'description' ], $sst[ 'slug' ], $sst[ 'owner' ], $sst[ 'id' ] );
            }
            unset( $sst );
          }
        }
      }
    }
  }
  /**************************************************
   *version 1.0.0
   *this for process of creating inputs
   **************************************************/
  function register_field_type( string $html_type, string $type, $function, $epithet = NULL, $description = NULL, $slug = NULL, $owner = NULL, $id = NULL ) {
    
	$reg = $this->add_to_table( $GLOBALS[ 'sst_tables' ][ 'input_type' ], array( 'id' => $id, 'epithet' => $epithet, 'slug' => $slug, 'html_type' => $html_type, 'type' => $type, 'function' => $function, 'description' => $description, 'owner' => $owner, 'created' => date( 'Y-m-d H:i:s' ), 'modified' => date( 'Y-m-d H:i:s' ) ) );
	  if($reg['result']==true){
		  return $reg['insert_id'];
	  }else{
		  return false;
	  }
  }

}