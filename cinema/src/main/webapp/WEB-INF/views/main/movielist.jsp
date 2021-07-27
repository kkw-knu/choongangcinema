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
	<div class="inner-wrap">
            <h1>movie List</h1>
            <div align="center">
		<a href="movieinsertForm.do?num=0&pageNum=1" class="btn btn-success sm">영화등록</a>
		</div>
    </div>
	<%@ include file="footer.jsp"%>
</body>
</html>