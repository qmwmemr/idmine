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
					<a href="#"><i class="fa fa-home"></i> Home</a> <span>소개</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Faq Section Begin -->
<div class="faq-section spad">


	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="faq-accordin">
					<div class="accordion" id="accordionExample">
						<div class="footer-logo">
							<img src="<c:url value='/img/logo1.png'/>" alt=""
								style="margin-bottom: 50px; "></a>
						</div>
						<div class="card">

							<div class="card-heading active">
								<a class="active" data-toggle="collapse"
									data-target="#collapseOne"> 무엇을 하는 사이트인가요? </a>
							</div>
							<div id="collapseOne" class="collapse show"
								data-parent="#accordionExample">
								<div class="card-body">
									<p>ID(아이디어) + MINE(내가 가진)</p>
									<p>각자 자신이 가진 추억을 나누고 즐기는 사이트를 기획하였습니다.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-heading">
								<a data-toggle="collapse" data-target="#collapseTwo"> 
								개발환경이 어떻게 되나요? </a>
							</div>
							<div id="collapseTwo" class="collapse"
								data-parent="#accordionExample">
								<div class="card-body">
									<p>Java8, SpringMVC, Tomcat9, MyBatis, MySQL, AWS 등을 사용하였습니다.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-heading">
								<a data-toggle="collapse" data-target="#collapseThree">
									추가 하고 싶은 기능이 있나요? </a>
							</div>
							<div id="collapseThree" class="collapse"
								data-parent="#accordionExample">
								<div class="card-body">
									<p>채팅방, 결제기능과 같은 다양한 기능들을 추가 하여</p>
									<p>단순한 커뮤니티 사이트가 아닌 추억을 사고 팔수 있는 쇼핑몰로 업그레이드 하고 싶습니다.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Faq Section End -->

<c:import url="/WEB-INF/views/include/footer.jsp" />