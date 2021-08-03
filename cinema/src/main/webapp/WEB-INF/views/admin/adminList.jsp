<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../main/header2.jsp" %>
<%@ include file="../main/sessionChk.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title></head><body>
<div class="inner-wrap">
	<h2 style="color: #503396;" align="center">회원 리스트</h2><br>
	<table class="table table-hover">
		<tr>
		<th>번호</th>
		<th>ID</th>
		<th>이름 </th>
		<th>생년월일</th>
		<th>성별</th>
		<th>휴대전화</th>
		<th>주소</th>
		<th>가입일</th>
		<th></th>
		<th></th>
	</tr>
	<c:if test="${pp.total == 0 }">
		<tr><th colspan="10">데이터가 없습니다</th></tr>
	</c:if>
	<c:if test="${pp.total > 0 }">
		<c:forEach var="moviem" items="${list}">
			<tr><td>${no}</td>
			<c:if test="${moviem.del=='y' }">
				<th colspan="10">삭제된 회원 입니다</th>
			</c:if>
			<c:if test="${moviem.del!='y' }">
				<td>${moviem.mid}</td>
				<td>${moviem.name }</td><td>${moviem.birth }</td>
				<td>${moviem.gender}</td><td>${moviem.hp}</td><td>${moviem.address}</td>
				<td>${moviem.joindate}</td>
				<td><a class="btn btn-success btn-sm"
				 href="adminupdateForm.do?mid=${moviem.mid}&pageNum=${pp.currentPage}">수정</a></td>
				<td><a class="btn btn-warning btn-sm" 
				href="admindeleteForm.do?mid=${moviem.mid}&pageNum=${pp.currentPage}">삭제</a></td>			
			</c:if></tr>
				<c:set var="no" value="${no - 1}"></c:set>
		</c:forEach>
	</c:if>
</table>

<div align="center">
<ul class="pagination">
	<c:if test="${pp.startPage > pp.pagePerBlock }">
		<li><a href="adminList.do?pageNum=${pp.startPage-1}&search=${search}&keyword=${keyword}">
			<span class="glyphicon glyphicon-triangle-left"></span>
		</a></li>
	</c:if>
	<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage }">
		<c:if test="${pp.currentPage==i }">
			<li class="active">
				<a href="adminList.do?pageNum=${i}&search=${search}&keyword=${keyword}">${i}</a></li>
		</c:if>
		<c:if test="${pp.currentPage!=i }">
			<li><a href="adminList.do?pageNum=${i}&search=${search}&keyword=${keyword}">${i}</a></li>
		</c:if>						 
	</c:forEach>
	<c:if test="${pp.endPage < pp.totalPage }">
		<li><a href="adminList.do?pageNum=${pp.endPage+1}&search=${search}&keyword=${keyword}">
			<span class="glyphicon glyphicon-triangle-right"></span>
		</a></li>
	</c:if>		
</ul>
</div>
<div align="center">
	<form action="adminList.do">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="mid" value="${moviem.mid}">
		<select name="search">
		<c:forTokens var="s" items="mid,name,subcon" 
			delims=","	varStatus="vs">
			<c:if test="${s==search}">
				<option value="${s}" selected="selected">${ops[vs.index] }</option>
			</c:if>
			<c:if test="${s!=search}">
				<option value="${s}">${ops[vs.index] }</option>
			</c:if>
		</c:forTokens>
		</select>
		<input type="text" name="keyword" value="${keyword}">
		<input class="btn btn-sm btn-default" type="submit" value="확인">
	</form>	
</div>
</div>



</body>
</html>
<%@ include file="../main/footer.jsp" %>

