<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중앙시네마</title>
</head>
<body>
	<%@ include file="../main/header2.jsp"%>
	<form class="form-horizontal" action="movieinsert.do" method="post">
	<input type="hidden" name="mv_title" value="${movie.mv_title }">
	<input type="hidden" name="mv_director" value="${movie.mv_director }">
	<input type="hidden" name="mv_content" value="${movie.mv_content }">
	<input type="hidden" name="mv_genre" value="${movie.mv_genre }">
	<input type="hidden" name="mv_grade" value="${movie.mv_grade }">
	<input type="hidden" name="mv_startdate" value="${movie.mv_startdate }">
	<input type="hidden" name="mv_img" value="${fileName }">
	<input type="hidden" name="mv_time" value="${movie.mv_time }">
				<br><h2 class="text-primary" align="center">등록확인</h2><br><br>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_title">영화제목 :</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="mv_title" name="mv_title" disabled="disabled" value="${movie.mv_title }">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_director">감독명 :</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="mv_director" name="mv_director" disabled="disabled" value="${movie.mv_director }">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_time">상영시간 :</label>
					<div class="col-sm-8">
						<input type="number" class="form-control" id="mv_time" name="mv_time" disabled="disabled" value="${movie.mv_time }">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_content">줄거리 :</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6" disabled="disabled" name="mv_content" id="mv_content">${movie.mv_content }</textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_genre">영화장르 :</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="mv_genre" value="${movie.mv_genre }" disabled="disabled">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_grade">영화등급 :</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="mv_grade" value="${movie.mv_grade }" disabled="disabled">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_startdate">개봉일 :</label>
					<div class="col-sm-8">
						<input type="date" class="form-control" id="mv_startdate" name="mv_startdate" value="${movie.mv_startdate }" disabled="disabled">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_img">포스터사진 <span class="glyphicon glyphicon-picture"></span></label>
					<div class="col-sm-8">
						<img alt="${fileName }" src="resources/upload/${fileName }" width="300">
					</div>
				</div>
				<div align="center">
					<input type="submit" class="btn btn-default" value="영화등록">
					<a onclick="history.back()" class="btn btn-default">돌아가기</a>
				</div>
			</form>
	<%@ include file="../main/footer.jsp"%>
</body>
</html>