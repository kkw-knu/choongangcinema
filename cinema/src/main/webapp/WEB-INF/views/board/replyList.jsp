<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../main/header1.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function rDelete(bno,rno) {
		var sendData = 'bno='+bno+'&rno='+rno;
		$.post('${path}/rDelete', sendData, function(data) {
			alert("댓글이 삭제 되었습니다");
			$('#rcbdListDisp').html(data);
		});
	}
	function rUpdate(bno,rno) {
/* 		input에 있는 데이터 읽어서 textarea에 넣어서 변경 해야 한다
		input, textaea(form tag안)에 데이터를 읽을 때 jquey에서 val()
		td(일반 tag안)에 있는 데이터를 읽을 때는 jquery에서는 text()  */
		var txt = $('#td_'+rno).text();
		/* 댓글 처리 클릭한 위치에 있는 문장을 텍스트 에러리어로 넣기 */
		$('#td_'+rno).html("<textarea rows='3' cols='20' id='rt'>"+
				txt+"</textarea>");
		/* 버튼 처리 클릭한 위치에 있는 수정버튼을 확인과 취소로 변경*/
		$('#btn_'+rno).html("<input type='button' onclick='up("+bno+","+
			rno+")' class='btn btn-sm btn-danger' value='확인'> "+
			"<input type='button' onclick='lst(" +bno+
			")' class='btn btn-info btn-sm' value='취소'>");
	}
	function lst(bno) {
		$('#rcbdListDisp').load("${path}/replyList/bno/"+bno)
	}
	function up(bno, rno) {
		var sendData = "replytext="+$('#rt').val()+
			"&bno="+bno+"&rno="+rno;
		$.post('${path}/rUpdate', sendData, function(data) {
			alert("수정 되었습니다");
			$('#rcbdListDisp').html(data);
		});
	}
</script>
</head><body>

<c:if test="${not empty rcbdList}">
	<h3 class="text-primary">댓글</h3>
<table class="table table-striped">
	<tr><td>작성자</td><td>내용</td><td>수정일</td><td></td></tr>
<c:forEach var="rcbd" items="${rcbdList }"> 
	<c:if test="${rcbd.del=='y' }">
		<tr><td colspan="4">삭제된 댓글입니다</td></tr>
	</c:if>
	<c:if test="${rcbd.del != 'y' }">
		<tr><td>${rcbd.replyer }<!-- 작성자 --></td>
			<td id="td_${rcbd.rno}">${rcbd.replytext }<!-- 댓글 --></td>
			<td>${rcbd.updatedate }<!-- 수정일 --></td>
<!-- 	댓글 작성자와 로그인한 사람의 아이디/이름을 비교해서 같으면 수정/삭제 권한 제공
		회원게시판 아니라서 게시글 작성자 같으면 임시로 권한 제공 -->
		<c:if test="${rcbd.replyer==board.writer }">
			<td id="btn_${rcbd.rno}"><input type="button" 
				class="btn btn-warning btn-sm"
				value="수정" 	onclick="rUpdate(${rcbd.bno},${rcbd.rno })"> 
			<input type="button" value="삭제"
					onclick="rDelete(${rcbd.bno},${rcbd.rno })" 
					class="btn btn-danger btn-sm"></td>
		</c:if>
		<c:if test="${rcbd.replyer!=board.writer }"><td></td></c:if>
		</tr>
	</c:if>
</c:forEach>
</table>
</c:if>
</body>
</html>