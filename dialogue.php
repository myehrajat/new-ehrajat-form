<html>
<head>
<link rel="stylesheet" type="text/css" href="http://localhost/dialog-polyfill-master/dist/dialog-polyfill.css" />
	<style>
	dialog {
  border: 1px solid rgba(0, 0, 0, 0.3);
  border-radius: 6px;
  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
}</style>
</head>
<body>
<dialog>
  <p>This is da dialog!</p>
  <input type="text" id="return_value" value="" placeholder="Enter value">
  <button id="close">Enter</button>
</dialog>
<button id="show">Open Dialog!</button>
<script src="http://localhost/dialog-polyfill-master/dist/dialog-polyfill.js"></script> 
<script>
	var dialog = document.querySelector('dialog');

var show = document.querySelector('#show');
show.addEventListener('click', function() {
  dialog.showModal();
  console.log('dialog opened');
});
dialog.addEventListener('close', function() {
  console.log('dialog closed');
});
dialog.addEventListener('cancel', function() {
  console.log('dialog canceled');
});	
	document.querySelector('#close').onclick = function() {
  var value = document.querySelector('#return_value').value;
  dialog.close(value);
};
document.querySelector('dialog').addEventListener('close', function() {
  alert(this.returnValue);
});
	</script>
</body>
</html>