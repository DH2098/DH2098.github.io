<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>빨강색</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String selectedColor = request.getParameter("selectedColor");
%>
<h2>포워딩 되는 페이지 - <%=selectedColor+".jsp" %></h2>
<b><%=name %></B>이(가) 좋아하는 색은 "<%=selectedColor %>"이다.<br>
빨강색은 빨갛다.
</body>
</html>