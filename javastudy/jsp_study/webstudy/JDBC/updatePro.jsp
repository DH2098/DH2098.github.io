<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd= request.getParameter("pwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
try{
	String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
	String dbId="jspid";
	String dbPwd="jsppwd";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
	
	String sql="SELECT id, pwd FROM member WHERE id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		String rId=rs.getString("id");
		String rPwd=rs.getString("pwd");
		if(id.equals(rId) && pwd.equals(rPwd)){
			sql="UPDATE member SET name=?, address=?, tel=? WHERE id=? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2,addr);
			pstmt.setString(3,tel);
			pstmt.setString(4,id);
			pstmt.executeUpdate();
			out.print("member 테이블의 레코드를 수정했습니다.");
		}else
			out .println("패스워드가 틀렸습니다.");
	}else 
		out.println("아이디가 틀렸습니다.");
} catch (Exception e){
	e.printStackTrace();
} finally {
	if(rs != null)
		try{rs.close();}catch(Exception e){}
	if(pstmt != null)
		try{pstmt.close();}catch(Exception e){}
	if(conn != null)
		try{conn.close();}catch(Exception e){}
	 
}
%>


</body>
</html>