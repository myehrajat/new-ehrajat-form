<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<input type="text" value="fffffffff"/>
	<?php
	//country_has_official_currency({name:country_id-2})==false
	?>
	<script>
  $.ajax({
	  url: "http://localhost/wp-content/plugins/06-input/input_eval.php", 
	  type: "post",
	  data: {
		  query:'country_has_official_currency({name:country_id-2})==false',
		  a:'ssssssssss',
		  b:'bbbbbbbbbb',
	  },
	  success: function(result){
    $("#div").html(result);
  }});
	
	
	</script>
	<div id="div"></div>
</body>
</html>
<?php