<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String names[]={"프로토콜이름","서버이름","Method방식","컨텍스트 경로","URI","접속한 클라이언트 IP"};
	String values[]={request.getProtocol(),
			request.getServerName(),
			request.getMethod(),
			request.getContextPath(),
			request.getRequestURI(),
			request.getRemoteAddr()};
	
	Enumeration<String> en = request.getHeaderNames();
	String headerName = "";
	String headerValue = "";
%>
<head>
<meta charset="utf-8">
<title>request 예제 2</title>
</head>
<body>
<h2>웹 브라우저 / 웹 서버 정보 표시</h2>
<%
	for(int i=0;i<names.length;i++){
	out.print(names[i] + " : " + values[i] + "<br>"); 
}
%>

<%
  while(en.hasMoreElements()){		 				// hasMoreElements() : 다음 요소가 있으면 true, 없으면 false 리턴
	  headerName = en.nextElement(); 				// nextElement()  	 : 다음 요소로 이동해서 요소의 값 추출
	  headerValue =  request.getHeader(headerName); // getHeader()		 : 해당 헤더 정보에 해당하는 값 추출
	  out.println(headerName + " : " + headerValue + "<br>");
  }
%>
</body>
</html>