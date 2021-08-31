<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 로그인을 유지하기 위해 세션객체에 id이름으로 로그인페이지에서 입력한 id값을 저장 -->  
<%
	session.setAttribute("id", request.getParameter("id"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
</head>
<body>
	<!-- 아이디와 비밀번호를 확인하는 로직은 생략함 -->
	<h3>로그인 되었습니다.</h3>
	<!-- 실제로 포털사이트들이 로그인을 유지할 수 있는 것은
	세션객체에 id를 저장하면서 다른페이지를 실행할때마다 세션객체 내에있는 id를 매번 확인하기 때문 -->
	<h3>로그인 아이디 : <%=(String)session.getAttribute("id") %></h3>
	<a href="sessionLogout.jsp">로그아웃</a>
</body>
</html>