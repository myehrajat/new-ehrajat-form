<?php
function sst_make_url_by_path($dest,$file){
	
	if($file){	
		$url = home_url();
		$sit_url = esc_url( $url );	
		$url = $sit_url.'/'.str_replace('\\','/',$dest.'/'.$file);
	}else{
		echo 'SST#ERROR: NO FILE NAME PASSED TO sst_make_url_by_path($dest,$file)';
	}
return $url;
}