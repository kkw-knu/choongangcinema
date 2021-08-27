<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- movielist에 들어가는 좋아요버튼을 위한 페이지 -->
	<c:set var="id" value="${sessionScope.mid}"></c:set>
	<c:if test="${empty id}">
		<button type="button" class="button btn-like" onclick="logingo()">
    		<i class="iconset ico-heart-toggle-gray intrstType"></i>
    	<span>${totallike }</span>
    	</button>
	</c:if>
	<c:if test="${not empty id}">
		<c:if test="${result > 0 }">
		<button type="button" class="button btn-like">
    		<i class="iconset ico-heart-toggle-gray intrstType on"></i>
    		<span>${totallike }</span>
		</button>
		</c:if>
		<c:if test="${result == 0 }">
		<button type="button" class="button btn-like">
    		<i class="iconset ico-heart-toggle-gray intrstType"></i>
    		<span>${totallike }</span>
		</button>
		</c:if>
	</c:if>
</body>
</html>