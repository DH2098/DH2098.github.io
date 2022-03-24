<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>forward 파라미터 예제</title>
</head>
<body>
<h2>forward 파라미터 예제</h2>
<form method="post" action="fowartParamTo.jsp">
  <dl>
    <dd>
      <label for="name">이름</label> 
	  <input id="name" name="name" type="text" placeholder="이름을 입력하시오" required="required">
	</dd>
	<dd>
	  <label for="color">색상</label>
	  <select id="color" name="color" required="required">
	  	<option value="blue" selected="selected">파랑색
	  	<option value="green">초록색
	  	<option value="red">빨강색
	  	<option value="yellow">노랑색
	  </select>
	</dd>
	<dd>
	  <input type="submit" value="확인">
	</dd>
  </dl>
</form>
</body>
</html>