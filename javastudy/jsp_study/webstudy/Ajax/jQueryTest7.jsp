<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery 예제 7</title>
<style type="text/css">
	#result{
	  width  : 200px;
	  height : 200px;
	  border : 5px doulbe #6699FF;
    }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function(){
	  $("#b1").click(function(){
		  $post("process.jsp",
		  {
		  name:"BDH", stus:"homebody"
	  	  },
	  		function(data,status){
	  			if(status = "success")
		  			$("#result").html(data);
	  		});
	  });
  });  
</script>
</head>
<body>
  <button id="b1"></button>
  <div id="result"></div>
</body>
</html>