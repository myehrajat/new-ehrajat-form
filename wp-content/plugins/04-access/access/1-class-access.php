<?php
class access extends database {
  var $visible;
  var $editable;
  var $addable;

  function __construct( $user_access_id ) {
    parent::__construct();
    $this->restrict_access( $user_access_id );
  }


  function restrict_access( $user_access_id_str ) {
    $this->visible = 'no';
    $this->editable = 'no';
    $this->addable = 'no';
    $this->deletable = 'no';

    $user_access_id = $this->get_ids( $user_access_id_str, true );
    if ( !empty( $user_access_id ) ) {
      $this->user_access_obj = $this->get_by_id( $user_access_id, $GLOBALS[ 'sst_tables' ][ 'user_access' ] );
      if ( !empty( $this->user_access_obj ) ) {
		  
/**************************

 __     __  _         _   _       _        
 \ \   / / (_)  ___  (_) | |__   | |   ___ 
  \ \ / /  | | / __| | | | '_ \  | |  / _ \
   \ V /   | | \__ \ | | | |_) | | | |  __/
    \_/    |_| |___/ |_| |_.__/  |_|  \___|
                                           

********************/
		  
		  
		  
		  
		  
		  
        $default_view = strtolower( $this->user_access_obj->default_view );
        $except_view = $this->get_ids( $this->user_access_obj->except_view );
        if ( $default_view != 'enable'
          and $default_view != 'disable' ) {
          if ( DEFAULT_VIEW == 'enable'
            and DEFAULT_VIEW == 'disable' ) {
            $default_view = DEFAULT_VIEW;
          } else {
            $this->error_log( 'default_view must match enable or disable.' );
          }
        }
        switch ( $default_view ) {
          case 'enable':
            if ( in_array( $this->user_id, $except_view ) ) {
              $this->visible = 'no';
            } else {
              $this->visible = 'yes';
            }
            break;
          case 'hide':
            if ( in_array( $this->user_id, $except_view ) ) {
              $this->visible = 'yes';
            } else {
              $this->visible = 'no';
            }
            break;
          default:
            $this->error_log( 'default_view is incorect even default_view in config is incorect. For scurity reason we set it to false' );
            $this->visible = 'no';
            break;
        }


        /*************************				
        				
        				
  _____       _   _   _             _       _        
 | ____|   __| | (_) | |_    __ _  | |__   | |   ___ 
 |  _|    / _` | | | | __|  / _` | | '_ \  | |  / _ \
 | |___  | (_| | | | | |_  | (_| | | |_) | | | |  __/
 |_____|  \__,_| |_|  \__|  \__,_| |_.__/  |_|  \___|
                                                     
        	*********************/
        $default_edit = strtolower( $this->user_access_obj->default_edit );
        $except_edit = $this->get_ids( $this->user_access_obj->except_edit );
        if ( $default_edit != 'enable'
          and $default_edit != 'disable' ) {
          if ( DEFAULT_EDIT == 'enable'
            and DEFAULT_EDIT == 'disable' ) {
            $default_edit = DEFAULT_EDIT;
          } else {
            $this->error_log( 'DEFAULT_EDIT must match enable or disable.' );
          }
        }
        switch ( $default_edit ) {
          case 'enable':
            if ( in_array( $this->user_id, $except_edit ) ) {
              $this->editable = 'no';
            } else {
              $this->editable = 'yes';
            }
            break;
          case 'disable':
            if ( in_array( $this->user_id, $except_edit ) ) {
              $this->editable = 'yes';
            } else {
              $this->editable = 'no';
            }
            break;
          default:
            $this->error_log( 'default_edit is incorect even default_edit in config is incorect. For security reason set it to false' );
            $this->editable = 'no';
            break;
        }
        /*********************
		
	 _          _       _           _       _        
    / \      __| |   __| |   __ _  | |__   | |   ___ 
   / _ \    / _` |  / _` |  / _` | | '_ \  | |  / _ \
  / ___ \  | (_| | | (_| | | (_| | | |_) | | | |  __/
 /_/   \_\  \__,_|  \__,_|  \__,_| |_.__/  |_|  \___|
******************************/

        $default_add = strtolower( $this->user_access_obj->default_add );
        $except_add = $this->get_ids( $this->user_access_obj->except_add );
        if ( $default_add != 'enable'
          and $default_add != 'disable' ) {
          if ( DEFAULT_ADD == 'enable'
            and DEFAULT_ADD == 'disable' ) {
            $default_add = DEFAULT_ADD;
          } else {
            $this->error_log( 'DEFAULT_ADD must match enable or disable.' );
          }
        }
        switch ( $default_add ) {
          case 'enable':
            if ( in_array( $this->user_id, $except_add ) ) {
              $this->addable = 'no';
            } else {
              $this->addable = 'yes';
            }
            break;
          case 'disable':
            if ( in_array( $this->user_id, $except_add ) ) {
              $this->addable = 'yes';
            } else {
              $this->addable = 'no';
            }
            break;
          default:
            $this->error_log( 'default_add is incorect even default_edit in config is incorect. For security reason set it to false' );
            $this->addable = 'no';
            break;
        }

        /*****************************
		
		
		
  ____           _          _             _       _        
 |  _ \    ___  | |   ___  | |_    __ _  | |__   | |   ___ 
 | | | |  / _ \ | |  / _ \ | __|  / _` | | '_ \  | |  / _ \
 | |_| | |  __/ | | |  __/ | |_  | (_| | | |_) | | | |  __/
 |____/   \___| |_|  \___|  \__|  \__,_| |_.__/  |_|  \___|
                                                           
		
		
		
		
        *********************/


        $default_delete = strtolower( $this->user_access_obj->default_delete );
        $except_delete = $this->get_ids( $this->user_access_obj->except_delete );
        if ( $default_delete != 'enable'
          and $default_delete != 'disable' ) {
          if ( DEFAULT_DELETE == 'enable'
            and DEFAULT_DELETE == 'disable' ) {
            $default_delete = DEFAULT_DELETE;
          } else {
            $this->error_log( 'DEFAULT_ADD must match enable or disable.' );
          }
        }
        switch ( $default_delete ) {
          case 'enable':
            if ( in_array( $this->user_id, $except_delete ) ) {
              $this->deletable = 'no';
            } else {
              $this->deletable = 'yes';
            }
            break;
          case 'disable':
            if ( in_array( $this->user_id, $except_delete ) ) {
              $this->deletable = 'yes';
            } else {
              $this->deletable = 'no';
            }
            break;
          default:
            $this->error_log( 'default_add is incorect even default_edit in config is incorect. For security reason set it to false' );
            $this->deletable = 'no';
            break;
        }


      } else {
        $this->error_log( 'user_access_id cant fitnd its obj.' );
        return NULL;
      }
    } else {
      $this->error_log( 'user_access_id after proceesing return empty id. You have provided this id:' . $user_access_id_str . ' .' );
      return NULL;
    }

  }
}