<!-- 회원 게시판일 경우에는 불필요한 화면 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header1.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.password2.value) {
			alert("암호가 다릅니다");
			frm.password.focus();
			frm.password.value = "";
			return false;
		}
	}
</script></head><body>
<%@ include file="../main/header2.jsp" %>
<div class="container" align="center">
	<h2 class="text-primary">게시글 삭제 확인</h2>
<form action="${path}/delete" name="frm" onsubmit="return chk()">
	<input type="hidden" name="password2" value="${board.password }">
	<input type="hidden" name="num" value="${board.num }">
	<input type="hidden" name="pageNum" value="${pageNum}">
<table class="table table-hover">
	<tr><td>암호</td><td><input type="password" name="password" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><td colspan="2"><input type="submit" value="확인"></td></tr>
</table>
</form>
</div>
<%@ include file="../main/footer.jsp" %>
</body>
</html>