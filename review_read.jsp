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
	    <h2 class="text-black text-center">리뷰 상세</h2>
	   	<br>
	   	<br>
	    <table class="table">
	    	<tr>
		        <th width="100px"><strong>번호</strong></th>
		        <td>${board.boardno}</td>
		        <th width="100px">조회수</th>
		        <td>${board.viewcount}</td>
	       	</tr>
	        <tr>
	            <th>작성자</th>
	            <td>${board.writer}</td>
	            <th>작성일</th>
	            <td>${board.boarddate}</td>
	       	</tr>                  
	       	<tr>
	            <th>제목</th>
	            <td colspan="3">${board.title}</td>
	       	</tr>              
	        <tr>
	            <th>내용</th>
	            <td colspan="3">${board.content}
	            </td>
	        </tr>   
	   	</table>
	
		<p align = "right">
	        <button type="button" class="btn btn-primary" id="cbutton" onclick="alert('권한이 없습니다.')">수정</button>
	        <button type="button" class="btn btn-primary" id="dbutton" onclick="alert('권한이 없습니다.')">삭제</button>
	        <button type="button" class="btn btn-primary" onclick = "location.href ='${pageContext.request.contextPath}/boardlist.do'">목록</button>               
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