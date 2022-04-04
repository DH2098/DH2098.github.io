<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<%
 	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				out.println("쿠키 이름 : " + cookies[i].getName());
				out.println(", 쿠키 값 : " + cookies[i].getValue());
			}
		}
	}

%>
</body>
</html>