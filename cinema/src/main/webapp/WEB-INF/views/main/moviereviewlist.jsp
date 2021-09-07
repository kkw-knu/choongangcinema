<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>
<c:if test="${empty rvlist}">
	<h2> 아직까지 등록된 관람평이 없습니다.</h2>
</c:if>
<c:if test="${not empty rvlist}">
	<c:forEach var="rv" items="${rvlist }">
		<div class="rv_div">
				<div class="inbox">
					<div style="font-weight:700; padding-top: 10px;">
						${rv.rv_id }
					</div>
					<div>
						<span id="rv_${rv.rv_num }">${rv.rv_content }</span>
					</div>
					<div>
						<span>${rv.rv_date }</span>
					</div>
					<div align="right">
						<span>평점 : ${rv.rv_ev }</span>
					</div>
				</div>
			</div>
	</c:forEach>
</c:if>
</body>
</html>