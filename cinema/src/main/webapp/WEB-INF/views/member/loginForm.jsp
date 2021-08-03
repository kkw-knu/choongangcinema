<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header2.jsp" %>
<%@ include file="../main/header1.jsp" %>
<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/login.css" >
</head><body>

<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">로그인</h2>
	<div class="mainbox" align="center">
		<form action="login.do" method="post" class="form-inline" style="width:400px; height: 210px;">
		  
		  <div class="mainbox2">
			<div class="form-group" style="padding: 20px 20px;">
				<input type="text" name="mid" class="form-control" placeholder="아이디" required="required" autofocus="autofocus">
			</div><br>
			<div class="form-group">
				<input type="password" name="pass" class="form-control" placeholder="비밀번호" required="required">
			</div><br>
			<div class="mainbox4">
				<button type="submit" value="확인" class="btn"><img src="resources/images/btn_login.png"></button>
		 	</div>
		  	</div>
			<div class="mainbox3"> 
				<a href="minsertForm.do"><img src="resources/images/btn_member1.png" onmouseover="this.src='resources/images/btn_member2.png'" onmouseout="this.src='resources/images/btn_member1.png'"></a>
			</div>
			
		</form>
	</div>
</div>	
</body>
</html>
<%@ include file="../main/footer.jsp"%>