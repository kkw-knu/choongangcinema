<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/sessionChk.jsp" %>
<%@ include file="../main/header2.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">회원 목록</h2><br>
	<table class="table striped">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>성별</th>
			<th>주소</th>
			<th>수정</th>
			<th>탈퇴</th>
		</tr>
		<c:if test="${empty list}">
			<tr><th colspan="5">데이터가 없습니다</th></tr>
		</c:if>
		<c:if test="${not empty list}">
			<c:forEach var="moviem" items="${list}">
				<tr>
				<c:if test="${moviem.del=='y' }">
				
					<th colspan="5">삭제된 회원 입니다</th>
				</c:if>
				<c:if test="${moviem.del!='y' }">	
					<td>${moviem.mid}</td>
					<td><a class="btn btn-default" 
					href="mview.do">${moviem.name}</a></td>
					<td>${moviem.gender }</td>
					<td>${moviem.address }</td>
					<td><a class="btn btn-default" 
					href="mupdateForm.do">수정</a></td>
					<td><a class="btn btn-default" 
					href="deleteForm.do">삭제</a></td>
				</c:if>
					</tr>
					
			</c:forEach>
		</c:if>
	
	</table>
	<a class="btn btn-info" href="minsertForm.do" class="btn btn-default">회원가입</a>

</div>
</body>
</html>
<%@ include file="../main/footer.jsp"%>


