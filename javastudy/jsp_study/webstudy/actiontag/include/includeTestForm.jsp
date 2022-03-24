<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>include 예제</title>
</head>
<body>
<h2>include 예제</h2>
<form method="post" action="includeTest">
  <dl>
	<dd>
	  <label for="name">이름</label>
	  <input id="name" name="name" type="text" placeholder="이름을 입력하세요" required="required">
	</dd>	
	<dd>
	  <label for="pagename">포함할 페이지</label>	
	  <input id="pagename" name="pageName" type="text" placeholder="페이지를 입력하세요" value="includeTest.jsp" required="required">
	</dd>
	<dd>
	  <input type="submit" value="전송">
	</dd>
  </dl>
</form>
</body>
</html>