<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp" %>
<%@ include file="../main/header2.jsp" %>
<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if(frm.pass.value != frm.pass2.value){
			alert("암호가 다릅니다");
			frm.passwd.focus();
			frm.passwd.value="";
			return false;
		}
	}
</script>
</head><body>

<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">회원 탈퇴</h2><br>
	<form action="mdelete.do" onsubmit="return chk()" name="frm">
		<input type="hidden" name="mid" value="${moviem.mid}">
		<input type="hidden" name="pass2" value="${moviem.pass}">
		<div align="left">
			<a class="btn btn-default" href="mypage.do?mid=${moviem.mid}">My페이지</a>
		</div>
		<table class="table table-bordered" >
			<tr><td align="center">암호 :<input type="password" name="pass" required="required" autofocus="autofocus"></td></tr>
			<tr><td align="center"><strong>${moviem.mid}</strong>님, 탈퇴하시겠습니까?..</td></tr>
			<tr><td colspan="2" align="center"><input class="btn btn-sm btn-default" type="submit" value="확인"></td></tr>
		</table>
	</form>
</div>

</body>
</html>
<%@ include file="../main/footer.jsp"%>