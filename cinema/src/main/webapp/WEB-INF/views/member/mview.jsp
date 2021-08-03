<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp" %>
<%@ include file="../main/header2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">회원 상세정보</h2><br>
	<div align="left">
		<a href="mypage.do" id="b" class="btn btn-default">My페이지</a>
	</div>
	<table class="table table-hover">
		<tr><th>아이디</th><td>${moviem.mid}</td></tr>
		<tr><th>이름</th><td>${moviem.name}</td></tr>
		<tr><th>생년월일</th><td>${moviem.birth}</td></tr>
		<tr><th>성별</th><td>${moviem.gender}</td></tr>
		<tr><th>휴대전화</th><td>${moviem.hp}</td></tr>
		<tr><th>주소</th><td>${moviem.address}</td></tr>
		<tr><td colspan="2" align="center">
			<a class="btn btn-default" href="mupdateForm.do?mid=${moviem.mid}">수정</a>
			<a class="btn btn-default" href="delete.do?mid=${moviem.mid}">삭제</a>
		</td></tr>
		
	</table>
<%-- <a href="mlist.do?mid=${moviem.mid}" class="btn btn-default">회원목록</a> --%>

</div>

</body>
</html>
<%@ include file="../main/footer.jsp"%>