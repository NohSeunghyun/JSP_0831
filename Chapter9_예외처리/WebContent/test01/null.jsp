<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true" %>
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
	<h1>NullPointerException</h1>
	<!-- isErrorPAge="true"이므로 exception객체의 메서드 사용가능 -->
	발생한 예외(=에러)종류 : <%=exception.getClass().getName() %><br>
	예외메세지 : <%=exception.getMessage() %>
</body>
</html>