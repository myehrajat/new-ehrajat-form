jQuery(document).ready(function () {
  var sst = {};
  sst.tag_names = ['sst-input', 'sst-block', 'sst-fieldset'];
  sst.add_contoller_suffix = '_controller_add';
  sst.remove_contoller_suffix = '_controller_remove';
  sst.unique_id_length = 12;


  function remove_underlined_suffix(id) {
    return id.split('_').shift();
  }

  function get_unqiue(id) {
    var unqiue_part = id.split('≪').shift();
    if (unqiue_part.length == id.length) {
      unqiue_part = id.split('[').shift();
    }
    //console.log(unqiue_part);
    return unqiue_part;
  }

  function get_identifier(id) {
    var identifier = id.substr(get_unqiue(id).length, id.length);
    return identifier;
  }

  function get_last_number(id) {
    var arr = get_identifier(id).split('≪');
    if (arr.length == 1) {
      arr = get_identifier(id).split('[');
    }
    return arr.pop().slice(0, -1);
  }

  function clone_source_element(source_element_id) {
    //var ele = jQuery("#"+remove_underlined_suffix(id_of_extra_clicked)).first();
    //console.log( ele);
    //console.log( source_element_id);
    return jQuery("#" + source_element_id)[0].outerHTML;
  }

  function get_max_extra(id_of_extra_clicked) {
    return jQuery("#" + id_of_extra_clicked).attr('max_extra');
  }

  function insert_cloned_element(clone_source_element, source_element_id) {
    return jQuery(clone_source_element).insertAfter("#" + source_element_id);
  }

  function add_up_single_string(string, source_element_id, split_char_override = null, last_char_override = null) {
    var new_number = get_last_number(string) - 1 + 2;
    var source_identifier = get_identifier(source_element_id);
    var src_iden_array = source_identifier.split('≪');
    var split_char = '≪';
    var last_char = '≫';
    if (src_iden_array < 2) {
      src_iden_array = source_identifier.split('[');
      split_char = '[';
      last_char = ']';
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
    var string_unique = get_unqiue(string);
    var added_up = string_unique.concat(added_up_string_identifier);
    return added_up;

  }

  function add_down_single_string(string, source_element_id, split_char_override = null, last_char_override = null) {
    var new_number = get_last_number(string) - 1;
    var source_identifier = get_identifier(source_element_id);
    var src_iden_array = source_identifier.split('≪');
    var split_char = '≪';
    var last_char = '≫';
    if (src_iden_array < 2) {
      src_iden_array = source_identifier.split('[');
      split_char = '[';
      last_char = ']';
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
    var added_down_string_identifier = added_up_source_identifier.concat(string_identifier.slice(source_identifier.length));
    var string_unique = get_unqiue(string);
    var added_down = string_unique.concat(added_down_string_identifier);
    return added_down;

  }

  function add_up_last_number(inserted_element, source_element_id) {
    var all_source = [];
    var all_cloned = [];
    /**	The element which duplicate id will change and addup	**/
    all_source.push(inserted_element.attr('id'));
    jQuery(inserted_element).attr('id', add_up_single_string(inserted_element.attr('id'), source_element_id));
    all_cloned.push(inserted_element.attr('id'));
    /**	All tag names like input-tag block-tag and input-tag id will change and addup	**/
    jQuery.each(sst.tag_names, function (index, tag_name) {
      jQuery.each(jQuery(inserted_element).find(tag_name), function (index, single_child_tag) {
        all_source.push(jQuery(single_child_tag).attr('id'));
        jQuery(single_child_tag).attr('id', add_up_single_string(jQuery(single_child_tag).attr('id'), source_element_id));
        all_cloned.push(jQuery(single_child_tag).attr('id'));
      });
    });
    /**	All input which has name attribute name and id will change and addup	**/
    jQuery.each(inserted_element.find("[name]"), function (index, input) {
      all_source.push(jQuery(input).attr('id'));
      //all_source.push(jQuery(input).attr('name'));
      jQuery(input).attr('id', add_up_single_string(jQuery(input).attr('id'), source_element_id));
      jQuery(input).attr('name', add_up_single_string(jQuery(input).attr('name'), source_element_id, '[', ']'));
      all_cloned.push(jQuery(input).attr('id'));
      //all_cloned.push(jQuery(input).attr('name'));
    });
    /**	All elements which has for id which is sepcific for label will change and addup	**/
    jQuery.each(inserted_element.find("[for]"), function (index, for_attr) {
      //all_source.push(jQuery(for_attr).attr('for'));
      jQuery(for_attr).attr('for', add_up_single_string(jQuery(for_attr).attr('for'), source_element_id));
      //all_cloned.push(jQuery(for_attr).attr('for'));
    });
    jQuery.each(all_source, function (index, needle) {
      replace_str_for_all(inserted_element, needle, all_cloned[index]);
    })
    //replace_str_for_all(inserted_element, needle, replace);	
    //console.log(all_source);
  }

  function add_down_last_number(inserted_element, source_element_id) {
    var all_source = [];
    var all_cloned = [];
    /**	The element which duplicate id will change and addup	**/
    all_source.push(inserted_element.attr('id'));
    jQuery(inserted_element).attr('id', add_down_single_string(inserted_element.attr('id'), source_element_id));
    all_cloned.push(inserted_element.attr('id'));
    /**	All tag names like input-tag block-tag and input-tag id will change and addup	**/
    jQuery.each(sst.tag_names, function (index, tag_name) {
      jQuery.each(jQuery(inserted_element).find(tag_name), function (index, single_child_tag) {
        all_source.push(jQuery(single_child_tag).attr('id'));
        jQuery(single_child_tag).attr('id', add_down_single_string(jQuery(single_child_tag).attr('id'), source_element_id));
        all_cloned.push(jQuery(single_child_tag).attr('id'));
      });
    });
    /**	All input which has name attribute name and id will change and addup	**/
    jQuery.each(inserted_element.find("[name]"), function (index, input) {
      all_source.push(jQuery(input).attr('id'));
      //all_source.push(jQuery(input).attr('name'));
      jQuery(input).attr('id', add_down_single_string(jQuery(input).attr('id'), source_element_id));
      jQuery(input).attr('name', add_down_single_string(jQuery(input).attr('name'), source_element_id, '[', ']'));
      all_cloned.push(jQuery(input).attr('id'));
      //all_cloned.push(jQuery(input).attr('name'));
    });
    /**	All elements which has for id which is sepcific for label will change and addup	**/
    jQuery.each(inserted_element.find("[for]"), function (index, for_attr) {
      //all_source.push(jQuery(for_attr).attr('for'));
      jQuery(for_attr).attr('for', add_down_single_string(jQuery(for_attr).attr('for'), source_element_id));
      //all_cloned.push(jQuery(for_attr).attr('for'));
    });
    jQuery.each(all_source, function (index, needle) {
      replace_str_for_all(inserted_element, needle, all_cloned[index]);
    })
    //replace_str_for_all(inserted_element, needle, replace);	
    //console.log(all_source);
  }

  function replace_str_for_all(inserted_element, needle, replace) {
    replace_str_for_text(inserted_element, needle, replace);
    replace_str_for_html(inserted_element, needle, replace);
  }

  function replace_str_for_text(inserted_element, needle, replace) {
    jQuery(inserted_element).html(function (index, html) {
      var re = new RegExp(needle, "g");
      return html.replace(re, replace);
    });
  }

  function replace_str_for_html(inserted_element, needle, replace) {
    jQuery(inserted_element).find('*').each(function () {
      var tmp = jQuery(this).children().remove();
      var text = jQuery(this).text();
      var re = new RegExp(needle, "g");
      text = text.replace(re, replace);
      jQuery(this).text(text);
      jQuery(this).append(tmp);
    });
  }

  function manage_controller_visibilty() {
    jQuery("#" + sst.source_add_controller_id).hide();
    //jQuery("#" + remove_underlined_suffix(sst.source_add_controller_id).concat(sst.remove_contoller_suffix)).hide();
    //cloned
    jQuery("#" + add_up_single_string(remove_underlined_suffix(sst.source_add_controller_id), sst.source_element_id).concat(sst.remove_contoller_suffix)).show();
    if (sst.max_extra - 1 == sst.source_last_number) {
      jQuery("#" + add_up_single_string(remove_underlined_suffix(sst.source_add_controller_id), sst.source_element_id).concat(sst.add_contoller_suffix)).hide();
    }
  }

  jQuery('body').on('click', "[id$='" + sst.add_contoller_suffix + "']", function (event) {
    event.preventDefault(); //prevent submitting in fast double click
    sst.source_add_controller_id = this.id;
    sst.source_last_number = get_last_number(remove_underlined_suffix(sst.source_add_controller_id));
    sst.max_extra = get_max_extra(sst.source_add_controller_id);
    if (sst.max_extra > sst.source_last_number) {
      sst.source_element_id = remove_underlined_suffix(sst.source_add_controller_id);
      sst.clone_source_element = clone_source_element(sst.source_element_id);
      sst.inserted_element = insert_cloned_element(sst.clone_source_element, sst.source_element_id);
      add_up_last_number(sst.inserted_element, sst.source_element_id);
      manage_controller_visibilty();
    }
    return false;
  });

  jQuery('body').on('click', "[id$='" + sst.remove_contoller_suffix + "']", function (event) {
    event.preventDefault(); //prevent submitting in fast double click
    sst.source_remove_controller_id = this.id;
    sst.source_element_id = remove_underlined_suffix(sst.source_remove_controller_id);
    jQuery("#" + sst.source_element_id).first().remove();
    sst.source_last_number = get_last_number(sst.source_element_id);
    var temp = add_up_single_string(sst.source_element_id, sst.source_element_id);
    while (jQuery("#" + temp).length > 0) {
      add_down_last_number(jQuery("#" + temp).first(), sst.source_element_id);
      temp = add_up_single_string(temp, sst.source_element_id);
    }
    sst.unique = get_unqiue(sst.source_element_id);
    jQuery("[id^='" + sst.unique + "'][id$='" + sst.add_contoller_suffix + "']").last().show();
    return false;
  });


});
