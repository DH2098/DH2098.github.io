<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css"/>
<title>회원가입 폼 만들기 예제</title>
</head>
<body>
<form method="post" action="registerPro">
  <table>
    <tr>
      <td class="label"><label for="id">아이디</label></td>
      <td class="content"><input id="id" name="id" type="text" size="20" 
      maxlength="30" placeholder="example@gmail.com" autofocus="autofocus" required="required"></td>
    </tr>
    <tr>
      <td class="label"><label for="pwd">비밀번호</label></td>
      <td class="content"><input id="pwd" name="pwd" type="password" size="20" 
      maxlength="30" placeholder="6~12자 숫자/문자" maxlength ="12" required="required"></td>
    </tr>
	<tr>    
      <td class="label"><label for="name">이름</label></td>
      <td class="content"><input id="name" name="name" type="text" size="20" 
      maxlength="30" placeholder="BDH" maxlength ="10" required="required"></td>
	</tr>
	<tr>
	  <td class="label2" colspan="2"><input type="submit" value="회원가입">
	  <input type="text" value="다시 작성"></td>
	</tr>
  </table>
</form>
</body>
</html>