<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../main/header2.jsp"%>
<%@ include file="../main/header1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('#midChk').click(function() {
			var sendData = "mid="+$('#mid').val();
			if ($('#mid').val()=="") {
				alert("ID 입력하고 체크하세요 ");
				frm.mid.focus(); return false; 	}
			$.post('midChk.do',sendData, function(data) {
				alert(data);	  
			});
		});
	});
	function chk2() {
		if (frm.mid.value.length < 4 || frm.mid.value.length > 12 ) {
			alert("아이디는 4 - 12글자");
			frm.mid.focus();
			return false;
		}
		var reg_pw = 
			 /^.*(?=.{4,8})(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@!#$*()_&]).*$/; 
		if(!reg_pw.test(frm.pass.value)) { 
			alert("비밀번호는4~8자 영문 대 소문자, 숫자, 특수문자를 사용하세요."); 
			frm.pass.focus(); 
			return false;
		}
		return true;
	}
</script>

</head>
<body>
	<div class="inner-wrap">
		<form action="minsert.do" name="frm" method="post"
			onsubmit="return chk2()">

			<h2 style="color: #503396;" align="center">회원정보 입력</h2>
			<br>
			<table class="table table-hover">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="mid" required="required"
						autofocus="autofocus" id="mid"> * 4~12자 &nbsp; <input
						class="btn btn-sm btn-default" type="button" id="midChk"
						value="중복체크"></td>
				</tr>
				<tr>
					<th scope="row">비밀번호</th>
					<td><input type="password" name="pass" class="txt t02"
						max="12" min="4" required="required"> * 4~8자의 영문, 숫자,
						특수문자( ! # $ * ( ) _ = |) 조합</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="date" name="birth" required="required"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><select name=gender>
							<option value="male" selected="selected">남자</option>
							<option value="female">여자</option>
					</select></td>
				</tr>
				<tr>
					<th>휴대전화</th>
					<td><input type="tel" name="hp" required="required"
						pattern="\d{3}-\d{3,4}-\d{4}" title="전화번호 형식 3-3,4-4"
						placeholder="010-1111-1111"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" required="required"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input
						class="btn btn-sm btn-default" type="submit" value="확인"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>