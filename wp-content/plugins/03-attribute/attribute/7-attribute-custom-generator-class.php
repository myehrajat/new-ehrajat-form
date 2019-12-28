<?php
interface attribute_custom_generator_interface {
	function create_custom_attrs(string $custom_attr_ids);	
}
class attribute_custom_generator extends attribute_global_generator implements attribute_custom_generator_interface {
    function __construct(string $custom_attr_ids = NULL ) {
				parent::__construct();

		$this->create_custom_attrs($custom_attr_ids);
    }
	function create_custom_attrs($custom_attr_ids){
        $custom_attr_ids_arr = $this->get_ids( $custom_attr_ids );
        if ( !empty( $custom_attr_ids_arr ) ) {
            foreach ( $custom_attr_ids_arr as $custom_id ) {
                $custom_obj = $this->get_by_id( $custom_id, $GLOBALS[ 'sst_tables' ][ 'attr_custom' ] );
                if ( !empty( $custom_obj ) ) {
                    $custom_attr_arr[ $custom_obj->attr_name ] = $custom_obj->attr_value;
                } else {
                    $this->error_log( 'custom attr object cant retrieve.' );
                }
            }

            $this->create_multiple_attrs( $custom_attr_arr ,'custom');
        } else {
            $this->input_data[ 'attrs' ] = array();
            return $this->input_data[ 'attrs' ];
        }
	}
}
