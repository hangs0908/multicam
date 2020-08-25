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
	    <!-- Page Content -->
	    <h2 class="text-black text-center">도서 리뷰</h2>
	   
	    <button type="button" class="btn btn-info" id = "wrbutton" style="float:right"
	     onclick = "location.href ='${pageContext.request.contextPath}/writeboard.do'">리뷰 쓰기</button>
	     <c:if test="${empty id}">
	    	<script>
		    	const wrbutton = document.getElementById("wrbutton");
				wrbutton.setAttribute("onclick","location.href ='${pageContext.request.contextPath}/login.do'");
	    	</script>
	    </c:if>
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
		        <c:forEach var="data" items="${boardlist}">
		        <tr>
		           <td>${data.boardno}</td>
		           <td><a href="viewboard.do?boardno=${data.boardno}">${data.title}</a></td>
		           <td>${data.writer}</td>
		           <td>${data.boarddate}</td>
		           <td>${data.viewcount}</td>
		        </tr>
		        </c:forEach>
	        </tbody>
	     </table>
	</div>

	<%@include file="/WEB-INF/views/common/footer.jsp"%>   
</body>
</html>