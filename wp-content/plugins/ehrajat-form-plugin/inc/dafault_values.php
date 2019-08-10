<?php
//error_reporting(E_ALL); ini_set('display_errors', 1); 
//dbg(sst_get_option('insertLanguageTable'));
//die;
if(sst_get_option('insertLanguageTable')==false){
	//
	//default values
	$languages = array('Abkhazian'=>'ab','Afar'=>'aa','Afrikaans'=>'af','Albanian'=>'sq','Amharic'=>'am','Arabic'=>'ar','Aragonese'=>'an','Armenian'=>'hy','Assamese'=>'as','Aymara'=>'ay','Azerbaijani'=>'az','Bashkir'=>'ba','Basque'=>'eu','Bengali (Bangla)'=>'bn','Bhutani'=>'dz','Bihari'=>'bh','Bislama'=>'bi','Breton'=>'br','Bulgarian'=>'bg','Burmese'=>'my','Byelorussian (Belarusian)'=>'be','Cambodian'=>'km','Catalan'=>'ca','Cherokee'=>'','Chewa'=>'','Chinese'=>'zh','Chinese (Simplified)'=>'zh-Hans','Chinese (Traditional)'=>'zh-Hant','Corsican'=>'co','Croatian'=>'hr','Czech'=>'cs','Danish'=>'da','Divehi'=>'','Dutch'=>'nl','Edo'=>'','English'=>'en','Esperanto'=>'eo','Estonian'=>'et','Faeroese'=>'fo','Farsi'=>'fa','Fiji'=>'fj','Finnish'=>'fi','Flemish'=>'','French'=>'fr','Frisian'=>'fy','Fulfulde'=>'','Galician'=>'gl','Gaelic (Scottish)'=>'gd','Gaelic (Manx)'=>'gv','Georgian'=>'ka','German'=>'de','Greek'=>'el','Greenlandic'=>'kl','Guarani'=>'gn','Gujarati'=>'gu','Haitian Creole'=>'ht','Hausa'=>'ha','Hawaiian'=>'','Hebrew'=>'he, iw','Hindi'=>'hi','Hungarian'=>'hu','Ibibio'=>'','Icelandic'=>'is','Ido'=>'io','Igbo'=>'','Indonesian'=>'id, in','Interlingua'=>'ia','Interlingue'=>'ie','Inuktitut'=>'iu','Inupiak'=>'ik','Irish'=>'ga','Italian'=>'it','Japanese'=>'ja','Javanese'=>'jv','Kannada'=>'kn','Kanuri'=>'','Kashmiri'=>'ks','Kazakh'=>'kk','Kinyarwanda (Ruanda)'=>'rw','Kirghiz'=>'ky','Kirundi (Rundi)'=>'rn','Konkani'=>'','Korean'=>'ko','Kurdish'=>'ku','Laothian'=>'lo','Latin'=>'la','Latvian (Lettish)'=>'lv','Limburgish ( Limburger)'=>'li','Lingala'=>'ln','Lithuanian'=>'lt','Macedonian'=>'mk','Malagasy'=>'mg','Malay'=>'ms','Malayalam'=>'ml','Maltese'=>'mt','Maori'=>'mi','Marathi'=>'mr','Moldavian'=>'mo','Mongolian'=>'mn','Nauru'=>'na','Nepali'=>'ne','Norwegian'=>'no','Occitan'=>'oc','Oriya'=>'or','Oromo (Afaan Oromo)'=>'om','Papiamentu'=>'','Pashto (Pushto)'=>'ps','Polish'=>'pl','Portuguese'=>'pt','Punjabi'=>'pa','Quechua'=>'qu','Rhaeto-Romance'=>'rm','Romanian'=>'ro','Russian'=>'ru','Sami (Lappish)'=>'','Samoan'=>'sm','Sangro'=>'sg','Sanskrit'=>'sa','Serbian'=>'sr','Serbo-Croatian'=>'sh','Sesotho'=>'st','Setswana'=>'tn','Shona'=>'sn','Sichuan Yi'=>'ii','Sindhi'=>'sd','Sinhalese'=>'si','Siswati'=>'ss','Slovak'=>'sk','Slovenian'=>'sl','Somali'=>'so','Spanish'=>'es','Sundanese'=>'su','Swahili (Kiswahili)'=>'sw','Swedish'=>'sv','Syriac'=>'','Tagalog'=>'tl','Tajik'=>'tg','Tamazight'=>'','Tamil'=>'ta','Tatar'=>'tt','Telugu'=>'te','Thai'=>'th','Tibetan'=>'bo','Tigrinya'=>'ti','Tonga'=>'to','Tsonga'=>'ts','Turkish'=>'tr','Turkmen'=>'tk','Twi'=>'tw','Uighur'=>'ug','Ukrainian'=>'uk','Urdu'=>'ur','Uzbek'=>'uz','Venda'=>'','Vietnamese'=>'vi','Volapk'=>'vo','Wallon'=>'wa','Welsh'=>'cy','Wolof'=>'wo','Xhosa'=>'xh','Yi'=>'','Yiddish'=>'yi,ji','Yoruba'=>'yo','Zulu'=>'zu');
	foreach($languages as $lang=>$abbr_lang){
		sst_add_to_table($language_table,array(
										'epithet'=>$lang,'slug'=>'','language'=>$abbr_lang,'direction'=>'',
										'description'=>'','owner'=>'Ehrajat',
										'created'=>date('Y-m-d H:i:s'),'modified'=>date('Y-m-d H:i:s')));
	}
	sst_save_option('insertLanguageTable',true);
}




