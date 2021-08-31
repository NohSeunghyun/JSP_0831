<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>

<%
	//현재페이지는 정상적으로 응답하는 페이지 임을 알려줌
	//response.setStatus(200);
	response.setStatus(HttpServletResponse.SC_OK);
	//위 코드 생략하면 웹브라우저가 자체적으로 제공하는 화면을 표시
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404에러코드 처리 페이지</title>
</head>
<body>
	<h1>404에러입니다.</h1>
	<h1>요청한 페이지는 존재하지 않습니다.</h1>
</body>
</html>