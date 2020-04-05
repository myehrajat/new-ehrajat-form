<!DOCTYPE html>
<html lang="en">
<head>
<title>ACE in Action</title>

</head>
<body>

<div id="editor">function foo(items) {
    var x = "All this is syntax highlighted";
    return x;
}</div>
    
<script src="http://localhost/jscode/ace-builds/src-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
<script src="http://localhost/jscode/ace-builds/src-noconflict/ext-language_tools.js" type="text/javascript" charset="utf-8"></script>
<script src="http://localhost/jscode/ace-builds/src-noconflict/ext-emmet.js" type="text/javascript" charset="utf-8"></script>
<script>
	//https://github.com/ajaxorg/ace/wiki/Configuring-Ace
    var editor = ace.edit("editor", {
        theme: "ace/theme/tomorrow",
        mode: "ace/mode/php",
        autoScrollEditorIntoView: 'true',
        maxLines: 30,
        minLines: '2',
		/*http://localhost/jscode/ace-builds/src-noconflict/ext-language_tools.js*/
		enableBasicAutocompletion: 'true',
		enableLiveAutocompletion:   'true',
		enableSnippets: 'true',
	//http://localhost/jscode/ace-builds/src-noconflict/ext-emmet.js*/
		enableEmmet: 'true',

	
	
	});
	</script>
</body>
</html>