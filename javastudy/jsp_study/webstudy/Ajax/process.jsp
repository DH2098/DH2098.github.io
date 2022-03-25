<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<% request.setCharacterEncoding("utf-8"); %>
<title>프로세스/</title>
</head>
<body>

<%
	String resultStr = "처리결과: <br>";
	String name = request.getParameter("name");
	String stus = request.getParameter("stus");
	resultStr += "이름은 " + name + ", <br>";
	resultStr += "현재 상태는 " + stus;
	out.println(resultStr);
%>
</body>
</html>