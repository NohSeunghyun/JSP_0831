<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="null.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorPage Test</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		if (name == null) {
			throw new NullPointerException();
		}
	%>
</body>
</html>