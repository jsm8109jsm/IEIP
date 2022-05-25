<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="check.js"></script>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<nav>
		<a href="join.jsp">회원등록</a>
		<a href="list.jsp">회원목록조회/수정</a>
		<a href="salary.jsp">회원매출조회</a>
		<a href="index.jsp">홈으로.</a>
	</nav>
	<section>
	<h2><b>홈쇼핑 회원 등록</b></h2><br>
	<form method="post" action="action.jsp" name="frm">
	<input type="hidden" name="mode" value="insert">
<%
	Connection conn = null;
	Statement stmt = null;
	String custno=" ";
	
	try{
		conn = Util.getConnection();
		stmt = conn.createStatement();
		String sql = "select max(custno)+1 as custno from member_tbl_02";
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		custno = rs.getString("custno");
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
		<table>
			<tr>
				<td>회원번호(자동발생)</td>
				<td class="input"><input type="text" name="custno" value="<%=custno %>" readonly></td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td class="input"><input type="text" name="custname"></td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td class="input"><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>회원주소</td>
				<td class="input"><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td class="input"><input type="text" name="joindate"></td>
			</tr>
			<tr>
				<td>고객등급(A:VIP,B:일반,C:직원)</td>
				<td class="input"><input type="text" name="grade"></td>
			</tr>
			<tr>
				<td>도시코드</td>
				<td class="input"><input type="text" name="city"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" value="등록" onclick="return joinCheck()">
				<input type="button" value="조회" onclick="return search()">
				</td>
			</tr>
		</table>

	</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>