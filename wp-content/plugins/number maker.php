<?php
if ( isset( $_REQUEST ) ) {
    function starts_with( $string, $startString ) {
        settype( $string, 'string' );
        settype( $startString, 'string' );
        $len = strlen( $startString );
        return ( substr( $string, 0, $len ) === $startString );
    }
	
	
	
	
	
	move_uploaded_file ($_FILE['numbers']['tmp_name'] , 'temp/'.$_FILE['file']['tmp_name'].'.txt' );

	$numbers = file_get_contents('temp/'.$_FILE['file']['tmp_name'].'.txt');
    $numbers = explode( ',', $numbers );
	
	
    foreach ( $numbers as $k => $number ) {
        $all_numbers_in_one = explode( ':::', $number );
        if ( count( $all_numbers_in_one ) > 1 ) {
            unset( $numbers[ $k ] );
            foreach ( $all_numbers_in_one as $number_in_one ) {
                $numbers[] = $number_in_one;
            }
        }
    }
    foreach ( $numbers as $k => $number ) {
        $new = str_replace( ' ', '', $number );
        $new = str_replace( '-', '', $new );
        $new = str_replace( '+', '', $new );
        if ( starts_with( $new, '98' ) ) {
            $new = '0' . substr( $new, 2 );
        }
        if ( !starts_with( $new, '0' ) ) {
            $new = '0' . $new;
        }
        if ( starts_with( $new, '0910' )or starts_with( $new, '0919' )or starts_with( $new, '0990' )or starts_with( $new, '0991' )or starts_with( $new, '0911' )or starts_with( $new, '0912' )or starts_with( $new, '0913' )or starts_with( $new, '0914' )or starts_with( $new, '0915' )or starts_with( $new, '0916' )or starts_with( $new, '0917' )or starts_with( $new, '0918' )or starts_with( $new, '0901' )or starts_with( $new, '0902' )or starts_with( $new, '0903' )or starts_with( $new, '0905' )or starts_with( $new, '0930' )or starts_with( $new, '0931' )or starts_with( $new, '0932' )or starts_with( $new, '0933' )or starts_with( $new, '0934' )or starts_with( $new, '0935' )or starts_with( $new, '0936' )or starts_with( $new, '0937' )or starts_with( $new, '0938' )or starts_with( $new, '0939' )or starts_with( $new, '0920' )or starts_with( $new, '0921' )or starts_with( $new, '0922' ) ) {
            $numbers[ $k ] = $new;
        } else {
            unset( $numbers[ $k ] );
        }
    }


    foreach ( $numbers as $number ) {
        echo $number . '<br>';
    }
}else{
	?>
<form action="" enctype="application/x-www-form-urlencoded">
<input type="file" name="numbers">
	<input type="submit" value="Process Numbers">
</form>
<?php
}