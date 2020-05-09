function loadDynamicContentModal(url, modal_container_id) {
  var options = {
    modal: true,
    height: 300,
    width: 500
  };
	//var modal_container_id = modal_container_id;
	var input_id = modal_container_id.split('_sst_modal_')[0];
	jQuery('#' + modal_container_id).dialog(

    {
      "resizable": true,
      "height": "auto",
      "width": '80%',
      "modal": true,
              "buttons": [
                    {
                        text: "Set Data",
                        click: function() {
							jQuery('#' + modal_container_id).dialog('close');
                        }
                     },
                    {
                        text: "Cancel",
                        click: function() {
							jQuery('#' + modal_container_id).dialog('close');
                        }
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
		"open":function(){
			 jQuery.ajax({
				async: true,
                url: url+'&__sst__is_modal=true&__sst__modal_result_container_id='+modal_container_id+'_result',
                context: this,
                success: function(data)
                {

					jQuery('#' + modal_container_id).html(data);
                }
            });			
		},
		"close":function(){
			
			jQuery("#"+input_id).val(jQuery("#"+modal_container_id+'_result').html().split(','));
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
