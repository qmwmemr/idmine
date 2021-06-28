<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/include/header.jsp" />

<!-- 위지윅 cdn -->
<script
	src="https://cdn.ckeditor.com/ckeditor5/28.0.0/classic/ckeditor.js"></script>
<style>
.ck-content {
	height: 170px;
	margin-bottom: 5px;
}
</style>
<!-- 이미지 출력 부분 -->
<style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
	
</style>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="./index.html"><i class="fa fa-home"></i> Home</a> <a
						href="./shop.html">Shop</a> <span>상품 등록 하기</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
	<div class="container">
		<form action="/board/post" method="post" class="checkout-form"
			id="post-form">
			<div align="center">
				<div class="col-lg-6">

					<h4>상품 등록하기</h4>
					<div class="row">
						<div class="col-lg-12" style="margin-bottom: 40px;">
							<label for="board_name">상품명<span>*</span></label> <input
								type="text" id="board_name" name="board_name"
								style="margin-bottom: 5px;"> 
							<div id="nameChk"></div>
						</div>
						<div class="col-lg-6" style="margin-bottom: 40px;">
							<label for="board_price">가격<span>*</span></label> <input
								type="text" id="board_price" name="board_price"
								style="margin-bottom: 5px;"> 
							<div id="priceChk"></div>
						</div>
						<div class="col-lg-6" style="margin-bottom: 40px;">
							<label for="board_dc">할인율</label> 
								<input id="discount_interface" maxlength="2" value="0" style="margin-bottom: 5px;">
								<input type="hidden" value="0"
								id="board_dc" name="board_dc" style="margin-bottom: 5px;">
							<span class="step_val">할인 가격 : <span class="span_discount"></span></span>
							<div id="dcChk"></div>
						</div>

						<div class="col-lg-12" style="margin-bottom: 40px;">
							<label for="board_category">카테고리<span>*</span></label> <select
								name="board_category"
								style="border: 1px solid #ebebeb; height: 50px; width: 100%; padding-left: 20px; padding-right: 15px; margin-bottom: 5px;">
								<option value="" selected disabled hidden>선택</option>
								<option value="커피">커피</option>
								<option value="과자">과자</option>
								<option value="기타">기타</option>
							</select> <div id="categoryChk"></div>
						</div>
						
						<div class="col-lg-12" style="margin-bottom: 40px;">
							<label for="board_image">상품 이미지<span>*</span></label> 
						<div>
							<input
								type="file" multiple="multiple" id="fileItem" name="uploadFile"
								style="margin-bottom: 5px;">
							<div id="uploadResult">
							<!--  
								<div id="result_card">
									<div class="imgDeleteBtn">x</div>
									<img src="/board/display?fileName=다운로드.png">
								</div>
							-->	
							</div>
						</div> 
							<div id="nameChk"></div>
						</div>

						<div class="col-lg-12" style="margin-bottom: 40px;">
							<label for="board_content">설명<span>*</span></label>
							<textarea id="board_content" name="board_content"></textarea>
							<div id="contentChk"></div>
						</div>

						<!-- 세션에서 아이디와 별명 불러와서 보내기
						<input type="hidden" name="board_id" value="${login.mem_id}">
						<input type="hidden" name="board_nickname" value="${login.mem_nickname}">
						 -->



						<div class="col-lg-12">
							<div class="create-item">
								<label for="acc-create"> Create an account? <input
									type="checkbox" id="acc-create"> <span
									class="checkmark"></span>
								</label>
							</div>
						</div>


					</div>
					<div class="checkout-content">
						<button class="content-btn"
							style="width: 100%; margin-bottom: 20px; margin-top: 20px;"
							id="post-btn">등록</button>

					</div>
				</div>

			</div>
		</form>
	</div>
</section>
<!-- Shopping Cart Section End -->


<c:import url="/WEB-INF/views/include/footer.jsp" />


