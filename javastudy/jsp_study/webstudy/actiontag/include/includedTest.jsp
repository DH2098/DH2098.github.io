<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>include 예제</title>
</head>
<body>
<% String name = request.getParameter("name"); %>
포함되는 페이지 includedTest.jsp<p>
<b><%=name%></b> 입장
<hr>
</body>
</html>