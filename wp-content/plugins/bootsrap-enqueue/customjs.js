function make_slug(str) {
    const a = 'àáâäæãåāăąçćčđďèéêëēėęěğǵḧîïíīįìłḿñńǹňôöòóœøōõőṕŕřßśšşșťțûüùúūǘůűųẃẍÿýžźż·/_,:;';
    const b = 'aaaaaaaaaacccddeeeeeeeegghiiiiiilmnnnnoooooooooprrsssssttuuuuuuuuuwxyyzzz------';
    const p = new RegExp(a.split('').join('|'), 'g');

    var n = str.toString().toLowerCase();
    n = n.replace(/\s+/g, '-');
    n = n.replace(p, c => b.charAt(a.indexOf(c)));
    n = n.replace(/[^\w\-]+/g, '');
    n = n.replace(/\-\-+/g, '-');
    n = n.replace(/^-+/, '');
    n = n.replace(/-+$/, '');
    return n;
}

function is_attr_maker(str) {
    str = str.toLowerCase();
    if (/^[a-z]/.test(str) === false) {
        str = 'uppercase-' + str;
    }
    str = str.replace(/[^0-9a-z-A-Z]/g, "-");
    if (str.indexOf("-") == -1) {
        str = str + '-nohyphen';
    }
    if (str.lastIndexOf("-") == str.length - 1) {
        str = str + '-lastindex';
    }
    if (/^x-/.test(str) === true || /^polymer-/.test(str) === true || /^ng-/.test(str) === true) {
        str = 'cantbeginwith-' + str;
    }
    if (str == 'annotation-xml' || str == 'color-profile' || str == 'font-face' || str == 'font-face-src' || str == 'font-face-uri' || str == 'font-face-format' || str == 'font-face-name' || str == 'missing-glyph') {
        str = 'namereserved-' + str;
    }
    return str;
}

function slot_attr_maker(str) {
    /*https://stackoverflow.com/questions/6623231/remove-all-white-spaces-from-text*/
    str = str.replace('"', "-").replace("'", "-").replace(">", "-").replace("/", "-").replace(/\s/g, '-');
    return str
}

function event_name_attr_maker(str) {
    str = str.toLowerCase();
    if (/^on/.test(str) !== true) {
        str = 'on' + str;
    }
    return str;
}

function data_attr_maker(str) {
    str = str.toLowerCase();
    if (str.startsWith("xml")) {
        str = "dont-start-with-" + str;
    }
    str = str.replace(/[ \"'></=	;]/g, "-");
    return str;
}

function style_attr_checker(properties_id, value_id) {
    var output = document.getElementById(value_id + '_error');
    output.innerHTML = "";
    var results = CSSLint.verify(".c{" + document.getElementById(properties_id).value + ':' + document.getElementById(value_id).value + '}');
    //alert(".C{"+document.getElementById(properties_id).value + ':' + document.getElementById(value_id).value+ '}');
    var messages = results.messages;
    output.innerHTML += '<style>.warning-css{color:orange;}.error-css{color:red;}</style>';
    for (i = 0, len = messages.length; i < len; i++) {
        log(messages[i].message, messages[i].type, value_id + '_error', properties_id + '_error');
    }
}

function log(value, level, value_id_error_cont) {
    var output = document.getElementById(value_id_error_cont);
    output.innerHTML += "<span class=\"" + level + "-css\">" + level.charAt(0).toUpperCase() + level.slice(1) + '</span>: ' + value.replace(/ /g, "&nbsp;") + "<br>";
}

function file_accept_checker(str) {
	var final = [];
    var accepts = str = str.split(',');
    jQuery.each(accepts, function (key, value) {
		var parts = value.trim().split('/');
		if(parts.length==1){
			if (parts[0].indexOf(".") == 0) {
				final.push(parts[0].replace(';',''));
			}
		}else if(parts.length==2){
			 //'application', 'audio', 'chemical', 'font', 'image', 'message', 'model', 'multipart', 'text', 'video', 'x-conference'
			
			if (parts[0].trim().indexOf("application") == 0 || 
				parts[0].trim().indexOf("audio") == 0 || 
				parts[0].trim().indexOf("chemical") == 0 || 
				parts[0].trim().indexOf("font") == 0 || 
				parts[0].trim().indexOf("image") == 0 || 
				parts[0].trim().indexOf("message") == 0 || 
				parts[0].trim().indexOf("model") == 0 || 
				parts[0].trim().indexOf("multipart") == 0 || 
				parts[0].trim().indexOf("text") == 0 || 
				parts[0].trim().indexOf("video") == 0 || 
				parts[0].trim().indexOf("conference") == 0) {
				if(parts[1].length>0){
					final.push(parts.join('/').replace(';',''));
				}else{
					final.push(parts.join('/').replace(';','')+'*');
				}
				
			}
		}else{
			
		}
    });
    return final.join(',');
}
	function loadDynamicContentModal(url,modal_container_id ){
		//
		var options = {
			modal : true,
			height : 300,
			width : 500
		};
	jQuery('#'+modal_container_id).load(url,jQuery('#'+modal_container_id).dialog(
	
	{
      "resizable": true,
		
	"height": "auto",
      "width": '80%',
      "modal": true,
      "buttons": {
        "Add": function() {
			var input_need_value_id = modal_container_id.split('_')[0];
		  jQuery("#"+input_need_value_id).val(3);
          jQuery( this ).dialog( "close" );
        },
        "Cancel": function() {
          jQuery( this ).dialog( "close" );
        }
      },
	//autoOpen: false,
      "show": {
        //effect: "blind",
        "duration": 100
      },
      "hide": {
        //effect: "explode",
       "duration": 100
      }
    }
	)).dialogExtend({
	"maximizable":true,
	"minimizable":true,
	"collapsable":true,
	"dblclick":'maximize',
	"icons":{
	  //"close" : "ui-icon-circle-closethick", // new in v1.0.1
	  "maximize" : "ui-icon-arrowthick",
	  "minimize" : "ui-icon-minus",
	  "restore" : "ui-icon-newwin"	
	}
      });;	
		//jQuery('#'+modal_container_id).attr('title','aaaaaa');
	}


