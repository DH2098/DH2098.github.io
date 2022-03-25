<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery 예제 6</title>
<style type="text/css">
  #result{
  	width  : 200px;
  	height : 200px;
  	border : 5px double #6699FF;  
  }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).function(){
		$("#b1").click*(function(){
			$.get("xhtText3.txt",function(data.status){
				var resultStr="데이터 : " + data + "\n처리상태 : " + status;
				$("#resutl").text(resultStr);
			})
		})
	})
</script>
</head>
<body>
	<button id="result"></button>
	<div id="result"></div>
</body>
</html>