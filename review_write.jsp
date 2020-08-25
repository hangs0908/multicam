<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/common/header.jsp"%>  
<body>
	<!-- Navigation -->
   	<%@include file="/WEB-INF/views/common/navbar.jsp"%>  
   
	<div class="container">
		<br>
		<br>
	   	<h2 class="text-black text-center"><strong>리뷰 작성</strong></h2>

	   	<form class="form-horizontal" id="writeform" name="writeform" method="post" action="${pageContext.request.contextPath}/writeboard.do">
	    	<input type ="hidden" id="boardno" name="boardno" value="${board.boardno}"/>
	    	<div>
	        	<label><strong>제목</strong></label>
	            <input type="text" class="form-control" id="title" name="title" value="${board.title}">
	         </div>
	         <div>
	            <label><strong>내용</strong></label>
	            <textarea class="form-control" id="content" name="content" rows="10">${board.content}</textarea>
	         </div>
	         <br>
			<p align = "right">
		        <button type="submit" class="btn btn-primary" form="writeform">저장</button>
		        <button type="button" class="btn btn-primary" onclick="location.href ='${pageContext.request.contextPath}/boardlist.do'">취소</button>
		        <button type="button" class="btn btn-primary" onclick="location.href ='${pageContext.request.contextPath}/boardlist.do'">목록</button>               
	       	</p>
   		</form>
	</div>

   <%@include file="/WEB-INF/views/common/footer.jsp"%>   
   
   
   
   