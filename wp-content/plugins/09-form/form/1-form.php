<?php
class form extends data_creator {
  function __construct( $form_id_str ) {
    parent::__construct();
    $this->process_data = $process_data;
    $this->get_form_object( $form_id_str );
    $this->form_data[ 'id' ] = $this->form_obj->id;
    $this->create_form_attrs(); //$this->form_data['attrs']
    $this->create_form_inputs(); //$this->form_data['inputs']
    $this->create_form_blocks(); //$this->form_data['blocks']
    $this->create_form_fieldsets(); //$this->form_data['fieldsets']
    $this->form_data = $this->create_unique_id_data( $this->form_data ); //$this->form_data['unique_id']
    $this->form_data = $this->create_access_data( $this->form_data, $this->form_obj );
    $this->form_data = $this->create_own_data_data( $this->form_data, $this->form_obj );
//krumo($this->vals);
    $this->form_data = $this->create_tag_data( $this->form_data, $this->form_obj ); //$this->form_data['unique_id']
    $this->form_data = $this->create_show_order_data( $this->form_data, $this->form_obj, 'form' );
    /************ submit by Ajax ************/
    if ( strtolower( $this->form_obj->use_ajax ) == 'yes' ) {
      $this->form_data[ 'use_ajax' ] = strtolower( $this->form_obj->use_ajax );
    }
    if ( $this->form_data[ 'use_ajax' ] ) {
      if ( !isset( $_REQUEST[ '__sst__process_id' ] ) ) {
        $ajax_process_id = $_REQUEST[ PROCESS_ID_KEYWORD ];
      } else {
        $ajax_process_id = $_REQUEST[ '__sst__process_id' ];//means its modal
      }
      $this->form_data[ 'tag' ][ 'after' ] .= '<script type="text/javascript">
	  console.log("Use web worker to prevent warning error of Deprecation");
jQuery("body").on("submit", "#'.$this->form_data[ 'attrs' ][ 'id' ].'", function (e) {
    e.preventDefault();
    var form = new FormData(document.getElementById("'.$this->form_data[ 'attrs' ][ 'id' ].'"));
    var url = "'.$this->form_data[ 'attrs' ][ 'action' ].'";
    var method = "POST";
    var xhr = new XMLHttpRequest();
    xhr.open(method, url, true);
    xhr.send(form);
    xhr.onload = function (e) {
      if (xhr.readyState === 4) {
        if (xhr.status === 200) {
          postMessage(xhr.responseText);
          jQuery("#'.$this->form_data[ 'unique_id' ].'").html(xhr.responseText);
        } else {
          console.error(xhr.statusText);
        }
      }
    }
    xhr.onerror = function (e) {
      console.error(xhr.statusText);
    }
});
</script>';
    }
  }


  function get_form_object( $form_id_str ) {
    $form_id = $this->get_ids( $form_id_str, true );
    if ( $this->is_positive_number( $form_id ) ) {
      $this->form_obj = $this->get_by_id( $form_id, $GLOBALS[ 'sst_tables' ][ 'form' ] );
    } else {
      $this->error_log( 'form_id is empty or is not positive int.You have provided:' . $form_id_str );
      return NULL;
    }
  }

  function create_form_attrs() {
    $form_obj = $this->form_obj;
    $attribute_generator = new attribute_generator;
    $attribute_generator->create_multiple_attrs( array(
      'accept' => $form_obj->accept,
      'accept-charset' => $form_obj->accept_charset,
      'action' => $form_obj->action,
      'autocapitalize' => $form_obj->autocapitalize,
      'autocomplete' => $form_obj->autocomplete,
      'enctype' => $form_obj->enctype,
      'method' => $form_obj->method,
      'name' => $form_obj->name,
      'novalidate' => $form_obj->novalidate,
      'target' => $form_obj->target,
    ), 'form' );

    $specific_attributs = $attribute_generator->input_data[ 'attrs' ];

    $global_attributs_obj = new attribute_global_generator( $this->get_ids( $form_obj->attr_html_global_id, true ) );
    $global_attributs_obj->input_data[ 'attrs' ] = $this->autogenerate_id( $global_attributs_obj->input_data[ 'attrs' ], FORM_AUTO_GENERATE_FORM_ID );
    $global_attributs = $global_attributs_obj->input_data[ 'attrs' ];
    $custom_attributs_obj = new attribute_custom_generator( $form_obj->attr_custom_ids );
    $custom_attributs = $custom_attributs_obj->input_data[ 'attrs' ];

    $this->form_data[ 'attrs' ] = array_merge( $specific_attributs, $global_attributs, $custom_attributs );

  }

  function create_form_blocks() {
    $blocks = array();
    $form_obj = $this->form_obj;
    $block_ids = $this->get_ids( $form_obj->block_ids );
    if ( !empty( $block_ids ) ) {
      foreach ( $block_ids as $block_id ) {
        $block_obj = new block( $block_id );
        $blocks[] = $block_obj->block_data;
      }
    }
    $this->form_data[ 'blocks_data' ] = $blocks;
  }

  function create_form_inputs() {
    $inputs = array();
    $form_obj = $this->form_obj;
    $input_ids = $this->get_ids( $form_obj->input_ids );
    if ( !empty( $input_ids ) ) {

      foreach ( $input_ids as $input_id ) {
        $input_obj = new input( $input_id );
        $inputs[] = $input_obj->input_data;
      }
    }
    $this->form_data[ 'inputs_data' ] = $inputs;
  }

  function create_form_fieldsets() {
    $fieldsets = array();
    $form_obj = $this->form_obj;
    $fieldset_ids = $this->get_ids( $form_obj->fieldset_ids );
    if ( !empty( $fieldset_ids ) ) {
      foreach ( $fieldset_ids as $fieldset_id ) {
        $fieldset_obj = new fieldset( $fieldset_id );
        $fieldsets[] = $fieldset_obj->fieldset_data;
      }
    }
    $this->form_data[ 'fieldsets_data' ] = $fieldsets;
  }


  function render( $form_data = NULL ) {
      
    return $this->render_form( $form_data );
  }
}