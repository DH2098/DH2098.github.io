<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<%
	Enumeration <String> attr = session.getAttributeNames();
	while(attr.hasMoreElements()){
		String attrName = attr.nextElement();
		String attrValue = (String)session.getAttribute(attrName);
		out.println("세션의 속성명 : " +attrName + "이고");
		out.println("세션의 속성값 : " +attrValue + "이다<br>");
		
	}

%>

</body>
</html>