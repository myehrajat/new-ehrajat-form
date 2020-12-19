function hide_image_input(unique_id, input_attr_unique_id) {
  jQuery("#" + unique_id).prop("hidden", true);
  jQuery("#" + input_attr_unique_id).prop("disabled", true);
}
function click_on_remove_image(unique_id, input_attr_unique_id) {
  jQuery("#" + unique_id + "_file_controller_remove").bind('click', function () {
    var is_sure = window.confirm('Are you sure you want to remove this file?');
    if (is_sure == true) {
      jQuery("#" + unique_id + "_file_place_holder").remove();
      jQuery("#" + unique_id).prop("hidden", false);
      jQuery("#" + input_attr_unique_id).prop("disabled", false);

    }
  });
}
