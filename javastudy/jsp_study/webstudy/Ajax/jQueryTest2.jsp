<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery 예제2</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
  $(document).ready(function(){
	  $("#b1").click(function(){
		  $("#b2").text($("p").text());
	  })
	  
	  $("#b2").click(function(){
		  $("#display").html("<img src='myFace.png' border='0'/>");
	  })
  
  });
  </script>
</head>
<body>
  <p>이미지표시</p>
  <button id="b1">버튼 레이블 변경</button>
  <div id="display"></div>
  <button id="b2">버튼</button>
</body>
</html>