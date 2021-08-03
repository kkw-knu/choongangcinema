<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp" %>
<%@ include file="../main/header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="inner-wrap">
		<h2 style="color: #503396;" align="center">관리자페이지</h2>
		<br>
		<table class="table striped">
			<tr>
				<td><button class="btn btn-default btn-lg"
						onclick="location.href='movieList.do'"><span class="glyphicon glyphicon-film"> </span>상영영화 관리</button></td>
				<td><button class="btn btn-default btn-lg"
						onclick="location.href='cinemaList.do'"><span class="glyphicon glyphicon-facetime-video"> </span>영화관 관리</button></td>
				<td><button class="btn btn-default btn-lg"
						onclick="location.href='movieSchduleForm.do'"><span class="glyphicon glyphicon-calendar"> </span>상영일정 관리</button></td>
				<td><button class="btn btn-default btn-lg"
						onclick="location.href='adminList.do'"><span class="glyphicon glyphicon-user"> </span>회원 관리</button></td>
				<td><button class="btn btn-default btn-lg"
						onclick="location.href='List.do'"><span class="glyphicon glyphicon-star"> </span>평점게시판 관리</button></td>
			</tr>
		</table>
	</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>