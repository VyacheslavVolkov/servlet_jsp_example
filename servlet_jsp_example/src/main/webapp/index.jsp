<html>
<head>
    <title>Home work</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">

        var xmlhttp = new XMLHttpRequest();

        function callServlet(clicked_id) {
            xmlhttp.onreadystatechange = useResponse;
            xmlhttp.open("GET", "/servlet", true);
            xmlhttp.setRequestHeader('button', clicked_id);
            xmlhttp.send(null);
        }

        function useResponse() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("result").innerHTML = xmlhttp.responseText;
            }
        }

    </script>
</head>
<body>
<h2>AJAX buttons:</h2>

<form>
    <input type="button" id="get" value="GET" onClick="callServlet(this.id)"/>
    <input type="button" id="post" value="POST" onClick="callServlet(this.id)"/>
    <input type="button" id="delete" value="DELETE" onClick="callServlet(this.id)"/>
    <br/>

    <div id="result">

    </div>
</form>
</body>
</html>