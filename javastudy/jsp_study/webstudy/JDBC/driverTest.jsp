<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JDBC 드라이버 테스트</title>
</head>
<body>
<h2>JDBC드라이버 테스트</h2>
<%
	Connection conn = null;

	try{
		String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";
		String dbId = "jspid";
		String dbPwd = "jsppwd";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
		out.println("제대로 연결되었습니다.");
	} catch (Exception e){
		e.printStackTrace();
	}
%>

</body>
</html>