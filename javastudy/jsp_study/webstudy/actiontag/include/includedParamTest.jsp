<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>include 파라미터 예제</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String pageName = request.getParameter("pageName");
%>
	파라미터 값을 전달받아 실행되는<br>
	포함되는 페이지 <%=pageName %>
<b><%=name %></b> 입장
<hr>

</body>
</html>