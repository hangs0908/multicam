<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="/WEB-INF/views/common/header.jsp"%>  
<body>
	<!-- Navigation -->
	<%@include file="/WEB-INF/views/common/navbar.jsp"%> 
	<br>
	<br>
	<div class="container">
     	<div class="col-md-10 col-lg-10 cl-xl-9 mx-auto">
          	<form name="searchform" method="post">
            	<div class="form-row">
            		<div class="col-md-20 col-md-2">
	            		<select class="form-control form-control-lg" id="searchOption1" aria-controls="dataTable">
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
						<select class="form-control form-control-lg" id="searchOption2" aria-controls="dataTable">
							<option value="title">도서제목</option>
							<option value="contents">도서내용</option>
							<option value="author">저자</option>
						</select>
					</div>
              		<div class="col-md-20 col-md-6">
             			<!-- 엔터키 방지 -->
             			<input hidden="hidden"/> 
               			<input type="text" id="search" class="form-control form-control-lg" placeholder="도서명을 입력하세요...">
              		</div>
              		<div class="col-md-20 col-md-2">
                		<button type="submit" id="btnSearch" class="btn btn-block btn-lg btn-primary"> 검색 </button>
              		</div>
            	</div>
          	</form>
       	</div>
       	<br>
       	<div id="layoutSidenav_content">
        	<main>
            	<div class="container-fluid">
                	<div class="card mb-4">
                    	<div class="card-header"> <i class="fas fa-table mr-1"></i><strong>검색 도서 리스트 </strong></div>
                       	<div class="card-body">
                        	<div class="table-responsive">
                            	<table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
	                                <thead>
	                                    <tr>
	                                        <th><strong>번호</strong></th>
	                                        <th><strong>제목</strong></th>
	                                        <th><strong>내용</strong></th>
	                                        <th><strong>작가</strong></th>
	                                        <th><strong>날짜</strong></th>
	                                        <th><strong>위치</strong></th>
	                                        <th><strong>조회수</strong></th>
	                                    </tr>
	                                </thead>
                                    <tbody>
                                    <c:if test="${!empty booklist}">
                                    <c:forEach var="book" items="${booklist}">
                                    	<tr>
                                        	<td>${book.bookKey}</td>
                                            <td><a href="book.do?bookKey=${book.bookKey}">${book.title}</a></td>
                                            <td>${book.author}</td>
                                            <td>${book.publisher}</td>
                                            <td>${book.pubYear}</td>
                                            <td>${book.libName}</td>
                                            <td>${book.viewcount}</td>
                                        </tr>
                                     </c:forEach>
                                     </c:if>
                                     <c:if test="${empty booklist}">
                                    <c:forEach var="book" items="${booklist}">
                                    	<tr>
                                        	<td>해당 도서는 없습니다.</td>
                                        </tr>
                                     </c:forEach>
                                     </c:if>
                                    </tbody>
                              	</table>
                            </div>
                        </div>
                    </div>
                </div>
          	</main>
		</div>
	</div>

	<!-- dataTable 기능 제거 및 위치-->
	<script>
		$("#dataTable").DataTable({   
	   
	   		dom : "<'row'<'col-sm-2'l><'col-sm-7'><'col-sm-3'f>>" +
	   			"<'row'<'col-sm-12'tr>>" +
	   			"<'row'<'col-sm-12 col-md-8'p>>",
	   		 "language":{
	   		   "url": "//cdn.datatables.net/plug-ins/1.10.9/i18n/Korean.json"
	   		 },
			"bFilter": false
		});   
	</script>  
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	   
</body>
</html>


