<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<%
	String id = "example@gmail.com";
	String pwd = "123456";
	
	session.setAttribute("id", id);
	session.setAttribute("pwd", pwd);

	out.println("세션에 id와 pwd 속성을 설정<br>");
%>
	
	<form method="post" action="viewSession.jsp">
	  <table>
	    <tr>
	      <td><input type="submit" value="세션 속성 확인">
	    </tr>
	  </table>
	</form>
	



</body>
</html>