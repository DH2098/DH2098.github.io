<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<% request.setCharacterEncoding("utf-8"); %>
<title>include 파라미터 예제</title>
</head>
<body>
<%
	String name = "BDH";
	String pageName = "includeParamTest.jsp";
%>

포함하는 페이지 includeParamTest<br>
포함되는 페이지에 값 전달<br>
<hr>
<jsp:include page="<%=pageName %>" flush=false>
  <jsp:param value="<%=name %>" name="name"/>
  <jsp:param value="<%=pageName %>" name="pageName"/>
</jsp:include>
 includeParamTest.jsp의 나머지 내용
</body>
</html>