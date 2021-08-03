<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("회원 정보수정 완료");
		location.href="adminList.do";
	</script>	
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("회원 정보수정 실패");
		history.go(-1);
	</script>	
</c:if>
</body>
</html>