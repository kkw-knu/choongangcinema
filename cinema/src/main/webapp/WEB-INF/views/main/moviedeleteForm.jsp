<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중앙시네마</title>
<style>
	.deleteForm{position:relative; width:1100px; height:70%; margin:0 auto; padding: 55px 0 0 0; } 
	.deleteForm .deleteimage{width: 260px; height: 374px; overflow:hedden; position:absolute;top:45px; left:0;}
	.deleteForm .deleteimage img{display:block; width:100%; height:100%; border-radius:10px;}
	.deleteForm .deleteimage .movie-grade{overflow:hidden; position: absolute; left:10px; top:10px; z-index:4;}
	.deleteForm .deleteinfo{position:absolute; left:320px; height: 374px; top:45px;}
</style>
</head>
<body>
	<%@ include file="header2.jsp"%>
	<div class="inner-wrap">
	<div class="deleteForm">
    	<div class="deleteimage">
    		<img alt="${movie.mv_title }" src="resources/upload/${movie.mv_img }">
    		<p class="movie-grade" style="background-image: url('resources/images/${movie.mv_grade}.png');">${movie.mv_grade}</p>
    	</div>
    	<div class="deleteinfo">
    		<p>제목 : ${movie.mv_title }</p>
    		<p>장르 : ${movie.mv_genre }</p>
    		<p>감독 : ${movie.mv_director }</p>
    		<p>개봉일 : ${movie.mv_startdate }</p>
    		<p>상영시간 : ${movie.mv_time }</p>
    		<p>평점 : ${movie.mv_ev }</p><br>
    		<div align="center">
				<a style="color: red;">주의 : 영화삭제시 관련된 모든 테이블정보가 삭제됩니다.</a><br>
				<a style="color: red;">삭제를 원하시면 관리자 비밀번호를 한번더 입력해주세요</a><br>
				<div class="form-group">
					<form action="moviedelete.do">
						<input type="hidden" name="mv_num" value="${movie.mv_num }">
						<input type="password" name="adminPW" class="form-control"><br>
						<input type="submit" class="btn btn-default" value="삭제하기">
						<button onclick="history.back()" class="btn btn-default sm">돌아가기</button>
					</form>
				</div>
			</div>
    	</div>
    </div>
    </div>
	<%@ include file="footer.jsp"%>
</body>
</html>