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
					<h2>회원가입</h2>



					<div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								아이디 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="idChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								비밀번호 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="idChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								비밀번호 확인</label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="idChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								이름 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="idChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								별명 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="idChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								연락처 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="idChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								이메일 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="idChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								주소1 </label> <input type="text" id="mem_id" name="mem_id" readonly="readonly"
								style="border: 1px solid #ebebeb; height: 50px; width: 61%; padding-left: 20px; padding-right: 15px;">
							<input type="button" id="mem_id" value="주소찾기" name="mem_id" onclick="execution_daum_address()"
								style="border: 1px solid #ebebeb; height: 50px; width: 38%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<input type="text" id="mem_id" name="mem_id" readonly="readonly"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<input type="text" id="mem_id" name="mem_id" readonly="readonly"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								생년월일 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								성별 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								구분 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>





						<button type="submit" class="site-btn register-btn"
							id="register-btn"
							style="width: 100%; letter-spacing: 2px; margin-top: 5px;">REGISTER</button>
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

<!-- 다음 주소록 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	
	
	//다음 주소 연동
	function execution_daum_address(){
		
		new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
	            
	        	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
 
                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
 
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
	 
	        }
	    }).open();  
		
	}
	
	
	
	
	
	
	
	
	
</script>













