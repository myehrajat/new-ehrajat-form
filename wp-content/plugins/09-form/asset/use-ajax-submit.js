/*onmessage = function(e) {
  console.log(e.data);
 // var workerResult = 'Result: ' + (e.data[0] * e.data[1]);
  //console.log('Posting message back to main script');
  //postMessage(workerResult);
}
$this->form_data[ 'attrs' ][ 'id' ] = e.data[0]
$this->form_data[ 'attrs' ][ 'action' ] = e.data[1]
$this->form_data[ 'unique_id' ] = e.data[2]
*/
importScripts('https://code.jquery.com/jquery-3.5.1.min.js');
onmessage = function (e) {
	var jQuery = e.data[3];
  jQuery("body").on("submit", "#"+e.data[0], function (e) {
    e.preventDefault();
    var form = new FormData(document.getElementById(e.data[0]));
    var url = e.data[1];
    var method = "POST";
    var xhr = new XMLHttpRequest();
    xhr.open(method, url, false);
    xhr.send(form);
    xhr.onload = function (e) {
      if (xhr.readyState === 4) {
        if (xhr.status === 200) {
          postMessage(xhr.responseText);
          //jQuery("#"+e.data[2]).html(xhr.responseText);
        } else {
          console.error(xhr.statusText);
        }
      }
    };
    xhr.onerror = function (e) {
      console.error(xhr.statusText);
    };
  });
}
