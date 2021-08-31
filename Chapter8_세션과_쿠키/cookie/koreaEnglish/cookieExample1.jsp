<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 기본적으로 한글페이지로 설정
	String language = "korea";
	// 쿠키가 생성되어있는지 확인하기 위해 쿠키헤더값을 가져온다.
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null) { // 생성된 쿠키가 있으면
		// 쿠키값들을 배열로 가져와
		Cookie[] cookies = request.getCookies();
		// for문 이용 : language 이름을 가진 쿠키 객체를 검색하여 language변수에 쿠키로부터 얻어온 language값을 대입한다.
		for (int i = 0 ; i < cookies.length ; i++) {
			if (cookies[i].getName().equalsIgnoreCase("language")) {
				language = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 한국어페이지와 영어페이지를 설정한대로 볼 수 있는 예제</title>
</head>
<body>
	<%if (language.equalsIgnoreCase("korea")) {%>
		<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
	<%} else { %>
		<h3>Hello. This is Cookie Example.</h3>
	<%} %>
	
	<form action="cookieExample2.jsp" method="post">
		<input type="radio" name="language" value="korea"
		<%if (language.equalsIgnoreCase("korea")) out.print("checked"); %> >한국어 페이지 보기
		<input type="radio" name="language" value="english"
		<%if (language.equalsIgnoreCase("english")) {%>checked<%}%> >영어 페이지 보기
		<input type="submit" value="설정">
	</form>
</body>
</html>
<!-- 실행 후 영어페이지 보기로 설정하고 브라우저 종료 후 다시 실행해도 영어페이지를 보여준다.
쿠키는 이처럼 클라이언트에 저장되어 환경설정을 유지할 수 있는 기능도 구현할 수 있다.
그리고 이 기능은 보안이 필요하지 않으므로 세션보다 쿠키로 사용하는 것이 훨씬 더 효율적이다. -->