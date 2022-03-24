<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<% request.setCharacterEncoding("utf-8"); %>
<meta charset="utf-8">
</head>
<body>
<h2>포워딩하는 페이지 : forwardParamTo.jsp</h2>

<%
	String name = request.getParameter("name");
	String selectedColor = request.getParameter("color");
	String selectedPage = selectedColor + ".jsp";
%>

<jsp:forward page="<%=selectedPage%>"></jsp:forward>
	<jsp:param value="<%=name%>" name="name"/>
	<jsp:param value="<%=selectedColor%>" name="selectedColor"/>
</body>
</html>