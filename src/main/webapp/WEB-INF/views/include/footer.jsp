<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!-- Partner Logo Section Begin -->
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="<c:url value='/img/logo-carousel/logo-1.png'/>" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="<c:url value='/img/logo-carousel/logo-2.png'/>" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="<c:url value='/img/logo-carousel/logo-3.png'/>" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="<c:url value='/img/logo-carousel/logo-4.png'/>" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="<c:url value='/img/logo-carousel/logo-5.png'/>" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Partner Logo Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container" align ="center">


                    <div class="footer-left">
                        <div class="footer-logo">
                            <a href="#"><img src="<c:url value='/img/footer-logo.png'/>" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello.colorlib@gmail.com</li>
                        </ul>
                        <div class="footer-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>




        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="<c:url value='/img/payment-method.png'/>" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="<c:url value='/js/jquery-3.3.1.min.js'/>"></script>
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/js/jquery-ui.min.js'/>"></script>
    <script src="<c:url value='/js/jquery.countdown.min.js'/>"></script>
    <script src="<c:url value='/js/jquery.nice-select.min.js'/>"></script>
    <script src="<c:url value='/js/jquery.zoom.min.js'/>"></script>
    <script src="<c:url value='/js/jquery.dd.min.js'/>"></script>
    <script src="<c:url value='/js/jquery.slicknav.js'/>"></script>
    <script src="<c:url value='/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='/js/main.js'/>"></script>
    
    
<script>
$(function(){
	
	//검색 버튼 이벤트 처리
	$("#searchBtn").click(function(){
		console.log("검색 버튼 클릭됨");
		const keyword = $("#keywordInput").val();
		console.log("검색어: " + keyword);
		
		const condition =$("#condition option:selected").val();
		console.log("검색조건: " + condition);

		location.href="/board/?keyword=" + keyword
				+"&condition=" + condition;
		
	});
	
	//엔터키 입력 이벤트
	$("#keywordInput").keydown(function (key){
		if(key.keyCode == 13){ //키가 13이면 실행 (13 = 엔터키)
			$("#searchBtn").click();
		}
	});
	
	
	
});//제이쿼리 end



</script>
    
</body>

</html>