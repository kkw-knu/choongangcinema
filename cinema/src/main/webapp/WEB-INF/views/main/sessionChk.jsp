<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head><body>

<c:set var="id" value="${sessionScope.mid}"></c:set>
<c:if test="${empty id}">
	<script type="text/javascript">
		alert("로그인 후 사용가능합니다.");
		location.href="loginForm.do";
	</script>
</c:if>

</body>
</html>