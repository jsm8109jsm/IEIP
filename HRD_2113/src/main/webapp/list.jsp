<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<nav>
		<a href="join.jsp">회원등록</a>
		<a href="list.jsp">회원목록조회/수정</a>
		<a href="salary.jsp">회원매출조회</a>
		<a href="index.jsp">홈으로.</a>
	</nav>
	<section>
		<h2><b>회원목록조회/수정</b></h2><br>
		<form>
			<table>
				<tr>
					<td>회원번호</td>
					<td>회원성명</td>
					<td>전화번호</td>
					<td>주소</td>
					<td>가입일자</td>
					<td>고객등급</td>
					<td>거주지역</td>
				</tr>
				<%
					request.setCharacterEncoding("UTF-8");
					Connection conn = null;
					Statement stmt = null;
					String grade="";
					try{
						conn = Util.getConnection();
						stmt = conn.createStatement();
						String sql = "select * from member_tbl_02 order by custno";
						ResultSet rs = stmt.executeQuery(sql);
						while(rs.next()){
							grade = rs.getString("grade");
							switch(grade){
							case "A":
								grade="VIP";
								break;
							case "B":
								grade="일반";
								break;
							case "C":
								grade="직원";
								break;
							}
					%>
					<tr>
						<td><%=rs.getString("custno") %></td>
						<td><%=rs.getString("custname") %></td>
						<td><%=rs.getString("phone") %></td>
						<td><%=rs.getString("address") %></td>
						<td><%=rs.getDate("joindate") %></td>
						<td><%=grade %></td>
						<td><%=rs.getString("city") %></td>
					</tr>
					<%
						}
					} catch(Exception e){
						e.printStackTrace();
					}
					%>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
</html>