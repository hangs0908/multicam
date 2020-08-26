<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<body>
	<!-- Navigation -->
	<%@include file="/WEB-INF/views/common/navbar.jsp"%> 
	
   	<!-- Header --> 
   	<header class="masthead text-white text-center">
   	<br>
 	<div class="container">
    	<div class="row">
        	<div class="col-xl-9 mx-auto">
            	<h3 class="mb-5"> 공공 도서관의 도서 검색 가능한 사이트입니다.</h3>
            </div>
            <br>
            <div class="col-md-10 col-lg-10 cl-xl-9 mx-auto">
            	<form name="searchform" method="post" action="${pageContext.request.contextPath}/book.do">
	                <div class="form-row">
                  		<div class="col-md-20 col-md-2">
                      		<select id="searchOption1"  class="form-control form-control-lg" aria-controls="dataTable">
		                  		<option value="gannam">강남구</option>
								<option value="contents">강동구</option>
								<option value="contents">강서구</option>
								<option value="contents">구로구</option>
								<option value="contents">노원구</option>
								<option value="contents">동대문구</option>
								<option value="contents">도봉구</option>
								<option value="contents">동작구</option>
								<option value="contents">마포구</option>
								<option value="contents">서대문구</option>
								<option value="contents">송파구</option>
								<option value="contents">영등포구</option>
								<option value="contents">용산구</option>
								<option value="contents">양천구</option>
								<option value="contents">종로구</option>
	                   		</select>
	                	</div>
                     	<div class="col-md-20 col-md-2">
                       		<select  id="searchOption2" class="form-control form-control-lg" aria-controls="dataTable" >
                           		<option value="title">도서제목</option>
	                           	<option value="contents">출판사</option>
	                           	<option value="author">저자</option>
                        	</select>
                    	</div>
                        <div class="col-md-20 col-md-6">
                        	<!-- 엔터키 방지 -->
                           	<input hidden="hidden"/> 
                            <input type="text" id="search" name="search" class="form-control form-control-lg" placeholder="도서명을 입력하세요...">
                       	</div>
                        <div class="col-md-20 col-md-2">
                            <button type="submit" id="btnSearch" class="btn btn-block btn-lg btn-primary" onclick="bookSearch()"> 
                            	<img class="mb-2" src="${pageContext.request.contextPath}/resources/img/search.png" alt="" width="20" height="20">  
                            </button>
                       	</div>
           			</div>
               	</form>
       		</div>
       	</div>
   	</div>
   	</header>
   	<br>
   	<br>
   	<br>
    <!-- Page Content -->
    <div class="container text-center">
   		<div class="row">
        <!-- Page Features -->
        	<div class="col-md-4">
            	<h4><strong>최근 조회 도서</strong></h4>
             	<table class="table table-bordered table-hover">
	                <thead>
		                <tr>
		                  <th><strong>번호</strong></th>
		                  <th><strong>제목</strong></th>
		                </tr>
	                </thead>
	                <tbody>
	                <c:forEach var="book" items="${booklist}" varStatus="status">
		                <tr class="active">
		                   <td>${status.count}</td>
		                   <td>${book.title}</td>
		                </tr>
		            </c:forEach>    
	                </tbody>                                
           		</table> 
       		</div>
          	<div class="col-md-8">
           		<h4><strong>베스트셀러 (Best5)</strong></h4>
	            <table class="table table-hover">
	            	<thead>
	              		<tr>
	                  		<td width="150px" height="180px">1</td>
		                  	<td width="150px" height="180px">2</td>
		                  	<td width="150px" height="180px">3</td>
		                  	<td width="150px" height="180px">4</td>
		                  	<td width="150px" height="180px">5</td>
		               </tr>
	               </thead>
	               <tbody>
		               <tr>
		                  	<td>1</td>
		                  	<td>2</td>
		                  	<td>3</td>
		                  	<td>4</td>
		                 	<td>5</td>
		               </tr>
	               </tbody>               
	            </table>
       		</div>
		</div>
  	</div>      
	<br>
   	<br>
   	<br>
   	<br>
   	<br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>   
	
<script type="text/javascript">
function bookSearch() {
	searchform.submit();
}

</script>
</body>
</html>   
   
   
    