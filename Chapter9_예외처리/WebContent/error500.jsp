<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<title>500에러코드 처리 페이지</title>
</head>
<body>
	<h1>500에러입니다.</h1>
	<h1>죄송합니다.서비스 실행 중 오류가 발생했습니다.</h1>
	<h1>잠시 후 다시 시도해 보세요.</h1>
</body>
</html>