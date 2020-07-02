//sst_0xeOQJRHCNqJ_js_script

jQuery(document).ready(function () {
  var sst = {};
  var animation = true;
  /*these are blocked which can be extra*/
  sst.tag_names = ['sst-input', 'sst-block', 'sst-fieldset'];
  sst.script_tag_id = 'sst-script';
  sst.add_contoller_suffix = '_controller_add';
  sst.remove_contoller_suffix = '_controller_remove';
  sst.unique_id_length = 12;
  sst.alt_row = true;
  sst.even_attr = {
    style: 'background:#e6eef5;border-style: solid;border-color: black;padding: 8px;margin: 8px;display:block'
  };
  sst.odd_attr = {
    style: 'background:#f7ffc4;border-style: solid;border-color: black;padding: 8px;margin: 8px;display:block'
  };
  jQuery('body').on('click', "[id$='" + sst.add_contoller_suffix + "']", function (event) {
    sst.script_tag_id = get_script_tag_id(this);
    event.preventDefault(); /*prevent submitting in fast double click*/
    sst.source_add_controller_id = this.id;
    sst.source_last_number = get_last_number(sst.source_add_controller_id);
    sst.max_extra = get_max_extra(sst.source_add_controller_id);
    if (sst.max_extra > sst.source_last_number) {
      sst.source_element_id = remove_underlined_suffix(sst.source_add_controller_id);
      sst.clone_source_element = clone_source_element(sst.source_element_id, 'outer');
      sst.inserted_element = insert_cloned_element(sst.clone_source_element, sst.source_element_id);
      /*add up last numbers and js clone and addup*/
      add_up_down_last_number(sst.inserted_element, sst.source_element_id, 'up');
      manage_controller_visibilty_on_add();
    }
    return false;
  });

  function alt_row_attr() {
    var unique = get_unique(sst.source_element_id);
    var all_extra = jQuery("[id^='" + unique + "']").not(jQuery("[id$='" + sst.add_contoller_suffix + "']")).not(jQuery("[id$='" + sst.remove_contoller_suffix + "']"));
    jQuery.each(all_extra, function (index, extra_element) {
      if ((index + 1) % 2 == 0) {
        // console.log('even');
        //console.log(extra_element);
        jQuery.each(sst.even_attr, function (attr, value) {
          jQuery(extra_element).prop(attr, value);
        });

      } else {
        // console.log('odd');
        //console.log(extra_element);
        jQuery.each(sst.odd_attr, function (attr, value) {
          jQuery(extra_element).prop(attr, value);
        });
      }
    });
  }
  /* script_tag_id is id of js script which in this form sst_{form_id}_js_script*/
  function get_script_tag_id(thiss) {
    return sst.script_tag_id = 'sst_' + jQuery(thiss).parents('sst-form:first').attr('id') + "_js_script";
  }
  /* controller_id add or remove has suffix this get last number of controller which is last number of source*/
  /* get last number of id which has not suffix */
  function get_last_number(id) {
    if (id.endsWith('≫') == false && id.endsWith(']') == false) {
      id = remove_underlined_suffix(id); /*remove suffix which is usually in controller_id*/
    }
    var arr = get_identifier(id).split('≪');
    if (arr.length == 1) {
      arr = get_identifier(id).split('[');
    }
    var result = arr.pop().slice(0, -1);
    return result;
  }
  /* remove underline suffix which is usually in controller id*/
  function remove_underlined_suffix(id) {
    if (id.endsWith('≫') == false && id.endsWith(']') == false) {
      return id.split('_').shift();
    } else {
      return id;
    }
  }
  /* this get identifier like [0][2][5] form id with suffix or not both work*/
  function get_identifier(id) {
    if (id.endsWith('≫') == false && id.endsWith(']') == false) {
      id = remove_underlined_suffix(id); /*remove suffix which is usually in controller_id*/
    }
    var identifier = id.substr(get_unique(id).length, id.length);
    return identifier;
  }
  /* this get unique like unique[0][2][5] return "unique" form id with suffix or not both work*/
  function get_unique(id) {
    var unique_part = id.split('≪').shift();
    if (unique_part.length == id.length) {
      unique_part = id.split('[').shift();
    }
    //console.log(unique_part);
    return unique_part;
  }
  /* get attribute of max_extra from add controller */
  function get_max_extra(id_of_extra_clicked) {
    return jQuery("#" + id_of_extra_clicked).attr('max_extra');
  }
  /* clone element inner or outer */
  function clone_source_element(source_element_id, inner_outer) {
    if (inner_outer == "inner") {
      return jQuery("#" + source_element_id)[0].innerHTML;
    } else if (inner_outer == "outer") {
      return jQuery("#" + source_element_id)[0].outerHTML;
    } else {
      console.log('define inner or outer for clone_source_element func');
    }
  }
  /*insert after cloned element*/
  function insert_cloned_element(clone_source_element, source_element_id) {
    if (animation == true) {
      var res = jQuery(clone_source_element).insertAfter("#" + source_element_id).hide().show('slow', function () {
        if (sst.alt_row == true) {
          alt_row_attr();
        }
      });

    } else {
      var res = jQuery(clone_source_element).insertAfter("#" + source_element_id);
      if (sst.alt_row == true) {
        alt_row_attr();
      }

    }
    return res;
  }

  function get_underlined_suffix(str) {
    if (str.endsWith('≫') == true && str.endsWith(']') == true) {
      return str;
    } else {
      var arr = str.split('≫');
      if (arr < 2) {
        arr = str.split(']');
      }
      var result = arr[arr.length - 1];
      return result;
    }
  }
  /* string is an string to addup*/
  function add_up_down_single_string(string, source_element_id, up_or_down, split_char_override = null, last_char_override = null) {
    new_string = remove_underlined_suffix(string);
    if (new_string != string) {
      var suffix = get_underlined_suffix(string);
      string = new_string;
    }
    if (up_or_down == 'up') {
      var new_number = get_last_number(string) - 1 + 2;
    } else {
      var new_number = get_last_number(string) - 1;
    }
    var source_identifier = get_identifier(source_element_id);
    var src_iden_array = source_identifier.split('≪');
    var split_char = '≪';
    var last_char = '≫';
    if (src_iden_array < 2) {
      src_iden_array = source_identifier.split('[');
      split_char = '[';
      last_char = ']';
    }
    if (src_iden_array < 2) {
      console.log(source_identifier + " cant be added up");
    }
    if (split_char_override != null) {
      split_char = split_char_override;
    }
    if (last_char_override != null) {
      last_char = last_char_override;
    }
    src_iden_array.pop();
    src_iden_array[src_iden_array.length] = new_number + last_char;
    added_up_source_identifier = src_iden_array.join(split_char);
    var string_identifier = get_identifier(string);
    var added_up_string_identifier = added_up_source_identifier.concat(string_identifier.slice(source_identifier.length));
    var string_unique = get_unique(string);
    var added_up = string_unique.concat(added_up_string_identifier);
    if (suffix) {
      added_up = added_up.concat(suffix);
    }

    return added_up;
  }
  /*add up the block or fieldset id which is made extra*/
  function add_up_down_last_number_source_warpper(inserted_element, source_element_id, added_up, up_or_down) {
    var k = inserted_element.attr('id');
    jQuery(inserted_element).attr('id', add_up_down_single_string(inserted_element.attr('id'), source_element_id, up_or_down));
    var v = inserted_element.attr('id');
    var new_add_up = {
      [k]: v
    };
    added_up.push(new_add_up);
    return added_up;
  }
  /* this function loop through all tag names like sst-input,sst-block, and sst-fieldset and add up their ids */
  function add_up_down_last_number_tag_names(inserted_element, source_element_id, added_up, up_or_down) {
    /**	All tag names like input-tag block-tag and input-tag id will change and addup	**/
    jQuery.each(sst.tag_names, function (index, tag_name) {
      jQuery.each(jQuery(inserted_element).find(tag_name), function (index, single_child_tag) {
        var k = jQuery(single_child_tag).attr('id');

        jQuery(single_child_tag).attr('id', add_up_down_single_string(jQuery(single_child_tag).attr('id'), source_element_id, up_or_down));
        var v = jQuery(single_child_tag).attr('id');
        var new_add_up = {
          [k]: v
        };
        added_up.push(new_add_up);
      });
    });
    return added_up;
  }
  /*this addup last number of name and id of inputs and save it in add_up var to use later it search replace*/
  function add_up_down_last_number_input_ids_names(inserted_element, source_element_id, added_up, up_or_down) {
    /**	All input which has name attribute name and id will change and addup**/
    /*********** ID ADDUP **********/
    jQuery.each(inserted_element.find("[name]"), function (index, input) {
      var k1 = jQuery(input).attr('id');
      jQuery(input).attr('id', add_up_down_single_string(jQuery(input).attr('id'), source_element_id, up_or_down));
      var v1 = jQuery(input).attr('id');
      var new_add_up = {
        [k1]: v1
      };
      added_up.push(new_add_up);
      /*********** NAME ADDUP **********/
      var k2 = jQuery(input).attr('name');
      //has_empty_bracket_of_input_name();
      var empty_bracket = jQuery(input).attr('name').endsWith('[]');
      if (empty_bracket == true) {
        var temp_name = jQuery(input).attr('name').substring(0, jQuery(input).attr('name').length - 2);
        jQuery(input).attr('name', add_up_down_single_string(temp_name, source_element_id, '[', ']') + '[]', up_or_down);
      } else {
        jQuery(input).attr('name', add_up_down_single_string(jQuery(input).attr('name'), source_element_id, up_or_down, '[', ']'));
      }
      var v2 = jQuery(input).attr('name');
      var new_add_up = {
        [k2]: v2
      };
      added_up.push(new_add_up);
    });
    return added_up;
  }
  /*labels has for attributes so we addup all for attributes*/
  function add_up_down_last_number_for_attributes(inserted_element, source_element_id, up_or_down) {
    /**	All elements which has for id which is sepcific for label will change and addup	**/
    jQuery.each(inserted_element.find("[for]"), function (index, for_attr) {
      //all_source.push(jQuery(for_attr).attr('for'));/*no need because on id processing to addup it has been added*/
      jQuery(for_attr).attr('for', add_up_down_single_string(jQuery(for_attr).attr('for'), source_element_id, up_or_down));
      //all_cloned.push(jQuery(for_attr).attr('for'));/*no need because on id processing to addup it has been added*/
    });

  }
  /*in previous functions collected addup pairs for replace used to replace every remaining to change. This func do this */
  function add_up_down_element_by_search_replace(inserted_element, added_up) {
    jQuery.each(added_up, function (a, replace_pair) {
      jQuery.each(replace_pair, function (search, replace) {
        replace_str_for_html(inserted_element, search, replace);
      });
    });
  }
  /* add up for html not txt*/
  function replace_str_for_html(inserted_element, needle, replace) {
    //console.log(inserted_element);
    jQuery(inserted_element).html(function (index, html) {
      var re = new RegExp(needle, "g");
      return html.replace(re, replace);
    });
  }
  /* get source of script id need to get correctly for addup*/
  function get_source_script_id(source_element_id) {
    if (jQuery("#" + sst.script_tag_id + "-" + source_element_id).length > 0) {
      var script_id_for_source = sst.script_tag_id + "-" + source_element_id;
    } else {
      var script_id_for_source = sst.script_tag_id;
    }

    return script_id_for_source;
  }
  /* replace for txt not html*/
  function replace_str_for_text(html, needle, replace) {
    var re = new RegExp(needle, "g");
    html = html.replace(re, replace);
    return html;
  }
  /* add up for txt not html*/
  function add_up_text_by_search_replace(text_element, added_up) {
    jQuery.each(added_up, function (a, replace_pair) {
      jQuery.each(replace_pair, function (search, replace) {
        text_element = replace_str_for_text(text_element, search, replace);
      });
    });
    return text_element;
  }
  /*create new script element with js*/
  function create_new_script(id, script, script_id_for_source) {
    var js = document.createElement('script');
    js.type = 'text/javascript';
    js.id = id;
    js.innerHTML = script;
    document.getElementById(script_id_for_source).parentNode.appendChild(js);
  }
  /*find script and addup and then create it*/
  function create_added_up_js(source_element_id, added_up) {
    var script_id_for_source = get_source_script_id(source_element_id);
    var source_script = clone_source_element(script_id_for_source, 'inner');
    var script_id_for_cloned = sst.script_tag_id + "-" + add_up_down_single_string(source_element_id, source_element_id, 'up');
    var cloned_script_added_up = add_up_text_by_search_replace(source_script, added_up);
    create_new_script(script_id_for_cloned, cloned_script_added_up, script_id_for_source);
  }
  /*this function add up all element cloned and clone js and add up it*/
  function add_up_down_last_number(inserted_element, source_element_id, up_or_down) {
    var added_up = [];
    add_up_down_last_number_source_warpper(inserted_element, source_element_id, added_up, up_or_down);
    add_up_down_last_number_tag_names(inserted_element, source_element_id, added_up, up_or_down);
    add_up_down_last_number_input_ids_names(inserted_element, source_element_id, added_up, up_or_down);
    add_up_down_last_number_for_attributes(inserted_element, source_element_id, up_or_down);
    add_up_down_element_by_search_replace(inserted_element, added_up);
    if (up_or_down == 'up') {
      /**	The element which duplicate id will change and addup **/
      create_added_up_js(source_element_id, added_up);
    } else if (up_or_down == 'down') {
      /**	The element which duplicate id will change and addup **/
      //create_added_up_js(source_element_id, added_up);
    }
  }

  function manage_controller_visibilty_on_add() {
    if (animation == true) {
      jQuery("#" + sst.source_add_controller_id).hide('slow', function () {});
    } else {
      jQuery("#" + sst.source_add_controller_id).hide();
    }
    var toShow_remove_controller = jQuery("#" + add_up_down_single_string(remove_underlined_suffix(sst.source_add_controller_id), sst.source_element_id, 'up').concat(sst.remove_contoller_suffix));

    if (animation == true) {
      toShow_remove_controller.show('slow');
    } else {
      toShow_remove_controller.show();
    }
    //toShow_remove_controller.removeAttr('disabled');
    if (sst.max_extra - 1 == sst.source_last_number) {
      if (animation == true) {
        jQuery("#" + add_up_down_single_string(sst.source_add_controller_id, sst.source_element_id, 'up')).hide('slow', function () {});
      } else {
        jQuery("#" + add_up_down_single_string(sst.source_add_controller_id, sst.source_element_id, 'up')).hide();
      }
    }
  }
function remove_last_number_part(str){
	var str_arr = str.split("≪");
	str_arr.pop();
	return str_arr.join("≪");
}
  function manage_controller_visibilty_on_remove() {
	 var base =  remove_last_number_part(sst.source_element_id);
    if (animation == true) {
      jQuery("[id^='" + base + "'][id$='" + sst.add_contoller_suffix + "']").last().show('slow');

    } else {
      jQuery("[id^='" + base + "'][id$='" + sst.add_contoller_suffix + "']").last().show();
    }

  }


  jQuery('body').on('click', "[id$='" + sst.remove_contoller_suffix + "']", function (event) {
    sst.script_tag_id = get_script_tag_id(this);
    event.preventDefault(); //prevent submitting in fast double click
    sst.source_remove_controller_id = this.id;
    sst.source_element_id = remove_underlined_suffix(sst.source_remove_controller_id);
    rearrange_extra_created();
    //rewrite_all_scripts_onfly();
    //jQuery('#' + sst.script_tag_id + "-" + sst.source_element_id).remove();
    return false;
  });

  function rearrange_extra_created() {
    remove_extra_element();
    var temp = add_up_down_single_string(sst.source_element_id, sst.source_element_id, 'up');
    while (jQuery("#" + temp).length > 0) {
      add_up_down_last_number(jQuery("#" + temp).first(), sst.source_element_id, 'down');
      temp = add_up_down_single_string(temp, sst.source_element_id, 'up');
    }
    find_and_remove_last_script();
  }

  function remove_extra_element() {
    if (animation == true) {
      jQuery("#" + sst.source_element_id).first().hide('slow', function () {
        jQuery("#" + sst.source_element_id).first().remove();
        if (sst.alt_row == true) {
          alt_row_attr();
        }

        manage_controller_visibilty_on_remove()
      });
    } else {
      jQuery("#" + sst.source_element_id).first().remove();
      if (sst.alt_row == true) {
        alt_row_attr();
      }

      manage_controller_visibilty_on_remove()
    }

  }

  function find_and_remove_last_script() {
    var script_id = sst.script_tag_id + "-" + sst.source_element_id;
    var script_id_arr = script_id.split("≪");
    script_id_arr.pop();
    script_id_prefix = script_id_arr.join("≪");
    var last_element = jQuery("body").find("[id^=" + script_id_prefix + "≪]").last();

    last_element.remove();

    //return last_element;
  }

  function rewrite_all_scripts_onfly() {
    all_onfly_scripts = jQuery("body").find("script[id^=" + sst.script_tag_id + "]");
    // var new_js_scripts = [];
    jQuery.each(all_onfly_scripts, function (index, onfly_script) {
      //new_js_scripts.push(create_js_script_object(jQuery(onfly_script).attr("id"), jQuery(onfly_script).html()));
      jQuery(onfly_script).remove();
      document.getElementById(sst.script_tag_id).parentNode.appendChild(create_js_script_object(jQuery(onfly_script).attr("id"), jQuery(onfly_script).html()));
    });


  }

  function create_js_script_object(script_id, script_code) {
    var js = document.createElement('script');
    js.type = 'text/javascript';
    js.id = script_id;
    js.innerHTML = script_code;
    return js;
  }
});
