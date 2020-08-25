<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/common/header.jsp"%>  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
                       	<input type="text" class="form-control" id="userid" name="userid" data-rule-required="true" placeholder="" value ="">
               		</div>
                  	<div class="col-md-2 col-lg-2 mb-3" id="divIdCheck">
                       	<label for="inputId" >　　　　　　　　　　　　</label>
                       	<button type="button" class="btn btn-primary" id="idOverlap">중복확인</button>
                   	</div>
               		<div id="id_check"></div>
                </div>
                <div class="row">
                	<div class="col-md-6 form-group" id="divPassword">
                    	<label for="inputPassword">비밀번호</label>
                        <input type="password" class="form-control" id="userpwd" name="userpwd" data-rule-required="true" placeholder="" >
                   	</div>
                    <div class="col-md-6 form-group" id="divPasswordCheck">
                       	<label for="inputPasswordCheck" >비밀번호 확인</label>
                       	<input type="password" class="form-control" id="pwdcheck" name="pwdcheck" data-rule-required="true" placeholder="" >
                   	</div><br>
                   	<div id="pwd_check"></div>
                </div>
                <div class="mb-3" id="divName">
               		<label for="inputName">이름</label>
                    <input type="text" class="form-control onlyHangul" id="username" name="username" data-rule-required="true" placeholder="" >
                </div>
               	<div class="mb-3" id="divEmail">
                	<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                   	<input type="email" class="form-control" id="email" name="email" data-rule-required="true" placeholder="(선택)">
               	</div>
               <span id="emailCheck"></span>
               	<div class="mb-3" id="divPhoneNumber">
                	<label for="inputPhoneNumber" class="col-lg-2 control-label">전화번호</label>
                    <input type="tel" class="form-control onlyNumber" id="phone" name="phone" phonedata-rule-required="true" placeholder="(선택)">
              	</div>
              	<div class="mb-3" id="divEmail">
                	<label for="inputAddress" class="col-lg-2 control-label">주소</label>
                   	<input type="text" class="form-control" id="address" name="address" data-rule-required="true" placeholder="(선택)">
               	</div>
                <hr class="mb-4">
               	<button type="submit" class="btn btn-primary btn-lg btn-block"> 가입하기</button>
           	</form>
       	</div>
     </div>
</body>

<script type="text/javascript">

	let idCheck= 0;
	let pwdCheck = 0;
	let passwdCheck =  /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/
	let emailCheck = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	$('#idOverlap').click(function () {

		let userid = $('#userid').val();
		$.ajax({
			type:'POST',
			url: '${pageContext.request.contextPath}/idcheck.do',
			data:{userid : userid},
			success:function(data) {
				console.log(data + "data입니다.")
				if(userid == "" && data == '0') {
					$(".btn-block").attr("disabled", true);
					$("#id_check").css("color", "red");
					$("#id_check").text("아이디를 입력해주세요");
					idCheck = 0;
				}else if (data == '0') {
					idCheck = 1;
					$(".btn-block").attr("disabled", false);
					$("#id_check").css("color", "blue");
					$("#id_check").text("아이디 사용 가능");
				}else if(data == '1') {
					$(".btn-block").attr("disabled", true);
					$("#id_check").css("color", "red");
					$("#id_check").text("아이디가 중복입니다");
					idCheck = 0;
				}
			},
			error:function(e) {
				error = e;
				log(e);
				log("실패");
			}
		})
	});
	
	
	
	$("#pwdcheck").blur(function () {
		if($("#userpwd").val()!=$("#pwdcheck").val()) {
			if($("#pwdcheck").val()!="") {
				$("#pwd_check").text("비밀번호가 일치하지 않습니다.");
				$("#pwd_check").css("color", "red");
				$("#pwdcheck").focus();
				$(".btn-block").attr("disabled", true);
			} else {
				$("#pwd_check").text("");
				$(".btn-block").attr("disabled", false);
			}
			
		}
		
	})
	$("#userpwd").blur(function () {
		if(passwdCheck.test($("#userpwd").val()) == false) {
			console.log("확")
			$("#pwd_check").text("숫자,영문자,특수문자 조합으로 8자리 이상 사용해야 합니다.");
			$("#pwd_check").css("color", "red");
			$("#userpwd").focus();
			$(".btn-block").attr("disabled", true);
			
		} else {
			$("#pwd_check").text("");
			$(".btn-block").attr("disabled", false);
		}
	})
	
	
	$("#email").blur(function () {
		if(emailCheck.test($("#email").val()) == false) {
			$("#emailCheck").text("email형식에 맞지 않습니다.");
			$("#emailCheck").css("color", "red");
			$(".btn-block").attr("disabled", true);
			
		} else {
			$("#emailCheck").text("");
			$(".btn-block").attr("disabled", false);
		}
	})
	
	
	
	/* $("#pwdcheck").on({
		blur() {
			if($("#pwd").val()!=$("#pwdcheck").val()) {
				if($("#pwdcheck").val()!="") {
					$("#pwd_check").text("비밀번호가 일치하지 않습니다.");
					$("#pwd_check").css("color", "red");
					$("#pwdcheck").focus();
				}
				
			}
		}
	}) */
	
	
	
</script>
</html>