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
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>로그인</span>
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
                    <div class="login-form">
                        <h2>로그인</h2>
                        
                        <div>
                            <div class="group-input" style="margin-bottom: 25px;">
                                <label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								아이디 </label> <input type="text" id="mem_id" name="mem_id"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
                            </div>
                            
                            <div class="group-input" style="margin-bottom: 25px;">
                                <label for="username"
								style="display: block; font-size: 18px; color: #252525; margin-bottom: 13px;">
								비밀번호 </label> <input type="password" id="mem_pw" name="mem_pw"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px;">
							<div id="check"></div>
                            </div>
                            
                            <!-- 
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                    <label for="save-pass">
                                        자동 로그인
                                        <input type="checkbox" id="auto-login" name="auto-login">
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="#" class="forget-pass">Forget your Password</a>
                                </div>
                            </div>
                             -->
                            
                            <button type="submit" class="site-btn login-btn"
							id="login-btn"
							style="width: 100%; letter-spacing: 2px; margin-top: 5px;">확인</button>
							
							<br>
							<!-- 네이버 로그인 창으로 이동 -->
								<div id="naver_id_login" style="text-align: center;margin-top: 30px;">
									<a href="${url}"> <img width="223"
										src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
								</div>
                        </div>
                        
                        
                        <div class="switch-login">
                            <a href="/register" class="or-login">회원가입</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->

    <<c:import url="/WEB-INF/views/include/footer.jsp" />
    
    
<script>
	
	$(function(){
		
		//엔터키 입력 이벤트
		$("#mem_pw").keydown(function (key) {
			 
	        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
	        	$("#login-btn").click();
	        }
	 
	    }); //엔터키 입력 이벤트 end
		
		
		//로그인 버튼 눌렀을때
		$("#login-btn").click(function(){
			
				const id = $("#mem_id").val();
				const pw = $("#mem_pw").val();
				//is()함수는 상태여부를 판단하여 논리값을 리턴합니다
				const autoLogin = $("#auto-login").is(":checked");

				console.log("auto : " + autoLogin);
				
				
				const memInfo = {
						mem_id : id,
						mem_pw : pw,
						autoLogin : autoLogin
				};
				
				$.ajax({
					type : "POST",
					url : "/member/loginCheck",
					/*
					header : {
						"Content-Type": "application/json"
					},
					*/
					contentType: "application/json; charset=UTF-8", 
					data : JSON.stringify(memInfo),
					dataType : "text",
					success : function(data){
						console.log("result : " + data);
						if(data === "idFail"){
							$('#check').html('<b style="font-size:14px;color:red;">[등록되지 않은 아이디입니다]</b>');
							$('#mem_pw').val("");
							$('#mem_id').focus();
							chk = false;
						}else if(data === "pwFail"){
							$('#check').html('<b style="font-size:14px;color:red;">[비밀번호가 다릅니다]</b>');
							$('#mem_pw').val("");
							$('#mem_pw').focus();
							chk = false;
						}else if(data === "loginSuccess"){
							self.location="/";
						}
					}
				
				});//ajax end
				
			//}else{
				//alert("입력정보를 다시 확인하세요");
			//}
			
			
			
			
			
		});//로그인 버튼 end
		
	});//jquery end
	
</script>
    
    
    
    
    
    
    
    
    