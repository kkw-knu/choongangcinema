<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중앙시네마</title>
<c:set var="id" value="${sessionScope.mid}"></c:set>
<c:set var="num" value="${sessionScope.mnum}"></c:set>
<script type="text/javascript">
	function logingo(){
		alert("로그인이 필요한 기능입니다.");
		location.href="loginForm";
	}
</script>
</head>
<body>
	<%@ include file="header2.jsp"%>
	<div class="inner-wrap">
		<br>
      	<h1>전체영화</h1>
      	<h4>총 ${total }건의 영화가 있습니다.</h4>
      	<br>
      	<c:if test="${empty list }">
			<p>영화가 없습니다.</p>
		</c:if>
		<div class="movie-list">
			<ol class="list" id="movieList">
				<c:if test="${not empty list }">
					<c:forEach var="movie" items="${list }">
					<c:if test="${empty id }">
						<script type="text/javascript">
							$(function() {
								$('#likebutton${movie.mv_num }').load("${path}/movielike1/like_id_num/1/like_mv_num/${movie.mv_num}")
							});
						</script>
					</c:if>
					<c:if test="${not empty id }">
						 <script type="text/javascript">
							$(function() {
								$('#likebutton${movie.mv_num }').load("${path}/movielike1/like_id_num/${sessionScope.mnum}/like_mv_num/${movie.mv_num}")
								$('#likebutton${movie.mv_num }').click(function() {
									var sendData = $('#frm${movie.mv_num }').serialize();
									$.post('likebutton1.do', sendData, function(data) {
										$('#likebutton${movie.mv_num }').html(data);
									});	
								});
							});
					</script>
					</c:if>
					<li tabindex="0" class="no-img" style="margin: 60px 0 0 60px;">
						<div class="movie-list-info">
							<img src="resources/upload/${movie.mv_img }" alt="${movie.mv_img }" class="poster lozad" onerror="noImg(this)">
							<div class="movie-score" style="opacity:0;">
								<a href="movieview.do?mv_num=${movie.mv_num }&pageNum=${pb.currentPage}" class="wrap movieBtn">
									<div class="summary">
										${movie.mv_content }
									</div>
									<div class="my-score big">
										<div class="preview">
											<p class="tit">관람평</p>
											<p class="number">${movie.mv_ev }<span class="ir">점</span> <!-- 별점 리뷰넣으면서 넣을거 -->
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="tit-area">
							<p class="movie-grade" style="background-image: url('resources/images/${movie.mv_grade}.png');"></p>
							<p class="tit">${movie.mv_title }</p>
						</div>
						<div class="rate-date">
							<span class="date">개봉일 : ${movie.mv_startdate }</span>
						</div>
						<div class="btn-util">
		    				<a id="likebutton${movie.mv_num }">
							</a>
							<span class="case movieStat4">
								<a href="#" class="button gblue bokdBtn">예매</a>
							</span>
						</div>
						<form action="" name="frm${movie.mv_num }" id="frm${movie.mv_num }">
		    					<input type="hidden" name="like_id" value="<%=session.getAttribute("mid") %>">
								<input type="hidden" name="like_mv_num" value="${movie.mv_num }">
								<input type="hidden" name="like_id_num" value="<%=session.getAttribute("mnum") %>">
		    			</form>
					</li>
					</c:forEach>
				</c:if>
			</ol>
		</div>
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