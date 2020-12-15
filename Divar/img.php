<html>

<head>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#submit').click(  function () {
                console.log("click");
                var sendData = $('#data').val();
https://divar.ir/upload_s3/temp/ab246df7-ca85-4049-b477-a50c59f161b2.jpg?Host=divar.ir&User-Agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0&Accept=application/json, text/plain, */*&Accept-Language=en-US,en;q=0.5&Accept-Encoding=gzip, deflate, br&Referer=https://divar.ir/&Content-Type=image/jpeg&Origin=https://divar.ir&Connection=keep-alive&Cookie=did=85838bc1-0f68-44d6-a588-492b6b2ca0ff; _gcl_au=1.1.1001853846.1604570395; _ga=GA1.2.1335908023.1604570395; _hjid=8c62cbc4-0117-4acb-98cc-f257c9b55836; token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiMDkzODc5ODc2NDEiLCJleHAiOjE2NTg2MDkxMTksImlzcyI6ImtvbmciLCJ2ZXJpZmllZF90aW1lIjoxNjA0NTcwNjkzLjczOTQsInVzZXItdHlwZSI6InBlcnNvbmFsIiwiaWF0IjoxNjA2NzY5MTE5fQ.RE8tUcWFzA-2piJMJje1HrsC8SiTNc8zWnq2K2Vohc0; _gid=GA1.2.1642343988.1606769119; _hjAbsoluteSessionInProgress=0; _gat_gtag_UA_32884252_2=1&TE=Trailers
                $.ajax({
                    url: 'localhost',    //Your api url
                    type: 'PUT',   //type is any HTTP method
                    data: {
                        data: sendData
                    },      //Data as js object
                    success: function () {
                    }
                })
                ;

            });
        });
    </script>
</head>
<body>
<form>
    Data:<br>
    <input id="submit" type="button"  value="Submit">
</form>
</body>