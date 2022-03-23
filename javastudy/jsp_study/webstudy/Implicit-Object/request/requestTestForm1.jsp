<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>request 예제</title>
</head>
<body>
<h2>request 예제</h2>
<form method="post" action="requstTest1.jsp">
  <dl>
    <dd>
      <label for="name">이름</label>
  	  <input id="name" name="name" type="text" 
  	  		placeholder="BDH" autofocus="autofocus" required="required">
    </dd>
    
    <dd>
      <label for="age">나이</label>
      <input id="age" name="age" type="number" min="20" max="99" value="20" required="required">
	</dd>
	
	<dd><fieldset>
	  <legend>성별</legend> <%-- 라디오 모양처럼 생겨서 라디오타입인가보다 --%>
	  <input id="gender" name="gender" type="radio" value="m" checked="checked">
	  <label for="gender">남</label>
	  <input id="gender" name="gender" type="radio" value="f">
	  <label for="gender">여</label>	
	</fieldset></dd>
    
    <dd>
      <label for="hobby">취미</label>
	  <select id="hobby" name="name" required="required">
    	<option value="영화보기" selected="selected">영화보기</option>
    	<option value="TV 보기" selected="selected">TV보기</option>
    	<option value="산책" selected="selected">산책</option>
    	<option value="운동" selected="selected">운동</option>
   	  </select>
    </dd>
    
    <dd>
      <input type="submit" value="전송">
    </dd>
  </dl>

</form>
</body>
</html>