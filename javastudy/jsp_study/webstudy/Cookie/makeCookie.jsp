<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<%
	Cookie cookie = new Cookie("id","name");
	cookie.setMaxAge(60*2);
	response.addCookie(cookie);
	
	out.println("쿠키가 생성되었습니다.");
%>

<form method="post" action="useCookie.jsp">
  <table>
	<tr>
	  <td><input type="submit" value="생성된 쿠키 확인">
	</tr>
  </table>
</form>
</body>
</html>