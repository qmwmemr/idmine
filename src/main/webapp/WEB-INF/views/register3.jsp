<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/include/header.jsp" />

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<a href="#"><i class="fa fa-home"></i> Home</a> <span>회원가입</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Form Section Begin -->

<!-- Register Section Begin -->
<div class="register-login-section spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-3">
				<div class="register-form">
					<h2>Register</h2>
					
					
					
					<div>
                            <div class="group-input">
                                <label for="username">Username or email address *</label>
                                <input type="text" id="username">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="text" id="pass">
                            </div>
                            <div class="group-input">
                                <label for="con-pass">Confirm Password *</label>
                                <input type="text" id="con-pass">
                            </div>
                            <button type="submit" class="site-btn register-btn">REGISTER</button>
                     </div>
                     
                     

					<div class="switch-login">
						<a href="./login.html" class="or-login"
							style="color: #252525; font-size: 14px; letter-spacing: 2px; text-transform: uppercase; position: relative;">Or
							Login</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Register Form Section End -->

<c:import url="/WEB-INF/views/include/footer.jsp" />


<script>
	$(function() {

		//회원가입 버튼 클릭시 시작
		$("#register-btn").click(function(e) {

			const id = $("#mem_id").val();
			console.log("id: " + id);

			const pw = $("#mem_pw").val();
			console.log("pw: " + pw);

			const member = {
				mem_id : id,
				mem_pw : pw
			};

			//클라이언트에서 서버와 통신하는 ajax함수(비동기 통신)
			$.ajax({
				type : "POST", //서버에 전송하는 HTTP요청 방식
				url : "/member/", //서버 요청 URI
				headers : {
					"Content-Type" : "application/json"
				}, //요청 헤더 정보
				dataType : "text", //응답받을 데이터의 형태
				data : JSON.stringify(member), //서버로 전송할 데이터
				success : function(result) { //함수의 매개변수는 통신성공시의 데이터가 저장될 곳.
					console.log("통신 성공!: " + result);
					if (result === "joinSuccess") {
						alert("회원가입에 성공했습니다!");
						location.href = "/";
					} else {
						alert("회원가입에 실패했습니다!");
					}
				}, //통신 성공시 처리할 내용들을 함수 내부에 작성.
				error : function() {
					console.log("통신 실패!");
				} //통신 실패 시 처리할 내용들을 함수 내부에 작성.
			});

		});//회원가입 버튼 클릭시 end

	}); //jquery end
</script>













