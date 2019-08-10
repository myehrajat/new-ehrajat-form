<?php

function sst_check_duplicate($obj_data_action,$columns,$values){
	global $wpdb;
	//dbg($columns);
	//dbg($values);
	//dbg($obj_data_action);
	
	switch($obj_data_action->allow_duplicate){
		case '*'://means if every thing is the same not insert
		case 'NO'://means if every thing is the same not insert
		case 'No'://means if every thing is the same not insert
		case 'no'://means if every thing is the same not insert
			$count = count($columns)-1;

			//dbg($obj_data_action->allow_duplicate);
			$check_duplicte_query = 'SELECT * FROM '.$wpdb->prefix.$obj_data_action->table." WHERE ";
			foreach($columns as $column_key=>$column){
				$check_duplicte_query .= "`".$column."` = ".$values[$column_key]." ";
				if($count>$column_key){
					$check_duplicte_query .= 'AND ';
				}
				
			}
			$check_duplicte_query .= 'LIMIT 1';
					dbg($check_duplicte_query);
					//dbg('aaaaaaaaaaaaaaaaaaaaaaaaaaa');
			$check_duplicte = $wpdb->get_results($check_duplicte_query);
			dbg($check_duplicte);
			if($check_duplicte){
				return true;
			}else{
				return false;
			}
		break;
		case NULL://means in every condition insert DUPLICATE IS ALLOWED
		case '':
		case 'yes':
		case 'YES':
		case 'Yes':
			return false;		
		break;
		default:
			//dbg($obj_data_action->allow_duplicate);
			$allow_duplicate_cols = explode(',',$obj_data_action->allow_duplicate);
			//dbg($allow_duplicate_cols);
			$columns_flipped = array_flip($columns);
			//dbg($columns_flipped);
			$count = count($allow_duplicate_cols);
			$check_duplicate_query = 'SELECT * FROM '.$wpdb->prefix.$obj_data_action->table." WHERE ";
			$i=1;
			foreach($allow_duplicate_cols as $allow_duplicate_col){//,
			//dbg( trim($values[$columns_flipped[$allow_duplicate_col]]));
			
				//foreach($columns as $column_key=>$column){
					$val = trim($values[$columns_flipped[$allow_duplicate_col]]);
					
					if($val!==false and $val!=='""' and $val!=="''"){
						//dbg( $values);
						//dbg( $allow_duplicate_col);
						$check_duplicate_query .= "`".$allow_duplicate_col."` = ".$val." ";
						
						if($count>$i){
							$check_duplicate_query .= 'AND';
						}
						$i++;
					}
					
				//}
			}
			$check_duplicate_query .= 'LIMIT 1';
			//dbg($check_duplicate_query);

			$check_duplicate = $wpdb->get_results($check_duplicate_query);
						//dbg($check_duplicate_query);
						//dbg($check_duplicate);

			//			dbg(111111);

			if($check_duplicate){
				///dbg(111111);
				return true;
			}else{
				return false;
			}
		break;
	}
}

