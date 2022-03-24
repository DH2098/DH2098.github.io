<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메인 홈페이지 예제</title>
</head>
<body>

<% String contentPage = request.getParameter("contentPage");%>

<table>
<tr>
  <td colspan="2"> 											 <% // 2개의 열을 합친다 %>
	<jsp:include page="top.jsp" flush="false"></jsp:include> <% // 병합된 첫 번째 열에 top.jsp의 내용을 포함한다 %>
  </td>
</tr>			  											 <% // <tr></tr>이 총 3개 : row가 3개 %>
<tr>
  <td width="150" valign="top"> 							 <% //valign = 수직 정렬 %>
	<jsp:include page="left.jsp"></jsp:include>				 
  </td>														 <% // 첫 번째와 3번째 <tr></tr>에 colspan="숫자"를 한다? %>
</tr>														 <% // => 첫 번째와 3번째 열을 "숫자"만큼 병합한다 %>
<tr>
  <td width="350" valign="top">
    <jsp:include page="<%=contentPage%>" flush="false"></jsp:include>
</tr>
<tr>
  <td colspan="2">
    <jsp:include page="bottom.jsp" flush="false"></jsp:include>
  </td>
</tr>
</table>				   
</body>
</html>