//add default option
if(!sst_get_option('fieldOrBlockPriority')){
	sst_save_option('fieldOrBlockPriority','block');
}
if(!sst_get_option('defaultFormTarget')){
	sst_save_option('defaultFormTarget','multipart/form-data');
}
if(!sst_get_option('defaultFormMethod')){
	sst_save_option('defaultFormMethod','post');
}
if(!sst_get_option('defaultFormMethod')){
	sst_save_option('defaultFormMethod','post');
}
if(!sst_get_option('defaultValue')){
    sst_add_to_table($pack_table,array('id'=>'1','pre'=>'<div dir="rtl" style="width:100% !important;"','post'=>'</div>','the_id'=>'form'));
    sst_add_to_table($pack_table,array('id'=>'2','pre'=>'<div dir="rtl"  style="width:100% !important; float:right;"','post'=>'</div>','the_id'=>'block'));
    sst_add_to_table($pack_table,array('id'=>'3','pre'=>'<div dir="rtl"','post'=>'</div></br>','the_id'=>'field'));
    sst_add_to_table($pack_table,array('id'=>'4','pre'=>'<span dir="rtl"','post'=>'</span>','the_id'=>'input'));
    sst_add_to_table($pack_table,array('id'=>'5','pre'=>'<span dir="rtl" style="width:30% !important; float:right;" ','post'=>'</span>','the_id'=>'label'));
    sst_add_to_table($pack_table,array('id'=>'6','pre'=>'<span dir="rtl"','post'=>'</span>','the_id'=>'text'));
    sst_add_to_table($pack_table,array('id'=>'7','pre'=>'<span dir="rtl" style="font-size:12px"','post'=>'</span>','the_id'=>'note'));
    sst_add_to_table($pack_table,array('id'=>'8','pre'=>'<span dir="rtl"','post'=>'</span>','the_id'=>'tooltip'));
    sst_add_to_table($default_pack_table,array('id'=>'1','form'=>1,'block'=>2,'field'=>3,'input'=>4,'label'=>5,'text'=>6,'note'=>7,'tooltip'=>8,'description'=>'this is the default pack that has been suggested','owner'=>'Ehrajat','created'=>date('Y-m-d H:i:s'),'modified'=>date('Y-m-d H:i:s')));
    sst_save_option('defaultValue',true);
}