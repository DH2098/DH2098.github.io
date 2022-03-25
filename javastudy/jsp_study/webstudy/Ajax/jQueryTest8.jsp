<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery 예제 8</title>
<style type="text/css">
  #result{
    width  : 200px;
    height : 200px;
    border : 5px double #6699FF;
  }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function() {
	$("#b1").click(function(){
		var query = {name : "BDH",
				stus : "homebody"};
	$.ajax({
		type: "POST",
		url:"process.jsp",
		data:query,
		success:function(data){
			$("#result").html(data);
		}
	})
	
	})
});
</script>
</head>
<body>
  <button id="b1">결과</button>
  <div id="result"></div>
</body>
</html>