<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%request.setCharacterEncoding("utf-8"); %>

<title>자바빈 테스트</title>
</head>
<body>

<jsp:useBean id="testBean" class= "bean.TestBean">
	<jsp:setProperty name="testBean" property="id" />
</jsp:useBean>

입력된 아이디: <jsp:getProperty name="testBean" property="id" />
</body>
</html>