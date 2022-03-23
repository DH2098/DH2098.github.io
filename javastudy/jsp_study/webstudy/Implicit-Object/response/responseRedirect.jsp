<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>responseRedirect 예제</title>
</head>
<body>
<h2>responseRedirect 예제</h2>     					<% // 출력 버퍼에 추가 %>
현재 페이지는 <b>responseRedirect</b>페이지 				<% // 출력 버퍼에 추가 %>
<%response.sendRedirect("responseRedirected"); %>   <% // 출력 버퍼 비움 %>
</body>
</html>