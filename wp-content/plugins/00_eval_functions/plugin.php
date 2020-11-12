<?php
/**
 * Plugin Name:eval functions
 * Plugin URI: http://ehrajat.com
 * Description: your eval functions goes here
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
/*
function sys_insert_currency_rate( $exchange_currency, $base_currency, $rate ) {
  if ( !empty( $exchange_currency )and!empty( $base_currency )and!empty( $rate ) ) {
    database::add_to_table( $GLOBALS[ 'sst_custom' ][ 'currency_rate' ],
      array( 'base_currency_id' => $base_currency,
        'exchanged_currency_id' => $exchange_currency,
        'rate' => $rate ) );
  }
}
*/
function sys_fa_to_eng_number( $string ) {
  $persian = [ '۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹' ];
  $arabic = [ '٩', '٨', '٧', '٦', '٥', '٤', '٣', '٢', '١', '٠' ];

  $num = range( 0, 9 );
  $convertedPersianNums = str_replace( $persian, $num, $string );
  $englishNumbersOnly = str_replace( $arabic, $num, $convertedPersianNums );

  return $englishNumbersOnly;
}

function sys_country_has_official_currency( $country_id ) {
  global $wpdb;
  $q = "SELECT * FROM " . $wpdb->prefix . 'custom_' . 'currency' . " WHERE country_id = " . $country_id . " AND official = official LIMIT 1;";
  $results = $wpdb->get_results( $q );
  if ( empty( $results ) ) {
    return false;
  } else {
    return true;
  }
}

function sys_get_bank_account( $account_id, $return_bank_id = false ) {
  global $wpdb;
  if ( !empty( $account_id ) ) {
    $q = "SELECT * FROM " . $wpdb->prefix . 'custom_' . 'bank_account' . ' WHERE id = ' . $account_id . ' LIMIT 1';
    $results = $wpdb->get_results( $q );
    if ( $return_bank_id == true ) {
      return $results[ 0 ]->bank_id;
    }
    return $results[ 0 ];
  } else {
    return null;
  }
}
/*
get commision related based on price
*/
function sys_get_bank_payment_commission( $debit_account_id, $credit_account_id, $payment_method_id, $value ) {
  global $wpdb;
  $debit_account_obj = sys_get_bank_account( $debit_account_id );


  $q = "SELECT * FROM " . $wpdb->prefix . 'custom_' . 'payment_method_commission WHERE ((min=0 AND max=0) OR (min<' . $value . ' AND max>=' . $value . ') OR (min<' . $value . ' AND max=0)) AND payment_method_id="' . $payment_method_id . '" AND bank_id="' . $debit_account_obj->bank_id . '"';

  if ( $credit_account_id != $debit_account_id ) {
    $credit_account_obj = sys_get_bank_account( $credit_account_id );
    $q .= ' AND (other_bank_id="' . $credit_account_obj->bank_id . '" OR other_bank_id="")';
  }

  $results = $wpdb->get_results( $q );
  if ( count( $results ) > 1 ) {
    echo 'more than one commission retireved';
    return false;
  } elseif ( count( $results ) < 1 ) {
    return false;
  } else {
    return $results[ 0 ];
  }
}

function sys_calc_equal_official_currency( $value, $currency_id ) {
  global $wpdb;
  $q = "SELECT * FROM " . $wpdb->prefix . 'custom_' . 'currency' . ' WHERE id = ' . $currency_id . ' LIMIT 1';
  //	krumo($currency_id  );
  $results = $wpdb->get_results( $q );
  $currency_obj = $results[ 0 ];
  if ( $currency_obj->official != 'official' ) {
    $value = $value * $currency_obj->official_currency_ratio;
  }
  return $value;
}

function sys_get_official_currency_id( $currency_id ) {
  global $wpdb;
  $q = "SELECT * FROM " . $wpdb->prefix . 'custom_' . 'currency' . ' WHERE id = ' . $currency_id . ' LIMIT 1';
  $results = $wpdb->get_results( $q );
  $currency_obj = $results[ 0 ];

  if ( $currency_obj->official != 'official' ) {
    $q = "SELECT * FROM " . $wpdb->prefix . 'custom_' . 'currency' . ' WHERE country_id = ' . $currency_obj->country_id . ' AND official = "official" LIMIT 1';
    $results = $wpdb->get_results( $q );
    $currency_obj = $results[ 0 ];
  }
  return $currency_obj->id;
}

