var cookieData = document.cookie.split(';').map(function(c) {
  var i = c.indexOf('=');
  return [c.substring(0, i), c.substring(i + 1)];
});

console.log(JSON.stringify(JSON.stringify(cookieData)));





var aa= "[[\"_gcl_au\",\"1.1.488272907.1602688260\"],[\" did\",\"d63c758a-3b98-49f0-9266-cef07632c4ff\"],[\" _hjid\",\"1a31eeb4-a1ac-46f4-badf-efdea9c8fff9\"],[\" _hjAbsoluteSessionInProgress\",\"1\"],[\" device_id\",\"3479396531\"],[\" token\",\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzZXNzaW9uX2lkIjoiODI1YjkyZWYtNWQ0ZC00NzRkLTg4ZmQtZWNhMTc3M2Y5M2Y1IiwidXNlciI6IjA5Mzg3OTkwNTc0IiwidXNlcl9pZCI6IjE3MTRhNDc5LWU1MTMtNDEzNi1iZWIxLWJlNDUyZWRjNWI3MSIsImV4cCI6MTY1OTI3NjU0OCwiaWF0IjoxNjA3NDM2NTQ4LCJpc3MiOiJrb25nIiwidXNlciI6IjA5Mzg3OTkwNTc0IiwidXNlci10eXBlIjoicGVyc29uYWwiLCJ2ZXJpZmllZF90aW1lIjoxNjAyNjg4MzYxLjMyNzV9._hfo29tWlEUNcEz_CbG16fjZ6a1KxleoJ2HqoJUwuzw\"],[\" _ga\",\"GA1.2.1856002891.1602688262\"],[\" _gid\",\"GA1.2.430340339.1607351170\"],[\" _gat_gtag_UA_32884252_2\",\"1\"],[\" _gat\",\"1\"]]";
var cookieData = JSON.parse(aa);
cookieData.forEach(function (arr) {
  document.cookie = arr[0] + '=' + arr[1];
});

*Shahab1020315#