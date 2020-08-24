<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/common/header.jsp"%>  
<body class="bg-light">
	<div class="container">
		<div class="py-5 text-center">
	    	<h2 class="text-black text-center">회원가입</h2>
	       	<p class="lead">회원가입 완료 후, 리뷰 작성 가능합니다.</p>
	   	</div>
        <hr/>
        <div class="col-md-12 order-md-1">
        	<h4 class="mb-3">회원 정보 입력</h4>
            <form class="form-horizontal" id="signupform" name="signupform" method="post" action="">
            	<div class="row">
                	<div class="col-md-10 col-lg-10 mb-3 " id="divId">
                    	<label for="inputId">아이디</label>
                       	<input type="text" class="form-control" id="id" name="id" data-rule-required="true" placeholder="" >
               		</div>
                  	<div class="col-md-2 col-lg-2 mb-3" id="divIdCheck">
                       	<label for="inputId" >　　　　　　　　　　　　</label>
                       	<button type="button" class="btn btn-primary" id="id_overlap_button" onclick="id_overlap_check()">중복확인</button>
                   	</div>
                </div>
                <div class="row">
                	<div class="col-md-6 form-group" id="divPassword">
                    	<label for="inputPassword">비밀번호</label>
                        <input type="password" class="form-control" id="pwd" name="pwd" data-rule-required="true" placeholder="" >
                   	</div>
                    <div class="col-md-6 form-group" id="divPasswordCheck">
                       	<label for="inputPasswordCheck" >비밀번호 확인</label>
                       	<input type="password" class="form-control" id="pwdcheck" name="pwdcheck" data-rule-required="true" placeholder="" >
                   	</div>
                </div>
                <div class="mb-3" id="divName">
               		<label for="inputName">이름</label>
                    <input type="text" class="form-control onlyHangul" id="name" name="name" data-rule-required="true" placeholder="" >
                </div>
               	<div class="mb-3" id="divEmail">
                	<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                   	<input type="email" class="form-control" id="email" name="email" data-rule-required="true" placeholder="(선택)">
               	</div>
               	<div class="mb-3" id="divPhoneNumber">
                	<label for="inputPhoneNumber" class="col-lg-2 control-label">전화번호</label>
                    <input type="tel" class="form-control onlyNumber" id="phonenum" name="phonenum" phonedata-rule-required="true" placeholder="(선택)">
              	</div>
                <hr class="mb-4">
               	<button type="submit" class="btn btn-primary btn-lg btn-block"> 가입하기</button>
           	</form>
       	</div>
     </div>
</body>
</html>