<script>
$(function(){
	
	const getPriceCheck = RegExp(/^[0-9]*$/); //가격(숫자만 정규식)
	const getDcCheck = RegExp(/^[0-9][0-9]?$/); //할인율(0~99 숫자만)
	
	
	
	
	
let postform = $("#post-form")
	
	//체크 변수
	let ck1 = false;		
	let ck2 = false;		
	let ck3 = true;		
	let ck4 = false;		
	let ck5 = false;	
	
	$('#board_name').on('keyup',function(){
		
		if($('#board_name').val() ===""){
			$("#nameChk").html("<b style='font-size:14px; color:red;'>[상품명을 입력해주세요]</b>")
			ck1 = false;
		}else{
			$("#nameChk").html("<b style='font-size:14px; color:green;'>[입력완료]</b>")
			ck1 = true;
		}
	});
	
	$('#board_price').on('keyup',function(){
		
		if($('#board_price').val() ===""){
			$("#priceChk").html("<b style='font-size:14px; color:red;'>[가격을 입력해주세요]</b>")
			ck2 = false;
		}else if(!getPriceCheck.test($("#board_price").val())){
			$("#priceChk").html("<b style='font-size:14px; color:red;'>[숫자만 입력해주세요]</b>")
			ck2 = false;
		}else{
			$("#priceChk").html("<b style='font-size:14px; color:green;'>[입력완료]</b>")
			ck2 = true;
		}
	});
	
	$('#discount_interface').on('keyup',function(){
		
		if(!getDcCheck.test($("#discount_interface").val())){
			$("#dcChk").html("<b style='font-size:14px; color:red;'>[0~99 사이의 숫자를 적어주세요]</b>")
			ck3 = false;
		}else{
			$("#dcChk").html("<b style='font-size:14px; color:green;'>[입력완료]</b>")
			ck3 = true;
		}
	});
	
	//$('#board_category').on('keyup',function(){
	if($('#board_category').val() === null){
		$("#categoryChk").html("<b style='font-size:14px; color:red;'>[카테고리를 선택해주세요]</b>")
		ck4 = false;
	}else{
		$("#categoryChk").html("<b style='font-size:14px; color:green;'>[입력완료]</b>")
		ck4 = true;
	}
	//});
	
		
	
	/* 상품 등록 버튼 */
	$("#post-btn").on("click", function(e) {

		e.preventDefault();
			
		
		if(ck1 && ck2 && ck3 && ck4 ){
			postform.submit();
			alert("글 등록이 완료되었습니다.")
		}else{
			alert("입력 정보를 다시 확인하세요.")
			return false;
		}
		
		
	});
	
	
	/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($(".imgDeleteBtn").length > 0){
			deleteFile();
		}
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		/*
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		//alert("통과");
		*/
		
		for(let i = 0; i < fileList.length; i++){
			formData.append("uploadFile", fileList[i]);
		}
		
		$.ajax({
			url: '/board/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json',
	    	success : function(result){
	    		console.log(result);
	    		showUploadImage(result);
	    	},
			error : function(result){
				alert("이미지 파일이 아닙니다.");
	    	}
		});
		
		
	});
	
	
	//이미지 크기 및 확장자 제한
	let regex = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576 * 3; //3MB
	
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}

});//제이쿼리 끝
	
	
/* 할인율 Input 설정 */
$("#discount_interface").on("propertychange change keyup paste input", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='board_dc']");
	
	let discountRate = userInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;					// 서버에 전송할 할인값
	let goodsPrice = $("input[name='board_price']").val();			// 원가
	let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
	        
	$(".span_discount").html(discountPrice);
	discountInput.val(sendDiscountRate);	
	
});

$("input[name='board_price']").on("change", function(){
	
	let userInput = $("#discount_interface");
	let discountInput = $("input[name='board_dc']");
	
	let discountRate = userInput.val();					// 사용자가 입력한 할인값
	let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
	let goodsPrice = $("input[name='board_price']").val();			// 원가
	let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
	
	$(".span_discount").html(discountPrice);
	
});


	
	
	//위지윅 적용(상품 소개)
	ClassicEditor
		.create(document.querySelector('#board_content'))
		.catch(error=>{
			console.error(error);
		});
	
	
	/* 이미지 출력 */
	function showUploadImage(uploadResultArr){
		
		/* 전달받은 데이터 검증 */
		if(!uploadResultArr || uploadResultArr.length == 0){return}
		
        let uploadResult = $("#uploadResult");
        //전송한 여러 이미지들중 첫번째 이미지
        let obj = uploadResultArr[0];
        
        let str = "";
        //미리보기 이미지는 썸네일 이미지가 나오도록 설정(UTF-8 인코딩 적용)
		let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
	
        str += "<div id='result_card'>";
		str += "<img src='/board/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
		str += "</div>";
        
		uploadResult.append(str); 
	}
	
	/* 이미지 삭제 버튼 동작 */
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
		
		deleteFile();
		
	});
	
	/* 파일 삭제 메서드 */
	function deleteFile(){
		
		let targetFile = $(".imgDeleteBtn").data("file");
		
		let targetDiv = $("#result_card");
		
		$.ajax({
			url: '/board/deleteFile',
			data : {fileName : targetFile},
			dataType : 'text',
			type : 'POST',
			success : function(result){
				console.log(result);
				
				targetDiv.remove();
				$("input[type='file']").val("");
				
			},
			error : function(result){
				console.log(result);
				
				alert("파일을 삭제하지 못하였습니다.")
			}
		});
	}
	
	
</script>

