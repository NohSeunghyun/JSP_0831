<!-- 예외 페이지의 필요성
예외적인 상황이 발생했을 경우 웹컨테이너(톰캣)에서 제공하는 기본적인 예외페이지(에러코드500)가 보여진다면
에러 페이지는 사용자가 원하는 에러페이지가 아니며 사용자가 보고 어떤 에러가 발생한지도 알 수 없다.
내용이 원하는 형태의 에러페이지로 출력하여
친근한 느낌이 느껴지는 페이지로 유도하기 위해서... 
-------------------------------------
-------------------------------------
<우선순위>
방법-1 : page 지시자의 errorPage 속성값 지정
		errorPage = "에러처리페이지.jsp"
방법-2 : web.xml 페이지의 exception-type엘리먼트 값 설정
방법-3 : web.xml 페이지의 error-code 엘리먼트 값 설정
		JSP페이지가 많을 경우 자주 보았던 404, 500오류에 대한 처리를 일일이 jsp페이지에서 설정해야함
		모든 페이지에서 오류발생시 처리할 수 있도록 web.xml에 등록하여 사용 : 편리함.
방법-4 : 아무것도 해당되지 않을 경우 웹컨테이너(톰캣)에서 제공하는 기본 에러페이지를 출력
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러가 발생하면 errorPage.jsp로 이동하여 처리함 -->
<%@ page errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorPage Test</title>
</head>
<body>
	<%
		int i = 40/0;
	%>
</body>
</html>