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
			<form class="form-horizontal" action="movieinsertchk.do" method="post" enctype="multipart/form-data">
				<br><h2 class="text-primary" align="center">영화등록하기</h2><br><br>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_title">영화제목 :</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="mv_title" name="mv_title" required="required" autofocus="autofocus" placeholder="영화제목을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_director">감독명 :</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="mv_director" name="mv_director" required="required" placeholder="감독명을 입력하세요">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_time">상영시간 :</label>
					<div class="col-sm-8">
						<input type="number" class="form-control" id="mv_time" name="mv_time" required="required" placeholder="상영시간(분)으로 입력해주세요 ex)120">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_content">줄거리 :</label>
					<div class="col-sm-8">
						<textarea class="form-control" rows="6" placeholder="줄거리 내용을 입력하세요" name="mv_content" id="mv_content"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_genre">영화장르 :</label>
					<div class="col-sm-8">
						<div class="checkbox">
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="액션"> 액션
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="드라마"> 드라마
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="애니메이션"> 애니메이션
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="코미디"> 코미디
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="범죄"> 범죄
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="멜로/로멘스"> 멜로/로멘스
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="어드벤처"> 어드벤처
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="스릴러"> 스릴러
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="공포(호러)"> 공포(호러)
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="전쟁"> 전쟁
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="미스터리"> 미스터리
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="SF"> SF
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="성인물"> 성인물
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="가족"> 가족
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="판타지"> 판타지
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="기타"> 기타
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="사극"> 사극
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="다큐"> 다큐
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="공연"> 공연
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" name="mv_genre" value="뮤지컬"> 뮤지컬
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_grade">영화등급 :</label>
					<div class="col-sm-8">
						<div class="radio">
							<label class="radio-inline">
								<input type="radio" name="mv_grade" value="age-all" checked="checked"> 전체이용가
							</label>
							<label class="radio-inline">
								<input type="radio" name="mv_grade" value="age-12"> 12세이용가
							</label>
							<label class="radio-inline">
								<input type="radio" name="mv_grade" value="age-15"> 15세이용가
							</label>
							<label class="radio-inline">
								<input type="radio" name="mv_grade" value="age-18"> 18세이용가
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="mv_startdate">개봉일 :</label>
					<div class="col-sm-8">
						<input type="date" class="form-control" id="mv_startdate" name="mv_startdate" required="required">
					</div>
				</div>
				<div class="form-group" id="img">
					<label class="control-label col-sm-2" for="mv_img">포스터사진 <span class="glyphicon glyphicon-picture"></span></label>
					<div class="col-sm-8">
						<input type="file" class="btn btn-default" id="file" name="file" required="required">
					</div>
				</div>
				<div align="center">
					<input type="submit" class="btn btn-default" value="등록하기">
					<button onclick="history.back()" class="btn btn-default sm">돌아가기</button>
				</div>
			</form>
    </div>
	<%@ include file="footer.jsp"%>
</body>
</html>