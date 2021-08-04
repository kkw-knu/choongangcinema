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
    	<div class="movie-detail-page">
    		<div class="bg-img" style="backgraound-image:url('resources/upload/${movie.mv_img }');"></div>
    		<div class="bg-pattern"></div>
    		<div class="bg-mask"></div>
    		<div class="movie-detail-cont">
    			<p class="title">${movie.mv_title }</p>
    			<div></div>
    			<div class="poster">
    				<div class="wrap">
    					<p class="movie-grade" style="background-image: url('resources/images/${movie.mv_grade}.png');">${movie.mv_grade}</p>
    					<img alt="${movie.mv_title }" src="resources/upload/${movie.mv_img }">
    				</div>
    			</div>
    			<div class="reserve screen-type col-1">
    				<div class="reserve">
    					<a href="#" class="btn reserve">예매하기</a>
    				</div>
    			</div>
    			<div class="info">
    				<div class="score">
    					<p class="tit">&nbsp;관객평점</p>
    					<div><em style="font-size:2.1333em;">10</em> 점</div>
    				</div>
    				<div class="btn-util rate" style="display:inline-block;">
    				<p class="tit">&nbsp;&nbsp;좋아요 수</p>
    				<button type="button" class="btn btn-like" >
    					<i class="iconset ico-heart-line"></i>
    					<span>10</span>
    				</button>
    				</div>
    			</div>
    		</div>
    	</div>
    	<div class="inner-wrap">
    	<h2>줄거리...</h2><br>
    	<div class="txt">${movie.mv_content }</div>
    	<br>
    	<div class="movie-info">
	    	<div class="line">
	    		<p>감독명 : ${movie.mv_director }</p>
	    		<p>장르 : ${movie.mv_genre }</p>
	    		<p>상영시간 : ${movie.mv_time }(분)</p>
	    		<p>영화등급 :
	    		<c:if test="${movie.mv_grade == 'age-all' }">전체이용가</c:if>
	    		<c:if test="${movie.mv_grade == 'age-12' }">12세이용가</c:if>
	    		<c:if test="${movie.mv_grade == 'age-15' }">15세이용가</c:if>
	    		<c:if test="${movie.mv_grade == 'age-18' }">청소년이용불가</c:if>
	    		</p>
	    		<p>개봉일자 : ${movie.mv_startdate }</p>
	    	</div>
    	</div>
    	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>