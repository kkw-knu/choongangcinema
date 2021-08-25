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
		<script type="text/javascript">
			alert("아이디 : ${mvlike.like_id}그리고${like_id}");
			alert("영화넘버 : ${mvlike.like_mv_num}그리고${like_id_num}");
			alert("아이디넘버 : ${mvlike.like_id_num}그리고${like_mv_num}");
			location.href = "main.do";
		</script>
	<%@ include file="footer.jsp"%>
</body>
</html>