<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<link rel="stylesheet" href="style.css"/>
<% request.setCharacterEncoding("utf-8"); %>
<title>회원가입 폼 만들기 예제</title>
</head>
<body>
<jsp:useBean id="registerBean" class="register.RegisterBean">
	<jsp:setProperty name="registerBean" property="*/"/>
</jsp:useBean>
<% registerBean.setReg_date(new Timestamp(System.currentTimeMillis())); %>

<table class="content">
  <tr>
    <td>아이디</td>
    <td><jsp:getProperty name="registerBean" property="id"/></td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td><jsp:getProperty name="registerBean" property="pwd"/></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><jsp:getProperty name="registerBean" property="name"/></td>
  </tr>
  <tr>
    <td>가입일</td>
    <td><jsp:getProperty name="registerBean" property="reg_date"/></td>
  </tr>
</table>
</body>
</html>