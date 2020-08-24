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
	                                        <th><strong>조회수</strong></th>
	                                    </tr>
	                                </thead>
                                    <tbody>
                                    	<tr>
                                        	<td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                            <td>$320,800</td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011/07/25</td>
                                            <td>$170,750</td>
                                        </tr>
                                        <tr>
                                            <td>Ashton Cox</td>
                                            <td>Junior Technical Author</td>
                                            <td>San Francisco</td>
                                            <td>66</td>
                                            <td>2009/01/12</td>
                                            <td>$86,000</td>
                                        </tr>
                                        <tr>
                                            <td>Cedric Kelly</td>
                                            <td>Senior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2012/03/29</td>
                                            <td>$433,060</td>
                                        </tr>
                                        <tr>
                                            <td>Airi Satou</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>33</td>
                                            <td>2008/11/28</td>
                                            <td>$162,700</td>
                                        </tr>
                                        <tr>
                                            <td>Brielle Williamson</td>
                                            <td>Integration Specialist</td>
                                            <td>New York</td>
                                            <td>61</td>
                                            <td>2012/12/02</td>
                                            <td>$372,000</td>
                                        </tr>
                                        <tr>
                                            <td>Herrod Chandler</td>
                                            <td>Sales Assistant</td>
                                            <td>San Francisco</td>
                                            <td>59</td>
                                            <td>2012/08/06</td>
                                            <td>$137,500</td>
                                        </tr>
                                        <tr>
                                            <td>Rhona Davidson</td>
                                            <td>Integration Specialist</td>
                                            <td>Tokyo</td>
                                            <td>55</td>
                                            <td>2010/10/14</td>
                                            <td>$327,900</td>
                                        </tr>
                                        <tr>
                                            <td>Colleen Hurst</td>
                                            <td>Javascript Developer</td>
                                            <td>San Francisco</td>
                                            <td>39</td>
                                            <td>2009/09/15</td>
                                            <td>$205,500</td>
                                        </tr>
                                        <tr>
                                            <td>Sonya Frost</td>
                                            <td>Software Engineer</td>
                                            <td>Edinburgh</td>
                                            <td>23</td>
                                            <td>2008/12/13</td>
                                            <td>$103,600</td>
                                        </tr>
                                        <tr>
                                            <td>Jena Gaines</td>
                                            <td>Office Manager</td>
                                            <td>London</td>
                                            <td>30</td>
                                            <td>2008/12/19</td>
                                            <td>$90,560</td>
                                        </tr>
                                        <tr>
                                            <td>Quinn Flynn</td>
                                            <td>Support Lead</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2013/03/03</td>
                                            <td>$342,000</td>
                                        </tr>
                                        <tr>
                                            <td>Charde Marshall</td>
                                            <td>Regional Director</td>
                                            <td>San Francisco</td>
                                            <td>36</td>
                                            <td>2008/10/16</td>
                                            <td>$470,600</td>
                                        </tr>
                                        <tr>
                                            <td>Haley Kennedy</td>
                                            <td>Senior Marketing Designer</td>
                                            <td>London</td>
                                            <td>43</td>
                                            <td>2012/12/18</td>
                                            <td>$313,500</td>
                                        </tr>
                                        <tr>
                                            <td>Tatyana Fitzpatrick</td>
                                            <td>Regional Director</td>
                                            <td>London</td>
                                            <td>19</td>
                                            <td>2010/03/17</td>
                                            <td>$385,750</td>
                                        </tr>
                                        <tr>
                                            <td>Michael Silva</td>
                                            <td>Marketing Designer</td>
                                            <td>London</td>
                                            <td>66</td>
                                            <td>2012/11/27</td>
                                            <td>$198,500</td>
                                        </tr>
                                        <tr>
                                            <td>Paul Byrd</td>
                                            <td>Chief Financial Officer (CFO)</td>
                                            <td>New York</td>
                                            <td>64</td>
                                            <td>2010/06/09</td>
                                            <td>$725,000</td>
                                        </tr>
                                        <tr>
                                            <td>Gloria Little</td>
                                            <td>Systems Administrator</td>
                                            <td>New York</td>
                                            <td>59</td>
                                            <td>2009/04/10</td>
                                            <td>$237,500</td>
                                        </tr>
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


