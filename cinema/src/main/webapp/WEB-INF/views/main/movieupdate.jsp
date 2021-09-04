<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중앙시네마</title>
</head>
<body>
	<%@ include file="header2.jsp"%>
	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("영화정보가 업데이트 되었습니다.");
			location.href = "movieview.do?mv_num=${movie.mv_num}&pageNum=1";
		</script>
	</c:if>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("영화정보 업데이트에 실패하였습니다.");
			history.back();
		</script>
	</c:if>
	<c:if test="${result < 0 }">
		<script type="text/javascript">
			alert("관리자암호가 틀렸습니다.");
			history.back();
		</script>
	</c:if>
	<%@ include file="footer.jsp"%>
</body>
</html>