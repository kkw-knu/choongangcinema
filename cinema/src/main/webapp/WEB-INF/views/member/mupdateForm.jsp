<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp" %>
<%@ include file="../main/header2.jsp" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head><body>

<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">회원정보 수정</h2><br>
	<form action="mupdate.do" method="post">
		<input type="hidden" name="mid" value="${moviem.mid}">
		<div align="left">
			<a href="mypage.do" id="b" class="btn btn-default">My페이지</a>
		</div>
		<table class="table table-bordered">
			<tr><th>ID</th><td>${moviem.mid}</td></tr>
			<tr><th>비번</th><td><input type="password" name="pass" 
				required="required" value="${moviem.pass }"></td></tr>
			<tr><th>이름</th><td>${moviem.name}</td></tr>
			<tr><th>생년월일</th><td><input type="date" name="birth" 
				required="required" value="${moviem.birth}"></td></tr>
			<tr><th>성별</th><td>${moviem.gender}</td></tr>
			<tr><th>휴대전화</th><td><input type="text" name="hp" 
				required="required" value="${moviem.hp}"></td></tr>
			<tr><th>주소</th><td><input type="text" name="address"
				required="required" value="${moviem.address}"></td></tr>
			<tr><td colspan="2" align="center"><input class="btn btn-sm btn-default" type="submit" value="확인"></td></tr>		 
		</table>
	</form> 
</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>