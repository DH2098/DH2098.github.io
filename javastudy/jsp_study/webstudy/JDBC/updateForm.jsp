<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css"/>
</head>
<body>
<form method="post" action="updatePro.jsp">
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
	    <td class="label"><label for="name">이름</label>
		<td class="content"><input id="name" name="name" type="text" size="20"	
					maxlength="100" placeholder="BDH" required="required">
	  </tr>
	  <tr>
	    <td class="label"><label for="name">주소</label>
		<td class="content"><input id="addr" name="addr" type="text" size="20"	
					maxlength="100" placeholder="서울시" required="required">
	  </tr>
	  <tr>
	    <td class="label"><label for="name">전화번호</label>
		<td class="content"><input id="tel" name="tel" type="text" size="20"	
					maxlength="20" placeholder="010-0000-0000" required="required">
	  </tr>
	  <tr>
	    <td class="label2" colspan="2"><input type="submit" value="수정완료">
	    	<input type="reset" value="다시 작성">
	  </tr>
	</table>

</form>
</body>
</html>