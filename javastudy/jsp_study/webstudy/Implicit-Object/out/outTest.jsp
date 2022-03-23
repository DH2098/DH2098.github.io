<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>out 테스트</title>
</head>
<body>
<%
	int bufferSize = out.getBufferSize();     // 버퍼 크기
	int remainSize = out.getRemaining(); 	  // 남은 버퍼 크기
	int usedSize = bufferSize - remainSize;   // 사용 가능한 버퍼 크기

%>
<h2>out 테스트</h2>
<b>현재 페이지 버퍼 사용 현황</b><br>
출력 버퍼 전체 크기 : <%=bufferSize%>byte<br>
현재 사용한 버퍼 크기 : <%=remainSize%>byte<br>
사용 가능한 버퍼 크기 : <%=usedSize%>byte<br>

</body>
</html>