function loadDynamicContentModal(process_url, modal_container_id, input_url, input_wrapper_id) {
//alert('sssssssssss');
  var options = {
    modal: true,
    height: 300,
    width: 500
  };
  //var modal_container_id = modal_container_id;
  var input_id = modal_container_id.split('_sst_modal_')[0];
  var my_dialog = jQuery('#' + modal_container_id).dialog(

    {
      "resizable": true,
      "height": "auto",
      "width": '90%',
      "modal": true,
      "buttons": [{
          text: "Submit",
          click: function () {
              console.log(jQuery("#" + modal_container_id + '_result'));
            //jQuery("form").last().on('submit',function(){alert('ddddddddd');});
            jQuery("form").last().submit();

            console.log(jQuery("#" + modal_container_id + '_result'));
			 if(jQuery( "my_dialog" ).dialog( "open" )){
            console.log(jQuery("#" + modal_container_id + '_result'));
			 }

            //jQuery("#" + modal_container_id + "_submit").hide();
            jQuery("#" + modal_container_id + "_set").show();

          },
          id: modal_container_id + "_submit"
        },
        {
          text: "Set Data",
          click: function () {
            try {
              //console.log(jQuery("#"+input_wrapper_id));
              jQuery.ajax({
                async: true,
                url: input_url,
                context: this,
                success: function (data) {
                  jQuery("#" + input_wrapper_id).first().replaceWith(data);
                  //console.log(jQuery("#" + modal_container_id + '_result').html());
                  if (jQuery("#" + modal_container_id + '_result').html() != undefined) {
                    jQuery("#" + input_id).val(jQuery("#" + modal_container_id + '_result').html().split(','));
                  }
                  my_dialog.dialog('close');
                  //jQuery('#' + modal_container_id).html(data);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                  alert(xhr.status);
                  alert(thrownError);
                }
              });
            } catch (err) {
              //  Block of code to handle errors
            }

            // close_dialogue( modal_container_id);
          },
          id: modal_container_id + "_set",
        },
        {
          text: "Cancel",
          click: function () {
            my_dialog.dialog('close');
          },
          id: modal_container_id + "_cancel"

        },
      ],
      "show": {
        //effect: "blind",
        "duration": 100
      },
      "hide": {
        //effect: "explode",
        "duration": 100
      },
      "open": function () {
        jQuery("#" + modal_container_id + "_set").hide();
        jQuery.ajax({
          async: true,
          url: process_url + '&__sst__is_modal=true&__sst__modal_result_container_id=' + modal_container_id + '_result',
          context: this,
          success: function (data) {
            jQuery('#' + modal_container_id).html(data);
          },
          error: function (xhr, ajaxOptions, thrownError) {
            alert(xhr.status);
            alert(thrownError);
          }

        });
      },
      "close": function () {


      },
    }).dialogExtend({
    "maximizable": true,
    "minimizable": true,
    "collapsable": true,
    "dblclick": 'maximize',
    "icons": {
      //"close" : "ui-icon-circle-closethick", // new in v1.0.1
      "maximize": "ui-icon-arrowthick",
      "minimize": "ui-icon-minus",
      "restore": "ui-icon-newwin"
    }
  });

}
