<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header1.jsp" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head><body>

<c:if test="${result == 1}">
	<script type="text/javascript">
		alert("${mv.mid}님, 환영홥니다.");
		location.href="main.do";
	</script>
</c:if>
<c:if test="${result == 0}">
	<script type="text/javascript">
		alert("입력된 암호가 다릅니다.");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == -1}">
	<script type="text/javascript">
		alert("아이디 / 비밀번호를 다시 확인해주세요.");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == 2}">
	<script type="text/javascript">
		alert("관리자님 환영합니다.");
		location.href="adMain.do";
	</script>
</c:if>

</body>
</html>