function sys_is_same_bank_account( $debit_account_id, $payment_method_id, $force_true_false ) {
  $credit_account_obj = sys_get_bank_account( $credit_account_id );
  $debit_account_obj = sys_get_bank_account( $debit_account_id );
  if ( $credit_account_obj->bank_id == $debit_account_obj->bank_id and( !empty( $credit_account_obj->bank_id )or!empty( $debit_account_obj->bank_id ) ) ) {
    return true;
  } elseif ( empty( $credit_account_obj->bank_id )or empty( $debit_account_obj->bank_id ) ) {
    if ( $force_true_false == true ) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

function sys_calc_bank_commission( $debit_account_id, $credit_account_id, $payment_method_id, $value, $currency_id, $temp_is_same_bank ) {
  $commission_rule = sys_get_bank_payment_commission( $debit_account_id, $credit_account_id, $payment_method_id, $value );
  //krumo($commission_rule);
  if ( $commission_rule != false ) {
    if ( $temp_is_same_bank == 'is_same_bank' ) {
      $force = true;
    } else {
      $force = false;
    }

    $is_same_bank = sys_is_same_bank_account( $debit_account_id, $payment_method_id, $force );
    //krumo($is_same_bank);
    if ( !empty( $commission_rule ) ) {
      switch ( $commission_rule->commission_type ) {
        case "flat":
          if ( $is_same_bank ) {
            return $commission_rule->same_bank_commission;
          } else {
            return $commission_rule->other_bank_commission;
          }
          break;
        case "percentage":
          if ( $is_same_bank ) {
            return $commission_rule->same_bank_commission * $value / 100;
          } else {
            //krumo($commission_rule->other_bank_commission * $value / 100);
            return $commission_rule->other_bank_commission * $value / 100;
          }
          break;
        case "flat-by-unit":
          if ( $is_same_bank ) {
            return ceil( $value / $commission_rule->unit ) * $commission_rule->same_bank_commission;
          } else {
            return ceil( $value / $commission_rule->unit ) * $commission_rule->other_bank_commission;
          }
          break;
      }
    }
  } else {
    return false;
  }
}

function sys_apply_commission_and_value_account_balance( $account_id, $amount, $date, $save_id, $owner, $deduct_or_add,$affect_total_transaction_number=false) {
  global $wpdb;
  //krumo($account_id);
  if ( !empty( $account_id ) ) {

    $q = "SELECT * FROM wp_custom_account_data WHERE account_id=" . $account_id . " LIMIT 1;";
    $results = $wpdb->get_results( $q );
    //krumo($results);

    if ( empty( $results ) ) {
      if ( $deduct_or_add == 'deduct' ) {
        $q = "INSERT INTO wp_custom_account_data (`account_id`,`balance`,`total_debit`,`total_credit`,`first_transaction_date`,`last_transaction_date`,`total_transaction`,`desc`,`save_id`,`owner`,`created`,`modified`) VALUES ($account_id, 0-$amount, 0+$amount, 0,'" . $date . "','" . $date . "'";
		  if($affect_total_transaction_number){
			 $q .= ", 1";
		  }else{
			 $q .= ", 0";
		  }
		 $q .=",'','$save_id',$owner,NOW(),NOW());";
      } elseif ( $deduct_or_add == 'add' ) {
        $q = "INSERT INTO wp_custom_account_data (`account_id`,`balance`,`total_debit`,`total_credit`,`first_transaction_date`,`last_transaction_date`,`total_transaction`,`desc`,`save_id`,`owner`,`created`,`modified`) VALUES ($account_id, 0+$amount, 0, 0+$amount,'" . $date . "','" . $date . "'";
		  if($affect_total_transaction_number){
			 $q .= ", 1";
		  }else{
			 $q .= ", 0";
		  }
		 $q .=",'','$save_id',$owner,NOW(),NOW());";
      }
      $account_data_success_update = $wpdb->query( $q );
    } else {

      $account_data_obj = $results[ 0 ];
      //krumo($account_data_obj);
      if ( $deduct_or_add == 'deduct' ) {
        $q = "UPDATE wp_custom_account_data SET balance=" . ( $account_data_obj->balance - $amount ) . ",total_debit=" . ( $account_data_obj->total_debit + $amount ) . ",last_transaction_date='" . $date . "',`modified`=NOW() ";
		  if($affect_total_transaction_number==true){
			$q .= ",`total_transaction`=".($account_data_obj->total_transaction+1)." ";
		  }
        $q .= "WHERE id=" . $account_data_obj->id;
      } elseif ( $deduct_or_add == 'add' ) {
        $q = "UPDATE wp_custom_account_data SET balance=" . ( $account_data_obj->balance + $amount ) . ",total_credit=" . ( $account_data_obj->total_credit + $amount ) . ",last_transaction_date='" . $date . "',modified=NOW() ";
		  if($affect_total_transaction_number==true){
			$q .= ",`total_transaction`=".($account_data_obj->total_transaction+1)." ";
		  }
        $q .= "WHERE id=" . $account_data_obj->id;
      }
      $account_data_success_update = $wpdb->query( $q );

    }
    if ( $account_data_success_update === false ) {
      echo 'some error in inserting new account data happened.';
      return false;
    }
    return $account_data_obj->id;
  }
  return false;
  //return true;
}

function sys_apply_commission_and_value( $debit_person_id, $debit_account_id, $credit_person_id, $credit_account_id, $invoice_id, $value, $date, $payment_method_id, $currency_id, $note, $document_img, $desc, $save_id, $owner, $temp_is_same_bank, $is_commision_on_debit_person ) {

  //krumo('dddddddddddd');
  /*
  echo '<pre>';
  var_dump($debit_person_id);
  var_dump($debit_account_id);
  var_dump($credit_person_id);
  var_dump($credit_account_id);
  var_dump($invoice_id);
  var_dump($value);
  var_dump($date);
  var_dump($payment_method_id);
  var_dump($currency_id);
  var_dump($note);
  var_dump($document_img);
  var_dump($desc);
  var_dump($save_id);
  var_dump($owner);
  var_dump($temp_is_same_bank);
  var_dump($is_commision_on_debit_person);
  echo '</pre>';
  */
  //die;
  global $wpdb;
  //make all date eng number
  $date = sys_fa_to_eng_number( $date );
  //value and amount be as official
  //krumo($value);
  $value = sys_calc_equal_official_currency( $value, $currency_id );
  //krumo($value);

  //official currency id
  //krumo($currency_id);
  //krumo($is_commision_on_debit_person);
  $currency_id = sys_get_official_currency_id( $currency_id );
  //krumo($currency_id);
  //calc commission based on type and value and  ... 
  $commission_amount = sys_calc_bank_commission( $debit_account_id, $credit_account_id, $payment_method_id, $value, $currency_id, $temp_is_same_bank );
  //krumo($commission_amount);
  if ( $commission_amount !== false ) {
    // krumo($is_commision_on_debit_person);
    if ( $is_commision_on_debit_person != 'payment_method_commision_on_debit_person' ) {

      $q = "INSERT INTO wp_custom_debit_credit (`debit_person_id`, `debit_account_id`, `credit_person_id`, `credit_account_id`, `invoice_id`, `value`, `date`, `payment_method_id`, `currency_id`, `note`,`desc`, `save_id`, `owner`, `created`, `modified`) VALUES ('$credit_person_id', '$credit_account_id', '$debit_person_id','$debit_account_id','$invoice_id', '$commission_amount' ,'$date','$payment_method_id','$currency_id','کارمزد بانکی','$desc','$save_id','$owner',NOW(),NOW());";
      $wpdb->query( $q );

	 sys_apply_commission_and_value_account_balance( $credit_account_id, $commission_amount, $date, $save_id, $owner, 'deduct' );
    } else {
		//as usaully bank money transfer commission deduct from credit person
      $q = "INSERT INTO wp_custom_debit_credit (`debit_person_id`, `debit_account_id`, `invoice_id`, `value`, `date`, `payment_method_id`, `currency_id`, `note`,`desc`, `save_id`, `owner`, `created`, `modified`) VALUES ('$debit_person_id', '$debit_account_id','$invoice_id', '$commission_amount' ,'$date','$payment_method_id','$currency_id','کارمزد بانکی','$desc','$save_id','$owner',NOW(),NOW());";
      $wpdb->query( $q );
      	krumo($commission_amount);
      sys_apply_commission_and_value_account_balance( $debit_account_id, $commission_amount, $date, $save_id, $owner, 'deduct' );
    }
  }
  sys_apply_commission_and_value_account_balance( $debit_account_id, $value, $date, $save_id, $owner, 'deduct' ,true);
  sys_apply_commission_and_value_account_balance( $credit_account_id, $value, $date, $save_id, $owner, 'add',true );
}


/*echo '<pre>';
sys_calc_equal_official_currency(1000,4);
//var_dump( sys_get_bank_payment_commisions(1,2,19503000));
echo '</pre>';
*/