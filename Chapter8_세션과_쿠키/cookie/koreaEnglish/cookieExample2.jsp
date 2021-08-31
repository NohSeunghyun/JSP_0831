<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 한국어페이지와 영어페이지를 설정한대로 볼 수 있는 예제</title>
</head>
<body>
	<%
		// 1. 쿠키 객체 생성과 동시에 쿠키이름 language에 전송된 language값을 저장한다.
		//String language = request.getParameter("language");
		//Cookie cookie = new Cookie("language",language);
		Cookie cookie = new Cookie("language",request.getParameter("language")); // 위 두 코드를 한줄로
		
		// 2. 쿠키 생존 기간(유효시간)을 24시간으로 설정한다.
		cookie.setMaxAge(60*60*24);
		
		// ★3. 응답에 생성된 쿠키객체를 추가하여 클라이언트로 반드시 전송
		response.addCookie(cookie);
	%>
	<script>
		location.href="cookieExample1.jsp";
	</script>
</body>
</html>