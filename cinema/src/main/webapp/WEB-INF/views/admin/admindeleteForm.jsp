<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp" %>
<%@ include file="../main/header2.jsp" %>
<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head><body>
<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">회원 삭제</h2><br>
	<div align="left">
		<a href="adminList.do" class="btn btn-default">회원 리스트</a>
	</div>
	<form action="admindelete.do">
		<input type="hidden" name="mid" value="${moviem.mid}">
		<table class="table table-bordered">
			<tr><td align="center"><strong>${moviem.mid}</strong>님, 삭제하시겠습니까?..</td></tr>
			<tr>
				<td align="center">
					<input class="btn btn-sm btn-default" type="submit" value="확인">
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>