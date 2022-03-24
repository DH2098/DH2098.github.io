<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인 홈페이지 예제</title>
</head>
<body>

<jsp:forward page="templateTest.jsp">
  <jsp:param value="content.jsp" name="contentPage"/>
</jsp:forward>
</body>
</html>