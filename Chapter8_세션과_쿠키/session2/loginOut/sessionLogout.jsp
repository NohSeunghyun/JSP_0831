<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Logout</title>
</head>
<body>
<!-- 로그인이 더이상 유지되지 않도록 세션객체에 저장된 id속성제거(로그아웃 된것으로 처리된다.) -->
<%
	session.removeAttribute("id");
%>
<h3>로그아웃 되었습니다.</h3>
<a href="sessionLogin.jsp">로그인 페이지로 이동</a>
</body>
</html>