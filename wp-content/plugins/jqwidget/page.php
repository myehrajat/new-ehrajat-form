<?php
/*
jqwidget_obj
    |
    -----behavior_obj
    |    |
    |    -----columngroups_ids
    |    |       |
    |    |       -----parentgroup_id
    |    |
    |    -----columns_ids
    |    |       |
    |    |       -----columngroup_id
    |    |       |
    |    |       -----datafield_id
    |    |
    |    -----rowdetailstemplate_obj
    |    |
    |    -----source_dataadapter_id
    |            |
    |            -----source_id
    |            |      |
    |            |      -----datafields_obj(s)
    |            |
    |            -----settings_id
    |
    |
    -----appearance_obj
    |
    -----layout_obj




*/
class jqwidget extends database {
  var $jqwidget_obj;
  //top table jqwidget_obj
  var $appearance_obj;
  //top table jqwidget_obj
  var $behavior_obj;
  //top table behavior_obj
  var $columns_objs;
  //top table behavior_obj
  var $columngroups_objs;
  //top table jqwidget_obj
  var $layout_obj;
  //top table jqwidget_obj
  var $dataadapter_obj;
  //top table source_obj
  var $datafields_objs;
  //top table dataadapter_obj
  var $settings_obj;
  //top table dataadapter_obj
  var $source_obj;

  var $deferreddatafields_names;
  var $groups_names;
  var $rowdetailstemplate_obj;
  var $val_type_function;

  function __construct( $jq_id ) {
    //parent::__construct();
    $this->val_type_function = array( 'columnmenuopening', 'columnmenuclosing', 'cellhover', 'groupsrenderer', 'groupcolumnrenderer', 'handlekeyboardnavigation', 'pagerrenderer', 'scrollfeedback', 'filter', 'initrowdetails', 'ready', 'rendered', 'renderstatusbar', 'rendertoolbar', 'rendergridrows', /**columns function***/ 'cellsrenderer', 'rendered', 'validation', 'createwidget', 'initwidget', 'createfilterwidget', 'createfilterpanel', 'initeditor', 'createeditor', 'destroyeditor', 'cellbeginedit', 'cellendedit', 'cellvaluechanging', 'createeverpresentrowwidget', 'initeverpresentrowwidget', 'reseteverpresentrowwidgetvalue', 'geteverpresentrowwidgetvalue', 'destroyeverpresentrowwidget', 'validateeverpresentrowwidgetvalue' );
    $this->sst_get_jq_objs( $jq_id );

    $this->sst_prep();

  }

