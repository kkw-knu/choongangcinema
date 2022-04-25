<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="id" value="${sessionScope.mid}"></c:set>
<c:set var="num" value="${sessionScope.mnum}"></c:set>
<script type="text/javascript">
	function rvDelete(rv_num){
		var sendData = 'rv_num='+rv_num;
		$.post('${path}/rvDelete', senddata, function(data){
			alert("리뷰가 삭제되었습니다");
			$('#reviewtable').html(data);
		})
	}
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
						<span>${rv.rv_id }</span>
						<c:if test="${sessionScope.mid == 'admin'||sessionScope.mid== rv.rv_id}">
						<span style="position:absolute; right:20px; cursor: pointer;"><a>수정</a>&nbsp;&nbsp;&nbsp;<a>삭제</a></span>
						</c:if>
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