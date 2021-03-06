<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>CSSLint Demo</title>
    <style>
        html { font: 14px sans-serif; }
        .error { color: #D9534F; font-weight: bold; }
        .warning { color: #F0AD4E; }
    </style>
	  <script src="http://localhost/csslint/csslint/dist/csslint.js"></script>
	<script src="http://localhost/csslint/csslint/demos/demo.js"></script>

</head>
<body>
    <h1>CSSLint Demo</h1>
    <textarea rows="30" cols="100" id="input">
@charset "UTF-8";

@import url("booya.css") print, screen;
@import "whatup.css" screen;
@import "wicked.css";

/*Error*/
@charset "UTF-8";


@namespace "http://www.w3.org/1999/xhtml";
@namespace svg "http://www.w3.org/2000/svg";

/*Warning: empty ruleset */
.foo {
}

h1 {
    font-weight: bold;
}

/*Warning: qualified heading */
.foo h1 {
    font-weight: bold;
}

/*Warning: adjoining classes */
.foo.bar {
    zoom: 1;
}

li.inline {
    width: 100%;  /*Warning: 100% can be problematic*/
}

li.last {
  display: inline;
  padding-left: 3px !important;
  padding-right: 3px;
  border-right: 0px;
}

@media print {
    li.inline {
      color: black;
    }
}

@page {
  margin: 10%;
  counter-increment: page;

  @top-center {
    font-family: sans-serif;
    font-weight: bold;
    font-size: 2em;
    content: counter(page);
  }
}
    </textarea>
    <br>
    <button id="lint-btn">Run CSSLint</button>
    <p>(You may want to keep the CSS kinda small, this could take a while.)</p>
    <div id="output"></div>
</body>
</html>

