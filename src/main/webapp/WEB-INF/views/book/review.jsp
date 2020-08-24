 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/common/header.jsp"%>  
<body>
	<!-- Navigation -->
	<%@include file="/WEB-INF/views/common/navbar.jsp"%> 
	
	<div class="container">
		<br>
	    <!-- Page Content -->
	    <h2 class="text-black text-center">도서 리뷰</h2>
	    <button type="button" class="btn btn-info" style="float:right">리뷰 쓰기</button>
	    
	    <br>
	    <br>
	     
	    <table class="table table-hover">
	    	<thead >
		    	<tr>
		           <th>번호</th>
		           <th>제목</th>
		           <th>작성자</th>
		           <th>작성일</th>
		           <th>조회수</th>
		        </tr>
			</thead>
	        <tbody>
		        <tr>
		           <td>01</td>
		           <td>안녕하세요 첫 글입니다</td>
		           <td>홍길동</td>
		           <td>2020.8.23</td>
		           <td>0</td>
		        </tr>
		        <tr>
		           <td>02</td>
		           <td>안녕</td>
		           <td>김길동</td>
		           <td>2020.8.23</td>
		           <td>0</td>
		        </tr>
		        <tr>
		           <td>03</td>
		           <td>안녕하세요 첫 글입니다</td>
		           <td>홍길동</td>
		           <td>2020.8.23</td>
		           <td>0</td>
		        </tr>
		        <tr>
		           <td>04</td>
		           <td>안녕</td>
		           <td>김길동</td>
		           <td>2020.8.23</td>
		           <td>0</td>
		        </tr>	        
	        </tbody>
	     </table>
	</div>

	<%@include file="/WEB-INF/views/common/footer.jsp"%>   
</body>
</html>


   