<?php
/*
modified:1396-10-23
edited when empty string as ids return empty array before this return some times arra(0=>0)
*/
function get_ids($ids,$check=false){
	//if($check){dbg($ids);}
	$ids = trim($ids);
	if(!empty($ids)){
		$ids =explode(',',$ids);
		$result_ids=array();
		foreach($ids as $id){
			$range=false;
			//echo 'start<br />';
			if(strrpos($id,'-')!=0){
				//echo 'its range<br />';
				$range=true;
			}
			if(strpos($id,'-')===0){
				//echo 'its minus<br />';
				if($range){
					$range_id=explode('-',$id);

					$result_ids=array_diff($result_ids,range($range_id[1],$range_id[2]));
					//if($check){dbg($result_ids);}

				}else{
					//echo substr($id,1);
					$nid=substr($id,1);
					settype($nid,'integer');
					$result_ids=array_diff($result_ids,array($nid));
					//if($check){dbg($result_ids);}
				}
			}else{
				//echo '<br />end<br /><br /><br />';
				if($range){
					$range_id=explode('-',$id);
					$result_ids=array_merge($result_ids,range($range_id[0],$range_id[1]));
					//if($check){dbg($result_ids);}
				}else{
					//if($check){dbg($result_ids);}
					//if($check){dbg($id);}
					settype($id,'integer');
					$result_ids=array_merge($result_ids,array($id));
					//if($check){dbg($result_ids);}
					//if($check){dbg($result_ids);}
				}
			}

		}
		//dbg($result_ids);
		foreach($result_ids as $v){
			$final_result_ids[]=$v;
		}
	}else{
		$final_result_ids= array();
	}
					//if($check){dbg($final_result_ids);}
	return $final_result_ids;
}
