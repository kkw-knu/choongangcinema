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
	$(function() { 
		$('#reviewtable').load("${path}/moviereviewlist/mv_num/${movie.mv_num}")
		$('#reviewInsert').click(function() {
			var sendData = $('#frm1').serialize();
			$.post('reviewInsert.do', sendData, function(data) {
				alert("관람평이 작성 되었습니다");
				$('#reviewtable').html(data);
				frm1.rv_content.value=""; // 댓글 지우기
			});	
		});
	});
</script>
<c:if test="${empty id }">
 <script type="text/javascript">
	$(function() {
		$('#likebutton').load("${path}/movielike/like_id_num/1/like_mv_num/${movie.mv_num}")
	});
</script>
</c:if>
<c:if test="${not empty id }">
 <script type="text/javascript">
	$(function() {
		$('#likebutton').load("${path}/movielike/like_id_num/${sessionScope.mnum}/like_mv_num/${movie.mv_num}")
		$('#likebutton').click(function() {
			var sendData = $('#frm3').serialize();
			$.post('likebutton.do', sendData, function(data) {
				$('#likebutton').html(data);
			});	
		});
	});
</script>
</c:if>
<script type="text/javascript">
	function logingo(){
		alert("로그인이 필요한 기능입니다.");
		location.href="loginForm";
	}
</script>
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
	    				<form action="" name="frm3" id="frm3">
	    				<input type="hidden" name="like_id" value="<%=session.getAttribute("mid") %>">
							<input type="hidden" name="like_mv_num" value="${movie.mv_num }">
							<input type="hidden" name="like_id_num" value="<%=session.getAttribute("mnum") %>">
	    					<div class="btn-util rate" style="display:inline-block;" id="likebutton">
							</div>
	    				</form>
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
	    	<br>
	    	<div>
		    	<h3>관람평 작성하기</h3>
		    	<h5>총 ${totalcnt } 개의 관람평이 있습니다.</h5>
	    	</div>
	    	<form action="" name="frm1" id="frm1">
			<c:if test="${empty id}">
				<div class="rv_div">
					<div class="inbox">
						<textarea id="rv_content" class="text" rows="3" cols="100" onclick="logingo()"></textarea>
						<label for="rv_content" style="display:inline;" class="guide">
							관람평을 작성하기위해서는
							<a style="font-weight:700; color:inherit; text-decoration: underline;">로그인</a>
							이 필요합니다.
						</label>
					</div>
				</div>
			</c:if>
			<c:if test="${not empty id}">
				<div class="rv_div">
					<div class="inbox">
						<div style="font-weight:700; padding-top: 10px;">
							<%=session.getAttribute("mid") %>
						</div>
						<input type="hidden" name="rv_id" value="<%=session.getAttribute("mid") %>">
						<input type="hidden" name="rv_title" value="${movie.mv_title }">
						<input type="hidden" name="rv_mv_num" value="${movie.mv_num }">
						<textarea id="rv_content" name="rv_content" class="text text2" rows="3" cols="130" placeholder="관람평을 남겨주세요"></textarea>
					</div>
					<div align="right">
						평점 : 
						<select name="rv_ev">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10" selected>10</option>
						</select>
						<input type="button" class="btn btn-defalut" value="등록하기" id="reviewInsert">
					</div>
				</div>
			</c:if>
			</form>
			<div id="reviewtable"></div>
			<div align="center">
	            <ul class="pagination">
	            	<c:if test="${pb.startPage > pb.pagePerBlock }">
	            	<script type="text/javascript">
				    	$(function() { 
				    		$('#startpage').click(function(){
				    			$('#reviewtable').load("${path}/moviereviewlist/mv_num/${mv_num}?pageNum1=1")
				    		});
				    	});
				    	$(function() { 
				    		$('#prepage').click(function(){
			    				$('#reviewtable').load("${path}/moviereviewlist/mv_num/${mv_num}?pageNum1=${pb.startPage-1 }")
			    			});
				    	});
				    	$(function() { 
				    		$('#nextpage').click(function(){
			    				$('#reviewtable').load("${path}/moviereviewlist/mv_num/${mv_num}?pageNum1=${pb.endPage+1 }")
			    			});
				    	});
				    	$(function() { 
				    		$('#endpage').click(function(){
			    				$('#reviewtable').load("${path}/moviereviewlist/mv_num/${mv_num}?pageNum1=${pb.totalPage}")
			    			});
				    	});
			    	</script>
	            		<li><button id="startpage"><span class="glyphicon glyphicon-backward"></span></button></li>
						<li><button id="prepage"><span class="glyphicon glyphicon-triangle-left"></span></button></li>
	            	</c:if>
	            	<c:forEach var="i" begin="${pb.startPage }" end="${pb.endPage }">
		            	<script type="text/javascript">
					    	$(function() { 
					    		$('#page${i}').click(function(){
				    				$('#reviewtable').load("${path}/moviereviewlist/mv_num/${mv_num}?pageNum1=${i}")
					    		});
					    	});
				    	</script>
						<c:if test="${pb.currentPage == i }">
							<li class="active"><button id="page${i}">${i}</button></li>
						</c:if>
						<c:if test="${pb.currentPage != i }">
							<li><button id="page${i}">${i}</button></li>
						</c:if>			
					</c:forEach>
	            	<c:if test="${pb.endPage < pb.totalPage}">
						<li><button id="nextpage"><span class="glyphicon glyphicon-triangle-right"></span></button></li>
						<li><button id="endpage"><span class="glyphicon glyphicon-forward"></span></button></li>
					</c:if>
	            </ul>
			</div>
    	</div>
    	<br>
	<%@ include file="footer.jsp"%>
</body>
</html>