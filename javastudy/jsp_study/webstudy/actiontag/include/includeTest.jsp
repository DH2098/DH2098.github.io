<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<% request.setCharacterEncoding("utf-8"); %>
<title>include 예제</title>
</head>
<body>
<% String pageName = request.getParameter("pageName"); %>
포함하는 페이지는 includeTest.jsp<br>

<hr>
<jsp:include page="<%=pageName%>" flush="false"/>
</body>
</html>