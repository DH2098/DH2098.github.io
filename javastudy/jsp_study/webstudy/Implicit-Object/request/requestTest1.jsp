<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<% request.setCharacterEncoding("utf-8"); %>

<head>
<meta charset="utf-8">
<title>request 예제</title>
</head>
<body>
<h2>request 예제</h2>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");

	if(gender.equals("m")) {
		gender = "남자";
	} else {
		gender = "여자";
	}
%>

<%=name%>의 정보
<p>
나이 : <%=age%><br>
성별 : <%=gender%><br>
취미 : <%=hobby%>

</p>

</body>
</html>