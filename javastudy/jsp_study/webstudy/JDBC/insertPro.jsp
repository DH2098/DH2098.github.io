<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
		String dbId="jspid";
		String dbPwd="jsppwd";
		
	 	Class.forName("com.mysql.cj.jdbc.Driver");
	 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPwd);
	 	
	 	String sql = "insert into member values (?,?,?,?,?,?)";
	 	pstmt = conn.prepareStatement(sql);
	 	pstmt.setString(1,id);
	 	pstmt.setString(2,pwd);
	 	pstmt.setString(3,name);
	 	pstmt.setTimestamp(4,register);
	 	pstmt.setString(5,addr);
	 	pstmt.setString(6,tel);
		pstmt.executeUpdate();
		
		out.println("member 테이블에 새로운 레코드를 추가했습니다.");
		
	} catch (Exception e) {
		e.printStackTrace();
		out.println("member 테이블에 새로운 레코드를 추가에 실패했습니다");
	} finally {
		if(pstmt != null)
			try {pstmt.close();
			} catch(SQLException sqle) {
				
			}
		if(conn != null)
			try {conn.close();
			} catch(SQLException sqle) {
				
		
			}
	}


%>

</body>
</html>