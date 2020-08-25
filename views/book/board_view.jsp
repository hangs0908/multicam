<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/views/common/header.jsp"%>  
<body>
	<!-- Navigation -->
	<%@include file="/WEB-INF/views/common/navbar.jsp"%> 
	
	<div class="container">
	   	<br>
	   	<br>
	    <h2 class="text-black text-center"><strong>게시글 상세</strong></h2>
	   	<br>
	   	<br>
	    <table class="table">
	    	<tr>
		        <th width="100px"><strong>번호</strong></th>
		        <td>${board.boardno}</td>
		        <th width="100px"><strong>조회수</strong></th>
		        <td>${board.viewcount}</td>
	       	</tr>
	        <tr>
	            <th><strong>작성자</strong></th>
	            <td>${board.writer}</td>
	            <th><strong>작성일</strong></th>
	            <td>${board.boarddate}</td>
	       	</tr>                  
	       	<tr>
	            <th><strong>제목</strong></th>
	            <td colspan="3">${board.title}</td>
	       	</tr>              
	        <tr>
	            <th><strong>내용</strong></th>
	            <td colspan="3">${board.content}
	            </td>
	        </tr>   
	   	</table>
	
		<p align = "right">
	        <button type="button" class="btn btn-primary" id="cbutton" onclick="alert('권한이 없습니다.')"><strong>수정</strong></button>
	        <button type="button" class="btn btn-primary" id="dbutton" onclick="alert('권한이 없습니다.')"><strong>삭제</strong></button>
	        <button type="button" class="btn btn-primary" onclick = "location.href ='${pageContext.request.contextPath}/boardlist.do'"><strong>목록</strong></button>               
       	</p>
       	<c:if test="${!empty id}">
	       	<c:forEach var="data" items="${boardlist}">
				<c:if test="${id == data.writer}">
				   	<script>
					   	const cbutton = document.getElementById("cbutton");
					   	const dbutton = document.getElementById("dbutton");
					   	let boardno = ${board.boardno};
						cbutton.setAttribute("onclick","location.href ='${pageContext.request.contextPath}/changeboard.do?boardno="+boardno+"'");
						dbutton.setAttribute("onclick","location.href ='${pageContext.request.contextPath}/deleteboard.do?boardno="+boardno+"'");
			    	</script>
			    </c:if>
		    </c:forEach>
	    </c:if>
	</div>
	<br> 	
	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>   
</body>
</html>