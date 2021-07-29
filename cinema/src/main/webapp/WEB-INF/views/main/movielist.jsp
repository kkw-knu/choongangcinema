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
      	<table class="table table-striped">
      	<tr><th>번호</th><th>영화이름</th><th>감독명</th><th>등급</th><th>개봉일</th><th>이미지사진</th></tr>
      	<c:if test="${empty list }">
			<tr><th colspan="6">영화가 없습니다</th></tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="movie" items="${list }">
				<tr><td>${movie.mv_num}</td>
					<td title="${movie.mv_title }">
						<a href="view.do?mv_num=${movie.mv_num }&pageNum=${pb.currentPage}"
							class="btn btn-info btn-sm" >${movie.mv_content }</a>
						</td>
					<td>${movie.mv_director }</td>
					<td>${movie.mv_grade }</td>
					<td>${movie.mv_startdate }</td>
					<td><img alt="${movie.mv_img }" src="resources/upload/${movie.mv_img }" width="300"></td></tr>
			</c:forEach>
		</c:if>
		</table>
            <div align="center">
	            <ul class="pagination">
	            	<c:if test="${pb.startPage > pb.pagePerBlock }">
	            		<li><a href="movielist.do?pageNum=1">
							<span class="glyphicon glyphicon-backward"></span></a></li>
						<li><a href="movielist.do?pageNum=${pb.startPage-1 }">
							<span class="glyphicon glyphicon-triangle-left"></span></a></li>
	            	</c:if>
	            	<c:forEach var="i" begin="${pb.startPage }" end="${pb.endPage }">
						<c:if test="${pb.currentPage == i }">
							<li class="active"><a href="movielist.do?pageNum=${i}">${i}</a></li>
						</c:if>
						<c:if test="${pb.currentPage != i }">
							<li><a href="movielist.do?pageNum=${i}">${i}</a></li>
						</c:if>			
					</c:forEach>
	            	<c:if test="${pb.endPage < pb.totalPage}">
						<li><a href="movielist.do?pageNum=${pb.endPage+1 }">
							<span class="glyphicon glyphicon-triangle-right"></span></a></li>
						<li><a href="movielist.do?pageNum=${pb.totalPage}">
							<span class="glyphicon glyphicon-forward"></span></a></li>
					</c:if>
	            </ul>
			</div>
			<br>
			<div align="center">
				<a href="movieinsertForm.do?mv_num=0&pageNum=1" class="btn btn-default sm">영화등록</a>
			</div>
			<br>
    </div>
	<%@ include file="footer.jsp"%>
</body>
</html>