<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<% request.setCharacterEncoding("utf-8");%>
<title>session 예제</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	if(id.equals("BDH") && pwd.equals("123456789")){
		session.setAttribute("id", id);
	}

	response.sendRedirect("sessionTestForm.jsp");
%>


</body>
</html>