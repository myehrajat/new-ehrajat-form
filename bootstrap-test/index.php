<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script>
	
function convert_to_slug(str) {
  const a = 'àáâäæãåāăąçćčđďèéêëēėęěğǵḧîïíīįìłḿñńǹňôöòóœøōõőṕŕřßśšşșťțûüùúūǘůűųẃẍÿýžźż·/_,:;'
  const b = 'aaaaaaaaaacccddeeeeeeeegghiiiiiilmnnnnoooooooooprrsssssttuuuuuuuuuwxyyzzz------'
  const p = new RegExp(a.split('').join('|'), 'g');
	//alert(str);
  var n = str.toString().toLowerCase()
   n =  n.replace(/\s+/g, '-') // Replace spaces with -
    n =  n.replace(p, c => b.charAt(a.indexOf(c))) // Replace special characters
    n =  n.replace(/&/g, '-and-') // Replace & with 'and'
    n =  n.replace(/[^\w\-]+/g, '') // Remove all non-word characters
    n =  n.replace(/\-\-+/g, '-') // Replace multiple - with single -
    n =  n.replace(/^-+/, '') // Trim - from start of text
   n =  n.replace(/-+$/, '') // Trim - from end of text
  //alert(n);
  return n;
};
	</script>
</head>
<body>
<form>
  <div class="form-group">
    <label for="formGroupExampleInput">Example label</label>
    <input type="text" onchange="this.value = convert_to_slug(this.value); 
								 return false;;" class="form-control" id="formGroupExampleInput" placeholder="Example input">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Another label</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Another input">
  </div>
</form>
</body>
</html>
		<sst-form id="Oazcnf2R12ew"><div style="padding:12px;"><form ><sst-input id="8tjDmc04PZIT" ><div class="form-group"><label for="6bV5luqs74QL">Epithet</label><input class="form-control" id="6bV5luqs74QL" name="epithet" type="text" required="required"></div></sst-input><sst-input id="m3JAtEL1xYN1" ><div class="form-group"><label for="HHpKbkdEtZKc">Input Type</label><select class="form-control" id="HHpKbkdEtZKc" name="input_type" autofocus="autofocus" required="required"><option disabled="disabled" label="Select Input Type">Select Input Type</option><option value="1" label="Text Field">Text Field</option><option value="2" label="Search Field">Search Field</option><option value="3" label="Tel Field">Tel Field</option><option value="4" label="Url Field">Url Field</option><option value="5" label="Submit Field">Submit Field</option><option value="6" label="Range Field">Range Field</option><option value="7" label="Password Field">Password Field</option><option value="8" label="Number Field">Number Field</option><option value="9" label="Image Field">Image Field</option><option value="10" label="File Field">File Field</option><option value="11" label="Email Field">Email Field</option><option value="12" label="Date Field">Date Field</option><option value="13" label="Datetime-local Field">Datetime-local Field</option><option value="14" label="Month Field">Month Field</option><option value="15" label="Time Field">Time Field</option><option value="16" label="Week Field">Week Field</option><option value="17" label="Datetime Field">Datetime Field</option><option value="18" label="Color Field">Color Field</option><option value="19" label="Checkbox Field">Checkbox Field</option><option value="20" label="Radio Field">Radio Field</option><option value="21" label="Hidden Field">Hidden Field</option><option value="22" label="Select Field">Select Field</option><option value="23" label="Textarea Field">Textarea Field</option></select></div></sst-input><sst-input id="SuqIucalr1m3" ><div class="form-group"><label for="SY3gaPRpOnpl">Slug</label><input class="form-control" onchange="  const a = &#39;àáâäæãåāăąçćčđďèéêëēėęěğǵḧîïíīįìłḿñńǹňôöòóœøōõőṕŕřßśšşșťțûüùúūǘůűųẃẍÿýžźż·/_,:;&#39;  const b = &#39;aaaaaaaaaacccddeeeeeeeegghiiiiiilmnnnnoooooooooprrsssssttuuuuuuuuuwxyyzzz------&#39;  const p = new RegExp(a.split(&#39;&#39;).join(&#39;|&#39;), &#39;g&#39;);  var n = this.value.toString().toLowerCase();   n =  n.replace(/\s+/g, &#39;-&#39;);    n =  n.replace(p, c =&amp;gt; b.charAt(a.indexOf(c))) ;    n =  n.replace(/[^\w\-]+/g, &#39;&#39;);    n =  n.replace(/\-\-+/g, &#39;-&#39;);    n =  n.replace(/^-+/, &#39;&#39;);   n =  n.replace(/-+$/, &#39;&#39;) ;this.value = n;;" id="SY3gaPRpOnpl" name="slug" type="text"></div></sst-input><sst-input id="qZ43e3oE3fsn" ><input class="btn btn-primary" id="O69BsM3u1LYa" name="submit" type="submit" value="Submit"></sst-input></form></div></sst-form><style type="text/css">