  function sst_get_jq_objs( $jq_id ) {

    $this->jqwidget_obj = $this->get_by_id( $jq_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget' ] );
    if ( !$this->jqwidget_obj ) {
      return;
    }
    /**************/
    $this->appearance_obj = $this->get_by_id( $this->jqwidget_obj->appearance_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_appearance' ] );
    /**************/
    $this->layout_obj = $this->get_by_id( $this->jqwidget_obj->layout_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_layout' ] );
    /**************/
    $this->behavior_obj = $this->get_by_id( $this->jqwidget_obj->behavior_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_behavior' ] );
    if ( !$this->behavior_obj ) {
      return;
    }

    /**************/
    $this->dataadapter_obj = $this->get_by_id( $this->behavior_obj->source_dataadapter_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_dataadapter' ] );
    if ( !$this->dataadapter_obj ) {
      return;
    }

    /**************/
    $columns_ids = $this->get_ids( $this->behavior_obj->columns_ids );
    if ( !empty( $columns_ids ) ) {
      foreach ( $columns_ids as $columns_id ) {
        $this->columns_objs[ $columns_id ] = $this->get_by_id( $columns_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_columns' ] );
      }
    } else {
      $this->error_log( 'columns_objs for jqwidget can\'t be empty.' );
      return;

    }
    /**************/
    $columngroups_ids = $this->get_ids( $this->behavior_obj->columngroups_ids );
    if ( !empty( $columngroups_ids ) ) {
      foreach ( $columngroups_ids as $columngroups_id ) {
        $this->columngroups_objs[ $columns_id ] = $this->get_by_id( $columngroups_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_columngroups' ] );
      }
    }
    /**************/
    $this->source_obj = $this->get_by_id( $this->dataadapter_obj->source_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_source' ] );
    if ( !$this->source_obj ) {
      return;
    }
    /**************/
    $datafields_ids = $this->get_ids( $this->source_obj->datafields_ids );
    if ( !empty( $datafields_ids ) ) {
      foreach ( $datafields_ids as $datafields_id ) {
        $this->datafields_objs[ $datafields_id ] = $this->get_by_id( $datafields_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_datafields' ] );
      }
    } else {
      $this->error_log( 'datafields_objs for jqwidget can\'t be empty.' );
      return;

    }
    /**************/
    $this->settings_obj = $this->get_by_id( $this->dataadapter_obj->settings_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_settings' ] );
    /**************/
    $deferreddatafields_ids = $this->get_ids( $this->layout_obj->deferreddatafields_ids );
    if ( !empty( $deferreddatafields_ids ) ) {
      foreach ( $deferreddatafields_ids as $deferreddatafields_id ) {
        $this->deferreddatafields_names[ $deferreddatafields_id ] = $this->datafields_objs[ $deferreddatafields_id ]->name;
      }
    }
    /**************/
    $groups_ids = $this->get_ids( $this->behavior_obj->groups_ids );
    if ( !empty( $groups_ids ) ) {
      foreach ( $groups_ids as $groups_id ) {
        $this->groups_names[ $groups_id ] = $this->datafields_objs[ $groups_id ]->name;
      }
    }
    /**************/
    $this->rowdetailstemplate_obj = $this->get_by_id( $this->behavior_obj->rowdetailstemplate_id, $GLOBALS[ 'sst_tables' ][ 'jqwidget_rowdetailstemplate' ] );
  }

  function sst_prep() {
    if ( !$this->jqwidget_obj or!$this->behavior_obj or!$this->dataadapter_obj or!$this->columns_objs or!$this->source_obj or!$this->datafields_objs or!$this->datafields_objs ) {
      return;
    }
    $js .= '<script type="text/javascript">
    jQuery(document).ready(function ($) {';
    $js .= 'jQuery("#' . 'grid' . '").jqxGrid({';
    $js .= '/*appearance part*/';
    foreach ( $this->appearance_obj as $appearance_prop => $appearance_val ) {
      $js .= $this->sst_num_or_str_for_js( $appearance_prop, $appearance_val );
    }
    $js .= '/*layout part*/';
    foreach ( $this->layout_obj as $layout_prop => $layout_val ) {
      $js .= $this->sst_num_or_str_for_js( $layout_prop, $layout_val );
    }
    $js .= '/*behavior part*/';
    foreach ( $this->behavior_obj as $behavior_prop => $behavior_val ) {
      switch ( $behavior_prop ) {
        case 'columngroups_ids':
          $js .= '/*behavior part columngroups subpart*/';
          $js .= 'columngroups:[';
          foreach ( $this->columngroups_objs as $columngroups_obj ) {
            $js .= '{';
            foreach ( $columngroups_obj as $columngroups_prop => $columngroups_val ) {
              if ( $columngroups_prop != 'parentgroup_id' ) {
                $js .= $this->sst_num_or_str_for_js( $columngroups_prop, $columngroups_val );
              } else {
                $parentgroup_obj = $this->get_by_id( $columngroups_val, $GLOBALS[ 'sst_tables' ][ 'jqwidget_columngroups' ] );
                if ( $parentgroup_obj ) {
                  $js .= $this->sst_num_or_str_for_js( 'parentgroup', $parentgroup_obj->name );
                }
              }
            }
            $js .= '}';
          }
          $js .= '],';
          break;

        case 'columns_ids':
          $js .= '/*behavior part columns subpart*/';
          $js .= 'columns:[';
          foreach ( $this->columns_objs as $columns_obj ) {
            $js .= '{';
            foreach ( $columns_obj as $columns_prop => $columns_val ) {
              switch ( $columns_prop ) {
                case 'columngroup_id':
                  $columngroup_obj = $this->get_by_id( $columns_val, $GLOBALS[ 'sst_tables' ][ 'jqwidget_columngroups' ] );
                  if ( $columngroup_obj ) {
                    $js .= $this->sst_num_or_str_for_js( 'columngroup', $columngroup_obj->name );
                  }
                  break;
                case 'datafield_id':
                  $js .= $this->sst_num_or_str_for_js( 'datafield', $this->datafields_objs[ $columns_val ]->name );
                  break;
                default:
                  $js .= $this->sst_num_or_str_for_js( $columns_prop, $columns_val );
                  break;
              }
            }
            $js .= '},';
          }
          $js .= '],';
          break;
        case 'groups_ids':
          if ( !empty( $this->groups_names ) ) {
            $js .= '/*behavior part groups subpart*/';
            $js .= 'groups' . ":['" . implode( "','", $this->groups_names ) . "']" . ",";
          }
          break;
        case 'rowdetailstemplate_id':
          $js .= '/*behavior part rowdetailstemplate subpart*/';

          $js .= 'rowdetailstemplate' . ":{";
          if ( !empty( $this->rowdetailstemplate_obj->rowdetails ) ) {
            $js .= $this->sst_num_or_str_for_js( 'rowdetails', $this->rowdetailstemplate_obj->rowdetails );
          }
          if ( !empty( $this->rowdetailstemplate_obj->rowdetailsheight ) ) {
            $js .= $this->sst_num_or_str_for_js( 'rowdetailsheight', $this->rowdetailstemplate_obj->rowdetailsheight );
          }
          $js .= "}" . ",";
          break;
        case 'source_dataadapter_id':
          $js .= '/*behavior part source_dataadapter subpart*/';
          $js .= 'source:new jQuery.jqx.dataAdapter({';
          foreach ( $this->source_obj as $source_prop => $source_val ) {
            switch ( $source_prop ) {
              case "datafields_ids":
                $js .= "datafields:[";
                foreach ( $this->datafields_objs as $datafields_obj ) {
                  $js .= "{";
                  foreach ( $datafields_obj as $datafields_prop => $datafields_val ) {
                    $js .= $this->sst_num_or_str_for_js( $datafields_prop, $datafields_val );
                  }
                  $js .= "},";
                }
                $js .= "],";
                break;
              case "the_id":
                $js .= $this->sst_num_or_str_for_js( 'the_id', $source_val );
                break;
              case "url":
                if ( !empty( $source_val ) ) {
                  $js .= $this->sst_num_or_str_for_js( $source_prop, $source_val );
                }else{
                  $js .= $this->sst_num_or_str_for_js( $source_prop, JQW_JSON );
                }
                break;
              case "data_ids":
                if(1==1){
                     $js .= 'data:{';
                     $js .= $this->sst_num_or_str_for_js( 'query', openssl_encrypt( $this->jqwidget_obj->query, "AES-128-ECB", JQW_JS_PASSWORD ));
                     $js .= $this->sst_num_or_str_for_js( 'rows_eval',  openssl_encrypt( $this->jqwidget_obj->eval, "AES-128-ECB", JQW_JS_PASSWORD ) );
                    $js .= 'datafields:';
                    $temp .= '[';
                    foreach($this->datafields_objs as $datafields_obj){
                        $url_data_datafield['dbcol'] = $datafields_obj->dbcol;
                        $url_data_datafield['gridcol'] = $datafields_obj->name;
                        $url_data_datafield['eval'] = $datafields_obj->eval;
                        $all_url_data_datafields[]= json_encode($url_data_datafield);
                    }
                    $temp .= implode(",",$all_url_data_datafields);
                    $temp .= ']';
                     $js .= "'".openssl_encrypt( $temp, "AES-128-ECB", JQW_JS_PASSWORD ) . "'";
                     $js .=',';
                     $js .= '},';
                }else{
                    #TODO
                }
                break;
              default:
                $js .= $this->sst_num_or_str_for_js( $source_prop, $source_val );
                break;
            }
          }
          $js .= '},{';
          foreach ( $this->settings_obj as $settings_prop => $settings_val ) {
            $js .= $this->sst_num_or_str_for_js( $settings_prop, $settings_val );
          }
          $js .= '}),';
          break;
        default:
          $js .= $this->sst_num_or_str_for_js( $behavior_prop, $behavior_val );
          break;
      }
    }
    $js .= '});';
    $js .= '});</script><div id="grid"></div>';
    echo $js;
  }

  function sst_num_or_str_for_js( $prop, $val ) {
    if ( !empty( $val )and $prop != 'id'
      and $prop != 'epithet'
      and $prop != 'slug'
      and $prop != 'description'
      and $prop != 'owner'
      and $prop != 'created'
      and $prop != 'modified' ) {
      if ( $prop == 'the_id' ) {
        $prop = 'id';
      }
      if ( is_numeric( $val )or in_array( $prop, $this->val_type_function ) ) {
        return $prop . ":" . $val . ",";
      } else {
        return $prop . ":" . "'" . $val . "',";
      }
    }
  }
}