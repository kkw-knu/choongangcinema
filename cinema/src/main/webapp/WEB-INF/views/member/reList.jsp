<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp"%>
<%@ include file="../main/header2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){ 
	$('#Btn').click(function() {
		var result = confirm('예매를 취소하시겠습니까?'); 
		if(result) { //yes 
			location.replace('redelete.do'); } 
		else { //no 
			return false;
			} }); 
	});
</script>
</head>
<body>
	<div class="inner-wrap">
		<h2 style="color: #503396;" align="center">예매내역</h2>
		<br>
		<table class="table table-hover">
			<tr>
				<th>번호</th>
				<th>영화관</th>
				<th>영화명</th>
				<th>좌석</th>
				<th>시작시간</th>
				<th>가격</th>
				<th>성인</th>
				<th>청소년</th>
				<th>어린이</th>
				<th>예매일</th>
				<th>취소</th>
			</tr>
			<c:if test="${empty resvlist}">
				<tr>
					<th colspan="11" align="center">예매내역이 없습니다</th>
				</tr>
			</c:if>
			<c:if test="${not empty resvlist}">
				<c:forEach var="resv" items="${resvlist}">
					<tr>
						<td>${no}</td>
						<td>${resv.cname }</td>
						<td>${resv.mname }</td>
						<td>${resv.seatNo }</td>
						<td>${resv.startTime }</td>
						<td>${resv.price }</td>
						<td>${resv.numAdult }</td>
						<td>${resv.numTeenager }</td>
						<td>${resv.numChild }</td>
						<td>${resv.dayReserve }</td>
						<td><a class="btn btn-sm btn-danger"
							href="redelete.do?resnum=${resv.resnum}" id="Btn">예매취소</a></td>
					</tr>
					<c:set var="no" value="${no - 1 }"></c:set>
				</c:forEach>
			</c:if>
		</table>
		<div align="center">
			<ul class="pagination">
				<c:if test="${pp.startPage > pp.pagePerBlock }">
					<li><a href="reList.do?pageNum=${pp.startPage-1}"> <span
							class="glyphicon glyphicon-triangle-left"></span>
					</a></li>
				</c:if>
				<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage }">
					<c:if test="${pp.currentPage==i }">
						<li class="active"><a href="reList.do?pageNum=${i}">${i}</a></li>
					</c:if>
					<c:if test="${pp.currentPage!=i }">
						<li><a href="reList.do?pageNum=${i}">${i}</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${pp.endPage < pp.totalPage }">
					<li><a href="reList.do?pageNum=${pp.endPage+1}"> <span
							class="glyphicon glyphicon-triangle-right"></span>
					</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>