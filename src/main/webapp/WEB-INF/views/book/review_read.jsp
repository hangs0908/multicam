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
	    <h2 class="text-black text-center">리뷰 상세</h2>
	   	<br>
	   	<br>
	    <table class="table">
	    	<tr>
		        <th width="100px"><strong>번호</strong></th>
		        <td>1</td>
		        <th width="100px">조회수</th>
		        <td>1</td>
	       	</tr>
	        <tr>
	            <th>작성자</th>
	            <td>홍길동</td>
	            <th>작성일</th>
	            <td>2020.00.00</td>
	       	</tr>                  
	       	<tr>
	            <th>제목</th>
	            <td colspan="3">독서 후기를 남깁니다!</td>
	       	</tr>              
	        <tr>
	            <th>내용</th>
	            <td colspan="3">~~~~~날짜에 ~~~~~~~ 책을 읽었는데 ~~~~~~~ 후기를 남깁니다~
	                           		이 사이트에서 ~~~~~~~~~~~~~~ 했습니다.
	                          	 ~~구에 있는 ~~~~~ 도서관~~~~ 읽었어요~~~~~~~~~ 
	            </td>
	        </tr>                
	   	</table>
	
		<p align = "right">
	        <button type="button" class="btn btn-primary" onclick="">수정</button>
	        <button type="button" class="btn btn-primary" onclick="">삭제</button>
	        <button type="button" class="btn btn-primary" onclick="">목록</button>               
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
   
   
   
   
   