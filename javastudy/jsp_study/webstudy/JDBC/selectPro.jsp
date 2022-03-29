<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<table>
  <tr class="label">
  	<td>아이디
  	<td>비밀번호
  	<td>이름
  	<td>가입일자
  	<td>주소
  	<td>전화번호
  </tr>

<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
		String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
		String dbId="jspid";
		String dbPwd="jsppwd";
		 
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(jdbcUrl,dbId,dbPwd);
			
			String sql = "select * from member";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				String id=rs.getString("id");
				String pwd=rs.getString("pwd");
				String name=rs.getString("name");
				Timestamp register = rs.getTimestamp("reg_date");
				String addr=rs.getString("address");
				String tel=rs.getString("tel");			
%>

			<tr>
			 <td><%=id%>
			 <td><%=pwd%>
			 <td><%=name%>
			 <td><%=register.toString()%>
			 <td><%=addr%>
			 <td><%=tel%>
<% 	}
	
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		if(rs!=null)
			try {
				rs.close();
			} catch (Exception e) {
				
			}
		if (pstmt!=null)
			try {
				pstmt.close();
			} catch (Exception e) {
				
			}
		
 	}
%>
</table>

</body>
</html>