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
		        <td>1</td>
		        <th width="100px"><strong>조회수</strong></th>
		        <td>22</td>
	       	</tr>
	        <tr>
	            <th><strong>제목</strong></th>
	            <td>제목 나오는 부분</td>
	            <th><strong>작가</strong></th>
	            <td>작가 이름 나오는 부분</td>
	       	</tr>                  
	       	<tr>
	            <th><strong>출판사</strong></th>
	            <td>출판사 나오는 부분</td>
	            <th><strong>출판일</strong></th>
	            <td>출판일 나오는 부분</td>
	       	</tr>                
	   	</table>
	
		<p align = "right">
	    <button type="button" class="btn btn-primary" onclick = "location.href ='${pageContext.request.contextPath}/boardlist.do'"><strong>목록</strong></button>               
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