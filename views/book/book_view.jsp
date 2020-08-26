<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/common/header.jsp"%>  

</head>
<body>
	<!-- Navigation -->
	<%@include file="/WEB-INF/views/common/navbar.jsp"%> 
	
	<div class="container">
	   	<br>
	   	<br>
	    <h2 class="text-black text-center"><strong>책 상세</strong></h2>
	   	<br>
	   	<br>
	    <table class="table">
	    	<tr>
		        <th width="100px"><strong>번호</strong></th>
		        <td>${book.bookKey}</td>
		        <th width="100px"><strong>조회수</strong></th>
		        <td>${book.viewcount}</td>
	       	</tr>
	        <tr>
	            <th><strong>제목</strong></th>
	            <td>${book.title}</td>
	            <th><strong>작가</strong></th>
	            <td>${book.author}</td>
	       	</tr>                  
	       	<tr>
	            <th><strong>출판사</strong></th>
	            <td>${book.publisher}</td>
	            <th><strong>출판일</strong></th>
	            <td>${book.pubYear}</td>
	       	</tr>                	
	   	</table>
	
		
		<p align = "right">
	    <button type="button" class="btn btn-primary" onclick = "location.href ='${pageContext.request.contextPath}/board.do'"><strong>목록</strong></button>               
       	</p>
	</div>
	<br> 	
	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>   
</body>
</html>
