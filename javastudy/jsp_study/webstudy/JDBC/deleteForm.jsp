<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<form method="post" action="deletePro.jsp">
	<table>
	  <tr>
	    <td class="label"><label for="id">아이디</label>
		<td class="content"><input id="id" name="id" type="text" size="20"	
					maxlength="50" placeholder="example@gmail.com" autofocus="autofocus" required="required">
	  </tr>
	  <tr>
	    <td class="label"><label for="pwd">비밀번호</label>
		<td class="content"><input id="pwd" name="pwd" type="password" size="20"	
					maxlength="16" placeholder="6~16자 숫자/문자" required="required">
	  </tr>
	  <tr>
	    <td class="label2" colspan="2"><input type="submit" value="삭제">
	    	<input type="reset" value="다시 작성">
	  </tr>
	</table>

</form>
</body>
</html>