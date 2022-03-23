<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>session 예제</title>
</head>
<body>
<%
if(session.getAttribute("id")==null){
%>
<form method="post" action="sessionTest.jsp">
  <div id="unauth">
  <dl>
    <dd>
      <label for="id">아이디</label>
  	  <input id="id" name="id" type="text" placeholder="BDH" autofocus="autofocus" required="required">
  	</dd>
  	<dd>
  	  <label for="pwd">비밀번호</label>
  	  <input id="pass" name="pass" type="password" placeholder="123456789" required="required">
  	</dd>
  	<dd>
  	  <input type="submit" value="로그인">
  	</dd>
  </dl>
  </div>
</form>
<%
}else{
%>
<form method="post" action=logout.jsp">
	<div id="auth">
	<dl>
	  <dd>
	    <%=session.getAttribute("id")%> 님 로그인 성공
	  </dd>
	  <dd>
	    <input type="submit" value="로그아웃">
	  </dd>
	</dl>
	</div>
</form>
<%}%>
</body>
</html>