<?php
/*
Special Thanks for https://github.com/ajaxorg/ace-builds/
*/
/**************************************************
 *version 1.0.0
 *these are some options for user to setup
 **************************************************/
//Demo:https://ace.c9.io/build/kitchen-sink.html
$sst[ 'html_type' ] = 'hidden';
$sst[ 'type' ] = 'code-editor';
$sst[ 'function' ] = 'sst_code_editor';
$sst[ 'epithet' ] = 'Code Editor';
$sst[ 'description' ] = 'This is code editor by Ace editor!';
$sst[ 'slug' ] = 'code_editor';
$sst[ 'owner' ] = 'Ehrajat';
$sst[ 'id' ] = 25;
//Config: https://github.com/ajaxorg/ace/wiki/Configuring-Ace 
function sst_code_editor( $input_data_json, $process_data_json=NULL ) {
    $input_data = data_decoder( $input_data_json, true );
    $p = explode( '/', path2url( __FILE__, $_SERVER[ 'REQUEST_SCHEME' ] ) );
    array_pop( $p );
    $base_url = implode( '/', $p );
    $all_to_include[] = '/ace-builds/src-noconflict/ace.js';
    if ( isset( $input_data[ 'meta' ][ 'enableSnippets' ] ) ) {
        if ( $input_data[ 'meta' ][ 'enableSnippets' ] == 'true' ) {
            $all_to_include[] = '/ace-builds/src-noconflict/ext-language_tools.js';
        }
    } elseif ( isset( $input_data[ 'meta' ][ 'enableLiveAutocompletion' ] ) ) {
        if ( $input_data[ 'meta' ][ 'enableLiveAutocompletion' ] == 'true' ) {
            $all_to_include[] = '/ace-builds/src-noconflict/ext-language_tools.js';
        }
    } elseif ( isset( $input_data[ 'meta' ][ 'enableBasicAutocompletion' ] ) ) {
        if ( $input_data[ 'meta' ][ 'enableBasicAutocompletion' ] == 'true' ) {
            $all_to_include[] = '/ace-builds/src-noconflict/ext-language_tools.js';
        }
    }
    if ( isset( $input_data[ 'meta' ][ 'enableEmmet' ] ) ) {
        if ( $input_data[ 'meta' ][ 'enableEmmet' ] == 'true' ) {
            $all_to_include[] = '/ace-builds/src-noconflict/ext-emmet.js';
        }
    }
    if ( isset( $input_data[ 'meta' ][ 'useElasticTabstops' ] ) ) {
        if ( $input_data[ 'meta' ][ 'useElasticTabstops' ] == 'true' ) {
            $all_to_include[] = 'ext-elastic_tabstops_lite.js';
        }
    }

    //krumo($input_data);

    foreach ( $all_to_include as $js_file ) {
        echo '<script src="' . $base_url . $js_file . '" type="text/javascript" charset="utf-8"></script>';
    }
    $append_tag .= '<div id="' . $input_data[ 'attrs' ][ 'id' ] . '_code_editor' . '"></div>' . $input_data[ 'attrs' ][ 'value' ] . '<script type="text/javascript">';
    $append_tag .= 'var editor = ace.edit("' . $input_data[ 'attrs' ][ 'id' ] . '_code_editor' . '", {';
    foreach ( $input_data[ 'meta' ] as $meta_key => $meta_value ) {
        $append_tag .= $meta_key . ': "' . $meta_value . '",';
    }
    $append_tag .= '});</script>';
    ?>
<script type="text/javascript" charset="utf-8">
(function(jQuery)
{
    var oldHtml = jQuery.fn.html;
    jQuery.fn.html = function()
    {
        var ret = oldHtml.apply(this, arguments);

        this.trigger("change");

        return ret;
    };
}


)(jQuery);

jQuery(document).ready(function () {
	autosize(document.querySelectorAll('textarea'));

	jQuery("#<?php echo $input_data[ 'attrs' ][ 'id' ] . '_code_editor'  ?>").on("change",function(){
		 //if (jQuery(this).text().trim().length > 0) {
		   // jQuery(this).slideDown('slow', function() {});
		 //};
		var editor = ace.edit("<?php echo $input_data[ 'attrs' ][ 'id' ] . '_code_editor'  ?>");

		var code = editor.getValue();
		jQuery("#<?php echo $input_data[ 'attrs' ][ 'id' ]?>").val(code);
		console.log(code);
	});
});

</script>
<?php
$input_data[ 'tag' ][ 'after' ] = $append_tag . $input_data[ 'tag' ][ 'after' ];

return $input_data;


}