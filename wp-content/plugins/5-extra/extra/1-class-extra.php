<?php
class extra extends database {
	var $extra_add_controller;
	var $extra_remove_controller;
    function __construct( $extra,$unique_id ) {
        parent::__construct();	
        $this->jquery_enqueued();
        $this->extra( $extra ,$unique_id );
    }
    function extra( $extra ,$unique_id) {
        $add_random_id = $this->random_string( 12 );
        $remove_random_id = $this->random_string( 12 );
        if ( $extra > 0 ) {
            $this->extra_add_controller = '<input type="image" src="' . EXTRA_PLUGIN_ADD_ICON_URL . '" id="' . $add_random_id . '" alt="Add New">';
            $this->extra_remove_controller = '<input type="image" src="' . EXTRA_PLUGIN_REMOVE_ICON_URL . '" id="' . $remove_random_id . '" alt="Remove">';
            ?>
			<script>
			(function($){

				jQuery(document).ready(function(){
					jQuery("#<?php echo $remove_random_id; ?>").hide();						
					jQuery.noConflict();
					jQuery("#<?php echo $add_random_id; ?>").click(function(){
						var inputs = jQuery("sst-input[id='<?php echo $unique_id; ?>']");
						var lastIndex = inputs.length - 1;
						var input = inputs.last();
						/*you can add even more*/
						if(inputs.length < <?php echo $extra; ?>){
						  // console.log(input[0].outerHTML);
							var hidedInput = jQuery(input[0].outerHTML).insertAfter(input[0]).hide();
							//alert(input[0].outerHTML);

							hidedInput.show(300);
							jQuery("#<?php echo $remove_random_id; ?>").fadeIn(300);	
						/*you added the last*/
						}else if(inputs.length == <?php echo $extra; ?>){
							var hidedInput = jQuery(input[0].outerHTML).insertAfter(input[0]).hide();
							hidedInput.show(300);
							jQuery("#<?php echo $add_random_id; ?>").hide(200);
							jQuery("#<?php echo $remove_random_id; ?>").fadeIn(300);	
						}
					});
					
					jQuery("#<?php echo $remove_random_id; ?>").click(function(){
						var input = jQuery("sst-input[id='<?php echo $unique_id; ?>']");
						/* you can delete more*/
						if(input.length>2){
							input.last().fadeOut(200,function() { input.last().remove() ; });
							jQuery("#<?php echo $remove_random_id; ?>").fadeIn(300);	
						}else if(input.length==2){
							input.last().fadeOut(200,function() { input.last().remove() ; });
							jQuery("#<?php echo $remove_random_id; ?>").hide();
						}
						jQuery("#<?php echo $add_random_id; ?>").fadeIn(300);
					});
				});

			})(jQuery);
			</script>
			<?php
		}
	}

	function jquery_enqueued() {
		add_action( 'wp_enqueue_scripts', 'load_jquery' );
	}
}

function load_jquery() {
    if ( !wp_script_is( 'jquery', 'enqueued' ) ) {
        wp_enqueue_script( 'jquery' );
    }
}