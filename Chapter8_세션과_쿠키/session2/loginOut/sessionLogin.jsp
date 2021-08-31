<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Login</title>
<style>
	#loginArea {
		width: 400px;
		margin: auto;
		border: 1px solid black;
	}
	table {
		margin: auto;
	}
	td {
		text-align: center;
	}
</style>
</head>
<body>
	<section id="loginArea">
		<form action="sessionLogin2.jsp" method="post">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" autofocus></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" value="로그인">
						<input type="reset" value="다시 작성">
					</th>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>