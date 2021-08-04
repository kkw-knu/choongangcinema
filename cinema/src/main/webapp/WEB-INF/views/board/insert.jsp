<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header1.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<%@ include file="../main/header2.jsp" %>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("입력 되었습니다");
		location.href="list.do?pageNum=${pageNum}";
	</script>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("입력이 실패했습니다");
		history.back();
	</script>
</c:if>
<%@ include file="../main/footer.jsp" %>
</body>
</html>