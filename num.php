<?php
if(!empty($_GET)){
	$start_number = $_GET['start_number'];
	$end_number = $_GET['end_number'];
	$prefix = $_GET['prefix'];
	while($start_number<=$end_number ){
		echo $_GET['prefix'].$start_number.'<br>';
		$start_number++;
	}
}else{
	
?>
<form method="get">
  <label>Prefix Number</label>
  <input type="text" name="prefix"><br>
  <label>Start Number</label>
  <input type="number" name="start_number"><br>
  <label>End Number</label>
  <input type="number" name="end_number"><br>
	<input type="submit" value"Submit">
</form>
<?php
}
	?>