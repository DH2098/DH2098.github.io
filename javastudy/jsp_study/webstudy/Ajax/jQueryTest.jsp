<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery 예제</title>
<style type="text/css">
  div#displayArea{
    width : 200px;				<% // 너비 %>
    height : 200px;				<% // 높이 %>
    border : 5px double #6699FF;<% // 테두리 %>
  }
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function(){		<% // 해당 페이지가 ready가 되면 실행한다 (사이트 안정성) %>
	 $("button").click(function(){  <% // button이 click 되면 자동으로 실행 %>
		 $("displayArea").html("<img src='ansi_main2s.png' border='0'/>"); <% // id 속성값이 display인 엘리먼트의 내용에 "<img src 어쩌구 저쩌구>"를 지정%>
	 )} 																   <% // id 속성값으로 엘리먼트에 접근하려면 $("#속성값")으로 사용 %>
  });																	   <% // html("내용") : 지정한 엘리먼트의 내용으로 ""안의 내용을 삽입 %>
</script>																   <% // html 태그가 있으면 해당 태그를 해석해서 처리 %>
</head>
<body>
  <div id ="displayArea">내용이 변경될 장소</div>
  <button>표시</button>
</body>
</html>

