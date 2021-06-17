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
		<form action="/board/post" method="post" class="checkout-form">
			<div align="center">
				<div class="col-lg-6">
					
					<h4>상품 등록하기</h4>
					<div class="row">
						<div class="col-lg-12">
							<label for="board_name">상품명</label> <input type="text"
								id="board_name" name="board_name">
						</div>
						<div class="col-lg-6">
							<label for="board_price">가격<span>*</span></label> <input
								type="text" id="board_price" name="board_price">
						</div>
						<div class="col-lg-6">
							<label for="board_dc">할인율<span>*</span></label> <input
								type="text" id="board_dc" name="board_dc">
						</div>

						<div class="col-lg-12">
							<label for="board_category">카테고리<span>*</span></label> <input type="text"
								id="board_category" name="board_category">
						</div>
						<div class="col-lg-12">
							<label for="board_content">설명<span>*</span></label> <input
								type="text" id="board_content" name="board_content" > 
						</div>
						<div class="col-lg-12">
							<label for="zip">Postcode / ZIP (optional)</label> <input
								type="text" id="zip">
						</div>
						<div class="col-lg-12">
							<label for="town">Town / City<span>*</span></label> <input
								type="text" id="town">
						</div>
						<div class="col-lg-6">
							<label for="email">Email Address<span>*</span></label> <input
								type="text" id="email">
						</div>
						<div class="col-lg-6">
							<label for="phone">Phone<span>*</span></label> <input type="text"
								id="phone">
						</div>

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
						<input type="submit" class="content-btn" value="등록하기" />
						<input type="reset" class="content-btn" value="취소" />
					</div>
				</div>

			</div>
		</form>
	</div>
</section>
<!-- Shopping Cart Section End -->


<c:import url="/WEB-INF/views/include/footer.jsp" />