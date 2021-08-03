<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp" %>
<%@ include file="../main/header2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">My페이지</h2><br>
<h3 style="color:#503396">나의 MBC</h3><p>
	<table class="table striped">
		<tr>
			<td><a class="btn btn-default" href="mview.do?mid=${moviem.mid }"><span class="glyphicon glyphicon-user"> </span>회원정보조회</a></td>
			<td><a class="btn btn-default" href="reList.do?mid=${moviem.mid }&pageNum=${pageNum }"><span class="glyphicon glyphicon-film"> </span>예매내역 조회</a></td> 
			<td><a class="btn btn-default" href="mupdateForm.do?mid=${moviem.mid }"><span class="glyphicon glyphicon-cog"> </span>회원정보수정</a></td>
			<td><a class="btn btn-default" href="mdeleteForm.do?mid=${moviem.mid}"><span class="glyphicon glyphicon-remove"> </span>회원탈퇴</a></td>
		</tr>
	
	</table>
</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>