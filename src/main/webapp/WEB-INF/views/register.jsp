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
								비밀번호 </label> <input type="password" id="mem_pw" name="mem_pw"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="pwChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								비밀번호 확인</label> <input type="password" id="mem_pw_check" name="mem_pw_check"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="pwChk2"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								이름 </label> <input type="text" id="mem_name" name="mem_name"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="nameChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								별명 </label> <input type="text" id="mem_nickname" name="mem_nickname"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="nicknameChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								연락처 </label> <input type="text" id="mem_mobile" name="mem_mobile"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="mobileChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								이메일 </label> <input type="text" id="mem_email" name="mem_email"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="emailChk"></div>
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								주소 </label> <input type="mem_addr1" id="mem_addr1" name="mem_id" readonly="readonly"
								style="border: 1px solid #ebebeb; height: 50px; width: 61%; padding-left: 20px; padding-right: 15px;">
							<input type="button" id="mem_addr_btn" value="주소찾기" name="mem_addr_btn" onclick="execution_daum_address()"
								style="border: 1px solid #ebebeb; height: 50px; width: 38%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<input type="text" id="mem_addr2" name="mem_addr2" readonly="readonly"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<input type="text" id="mem_addr3" name="mem_addr3" readonly="readonly"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>
						<div class="group-input" style="margin-bottom: 25px;">
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								생년월일 </label> <input type="date" id="mem_birth" name="mem_birth" 
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
						</div>
						
						<div class="group-input" style="margin-bottom: 25px;" >
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								성별 </label> 
								
								<div id="gender_radio" 
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
								<form style="margin-top: 10px;" align="center">
								<input type='radio' name='mem_gender' value=1 checked="checked" style="width : 3%" /> <a>남</a> &nbsp;&nbsp;&nbsp;
								<input type='radio' name='mem_gender' value=2 style="width : 3%" /> <a>여</a>
								</form>
								</div>
						</div>
						
						<div class="group-input" style="margin-bottom: 25px;" >
							<label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								구분 </label> 
								
								<div id="check_radio" 
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
								<form style="margin-top: 10px;" align="center">
								<input type="radio" name="mem_check" value=1 checked="checked" style="width : 3%" /> <a>구매자</a> &nbsp;&nbsp;&nbsp;
								<input type="radio" name="mem_check" value=2 style="width : 3%" /> <a>판매자</a>
								</form>
								</div>
						</div>

						<button type="submit" class="site-btn register-btn"
							id="register-btn"
							style="width: 100%; letter-spacing: 2px; margin-top: 5px;">확인</button>
					</div>

					<div class="switch-login">
						<a href="./login.html" class="or-login"
							style="color: #252525; font-size: 14px; letter-spacing: 2px; text-transform: uppercase; position: relative;">
							로그인</a>
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

		const getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
		const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
		//이름과 별명 정규식(한글과 영어만 가능)
		const getName= RegExp(/^[가-힣a-zA-Z]+$/);
		const getNumber = RegExp(/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/);
		const getEmail = RegExp(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/);

		
		let chk1 = false, chk2 = false, chk3 = false, chk4 = false, chk5 = false, chk6 = false, chk7 = false;

		//회원가입 검증~~
		//ID 입력값 검증.
		$('#mem_id').on('keyup', function() {
			
			//아이디 빈창
			if($("#mem_id").val() === ""){
				$("#idChk").html("<b style='font-size:14px; color:red;'>[ID는 필수 입력]</b>")
				chk1 = false;
			}
			
			//아이디 유효성검사
			else if(!getIdCheck.test($("#mem_id").val())){
				$("#idChk").html("<b style='font-size:14px; color:red;'>[규정에 맞지 않습니다(4~14자의 영문혹은 숫자)]</b>")
				chk1 = false;
			} 
			//ID 중복확인 비동기 처리
			else {
				//ID 중복확인 비동기 통신
				const id = $(this).val();
				console.log(id);
				
				$.ajax({
					type: "POST",
					url: "/member/checkId",	
					headers: {
		                "Content-Type": "application/json"
		            },
					dataType: "text",
					data: id,
					success: function(result) {
						if(result === "Y") {
							$("#idChk").html("<b style='font-size:14px; color:green;'>[사용가능한 아이디 입니다]</b>");						
							chk1 = true;
						} else {
							$("#idChk").html("<b style='font-size:14px; color:red;'>[중복된 아이디 입니다]</b>");						
							chk1 = false;
						}
					},
					error: function() {
						console.log("통신 실패!");
					}
				});//ajax end
			}
		});

		//패스워드 입력값 검증.
		$('#mem_pw').on('keyup', function() {
			//비밀번호 공백 확인
			if($("#mem_pw").val() === ""){
				$("#pwChk").html("<b style='font-size:14px; color:red;'>[비밀번호는 필수입력입니다]</b>")
				chk2 = false;
			}		         
			//비밀번호 유효성검사
			else if(!getPwCheck.test($("#mem_pw").val()) || $("#mem_pw").val().length < 8){
				$('#pwChk').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상]</b>');
				chk2 = false;
			} else {
				$('#pwChk').html('<b style="font-size:14px;color:green;">[입력 완료]</b>');
				chk2 = true;
			}
			
		});

		//패스워드 확인란 입력값 검증.
		$('#mem_pw_check').on('keyup', function() {
			//비밀번호 확인란 공백 확인
			if($("#mem_pw_check").val() === ""){
				$('#pwChk2').html('<b style="font-size:14px;color:red;">[패스워드확인은 필수정보!]</b>');
				chk3 = false;
			}		         
			//비밀번호 확인란 유효성검사
			else if($("#mem_pw").val() != $("#mem_pw_check").val()){
				$('#pwChk2').html('<b style="font-size:14px;color:red;">[비밀번호와 동일하지 않습니다]</b>');
				chk3 = false;
			} else {
				$('#pwChk2').html('<b style="font-size:14px;color:green;">[비밀번호와 동일합니다]</b>');
				chk3 = true;
			}
			
		});

		//이름 입력값 검증.
		$('#mem_name').on('keyup', function() {
			//이름값 공백 확인
			if($("#mem_name").val() === ""){
				$('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 필수정보 입니다]</b>');
				chk4 = false;
			}		         
			//이름값 유효성검사
			else if(!getName.test($("#mem_name").val())){
				$('#nameChk').html('<b style="font-size:14px;color:red;">[이름은 한글 또는 영어로 적어주세요]</b>');
				chk4 = false;
			} else {
				$('#nameChk').html('<b style="font-size:14px;color:green;">[입력 완료]</b>');
				chk4 = true;
			}
			
		});
		
		//별명 입력값 검증.
		$('#mem_nickname').on('keyup', function() {
			//이름값 공백 확인
			if($("#mem_nickname").val() === ""){
				$('#nicknameChk').html('<b style="font-size:14px;color:red;">[별명은 필수정보 입니다]</b>');
				chk5 = false;
			}		         
			//별명 값 유효성검사
			else if(!getName.test($("#mem_nickname").val())){
				$('#nicknameChk').html('<b style="font-size:14px;color:red;">[별명은 한글 또는 영어로 적어주세요]</b>');
				chk5 = false;
			} 
			//별명 중복확인 비동기 처리
			else {
				//별명 중복확인 비동기 통신
				const nickname = $(this).val();
				console.log(nickname);
				
				$.ajax({
					type: "POST",
					url: "/member/checkNickname",	
					headers: {
		                "Content-Type": "application/json"
		            },
					dataType: "text",
					data: nickname,
					success: function(result) {
						if(result === "Y") {
							$("#nicknameChk").html("<b style='font-size:14px; color:green;'>[사용가능한 별명 입니다]</b>");						
							chk5 = true;
						} else {
							$("#nicknameChk").html("<b style='font-size:14px; color:red;'>[중복된 별명 입니다]</b>");						
							chk5 = false;
						}
					},
					error: function() {
						console.log("통신 실패!");
					}
				});//ajax end
			}
			
		});

		//연락처 입력값 검증.
		$('#mem_mobile').on('keyup', function() {
			//연락처값 공백 확인
			if($("#mem_mobile").val() === ""){
				$('#mobileChk').html('<b style="font-size:14px;color:red;">[연락처는 필수정보 입니다]</b>');
				chk6 = false;
			}		         
			//연락처값 유효성검사
			else if(!getNumber.test($("#mem_mobile").val())){
				$('#mobileChk').html('<b style="font-size:14px;color:red;">[-를 포함하여 적어주세요(ex: 01x-xxxx-xxxx )]</b>');
				chk6 = false;
			} else {
				$('#mobileChk').html('<b style="font-size:14px;color:green;">[입력 완료]</b>');
				chk6 = true;
			}
			
		});
		
		//이메일 입력값 검증.
		$('#mem_email').on('keyup', function() {
			//이메일값 공백 확인
			if($("#mem_email").val() === ""){
				$('#emailChk').html('<b style="font-size:14px;color:red;">[이메일은 필수정보 입니다]</b>');
				chk7 = false;
			}		         
			//이메일값 유효성검사
			else if(!getEmail.test($("#mem_email").val())){
				$('#emailChk').html('<b style="font-size:14px;color:red;">[이메일 규정을 지켜주세요(ex: abc@naver.com )]</b>');
				chk7 = false;
			} else {
				$('#emailChk').html('<b style="font-size:14px;color:green;">[입력 완료]</b>');
				chk7 = true;
			}
			
		});

		$("#register-btn").click(function(e) {
			if(chk1 && chk2 && chk3 && chk4 && chk5 && chk6 && chk7) {
				//아이디 정보
				const id = $("#mem_id").val();
				console.log("id: " + id);
				//패스워드 정보
				const pw = $("#mem_pw").val();
				console.log("pw: " + pw);
				//이름 정보
				const name = $("#mem_name").val();
				console.log("name: " + name);
				//별명 정보
				const nickname = $("#mem_nickname").val();
				console.log("nickname: " + nickname);
				//연락처
				const mobile = $("#mem_mobile").val();
				console.log("mobile: " + mobile);
				//이메일 정보
				const email = $("#mem_email").val();
				console.log("email: " + email);
				//주소1 정보
				const addr1 = $("#mem_addr1").val();
				console.log("addr1: " + addr1);
				//주소2 정보
				const addr2 = $("#mem_addr2").val();
				console.log("addr2: " + addr2);
				//주소3 정보
				const addr3 = $("#mem_addr3").val();
				console.log("addr3: " + addr3);
				//생년월일 정보
				const birth = $("#mem_birth").val();
				console.log("birth: " + birth);
				//성별 정보
				const gender = $("input[name=mem_gender]:checked").val();
				console.log("gender: " + gender);
				//구분 정보
				const check = $("input[name=mem_check]:checked").val();
				console.log("check: " + check);
				
				
				const member = {
					mem_id: id,
					mem_pw: pw,
					mem_name: name,
					mem_nickname: nickname,
					mem_mobile : mobile,
					mem_email : email,
					mem_addr1 : addr1,
					mem_addr2 : addr2,
					mem_addr3 : addr3,
					mem_birth : birth,
					mem_gender : gender,
					mem_check : check
				};
				
				//클라이언트에서 서버와 통신하는 ajax함수(비동기 통신) 
				$.ajax({
					type: "POST", //서버에 전송하는 HTTP요청 방식
					url: "/member/", //서버 요청 URI
					headers: {
						"Content-Type": "application/json"
					}, //요청 헤더 정보
					dataType: "text", //응답받을 데이터의 형태
					data: JSON.stringify(member), //서버로 전송할 데이터
					success: function(result) { //함수의 매개변수는 통신성공시의 데이터가 저장될 곳.
						console.log("통신 성공!: " + result);
						if(result === "joinSuccess") {
							alert("회원가입에 성공했습니다!");
							location.href="/login";
						} else {
							alert("회원가입에 실패했습니다!");
						}
					}, //통신 성공시 처리할 내용들을 함수 내부에 작성.
					error: function() {
						console.log("통신 실패!");
					} //통신 실패 시 처리할 내용들을 함수 내부에 작성.
				});
			
			} else {
				alert('입력정보를 다시 확인하세요.');			
			}
		}); // 회원가입 버튼 end

		
	
		
		
		
		
		
		
		
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
                 	// 주소변수 문자열과 참고항목 문자열 합치기
                    addr += extraAddr;
                
                } else {
                	addr += ' ';
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
               $("#mem_addr1").val(data.zonecode);
           		//$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
               $("#mem_addr2").val(addr);
           	    //$("[name=memberAddr2]").val(addr);            // 대체가능
            
           	    // 상세주소 입력란 disabled(readonly) 속성 변경 및 커서를 상세주소 필드로 이동한다.
               $("#mem_addr3").attr("readonly",false);
               $("#mem_addr3").focus();
	 
	        }
	    }).open();  
		
	}//다음 주소 연동 end
	
	
	
	
	
	
	
	
</script>













