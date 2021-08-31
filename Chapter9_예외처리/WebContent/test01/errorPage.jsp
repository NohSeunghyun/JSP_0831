<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러를 처리하는 페이지임(기본값은 false) -->
<%@ page isErrorPage="true" %>

<!-- 200 : 이페이지는 정상적으로 완료되는 페이지를 의미함
설정을 안하면 웹컨테이너(톰캣)에서 실행할 때 500으로 셋팅되는 경우가 있다.
이 페이지는 에러를 처리하는 정상적인 페이지임을 알리기 위해 셋팅함 -->
<%
	//response.setStatus(200);
	response.setStatus(HttpServletResponse.SC_OK);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorPage Test</title>
</head>
<body>
	에러발생<br>
	<!-- isErrorPAge="true"이므로 exception객체의 메서드 사용가능 -->
	발생한 예외(=에러)종류 : <%=exception.getClass().getName() %><br>
	예외메세지 : <%=exception.getMessage() %>
</body>
</html>