<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page info = "page 예제" %>
<meta charset="utf-8">
<title>page 예제</title>
</head>
<body>
<% 
	String info = this.getServletInfo();
%>
<h2>page 예제</h2>
page 디렉티브의 info 속성값 "<%=info %>"를 얻는다.
</body>
</html>