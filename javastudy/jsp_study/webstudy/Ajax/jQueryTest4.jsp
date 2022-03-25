<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery 예제 4</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function(){
		
    	$("#b1").click(function() {
			$("#result").load("xhrTest1.jsp");
		});
	)};
  </script>
</head>
<body>
  <button id="b1">결과</button>
  <div id="result"></div>
</body>
</html>