<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery 예제 3</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function(){
    	$("p").mouseenter(function(){
    		$(this).text("마우스 포인터 도착");
    	});
    	
    	$("p").mouseleave(function(){
    		$(this).text("마우스 포인터 탈출");
    	});
    	
    	$("button").dblclick(function(){
    		$(this).css("background-color","#cccccc");
    	})
    })
  </script>
</head>
<body>
 <p>마우스 포인터 위치시켜보기</p>
 <button>더블 클릭 해보기</button>
</body>
</html>