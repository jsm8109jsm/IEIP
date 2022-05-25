<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리</title>
</head>
<link rel="stylesheet" href="style.css">
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<nav>
		<a href="join.jsp">회원등록</a>
		<a href="list.jsp">회원목록조회/수정</a>
		<a href="salary.jsp">회원매출조회</a>
		<a href="index.jsp">홈으로.</a>
	</nav>
	<section>
		<h1><b>쇼핑몰 회원관리 프로그램</b></h1>
		쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.<br>
		프로그램 작성 순서<br>
		1. 회원정보 테이블을 생성한다.<br>
		2. 매출정보 테이블을 생성한다.<br>
		3. 회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.<br>
		4. 회원정보 입력 화면프로그램을 작성한다.<br>
		5. 회원정보 조회 프로그램을 작성한다.<br>
		6. 회원매출정보 조회 프로그램을 작성한다.<br>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>