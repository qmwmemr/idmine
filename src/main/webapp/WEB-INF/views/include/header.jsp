<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Idmine | MarketPlatform</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/font-awesome.min.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/themify-icons.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/elegant-icons.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/owl.carousel.min.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/nice-select.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/jquery-ui.min.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/slicknav.min.css'/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/style.css'/>"
	type="text/css">


</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">

		<div class="container">
			<div class="inner-header">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="/"> <img src="<c:url value='/img/logo.png'/>" alt="">
							</a>
						</div>
					</div>
					<div class="col-lg-7 col-md-7">

						<!-- 검색기능		
						<div class="advanced-search">
							<select id="condition" class="category-btn" name="condition">
								<option value="story" ${param.condition == 'story' ? 'selected' : '' }>이야기 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
								<option value="photo" ${param.condition == 'photo' ? 'selected' : '' }>사진</option>
								<option value="video" ${param.condition == 'video' ? 'selected' : '' }>영상</option>
							</select>
							<div class="input-group">
								<input type="text" placeholder="What do you need?"
									name="keyword" id="keywordInput" value="${param.keyword}">
								<button type="button" id="searchBtn">
									<i class="ti-search"></i>
								</button>
							</div>
						</div>
					-->

					</div>
					<div class="col-lg-3 text-right col-md-3">
						<ul class="nav-right">
							<li class="cart-icon"><a href="#"> <i
									class="icon_bag_alt"></i>
							</a>
								<div class="cart-hover">
									<div class="select-items">
										<table>
											<tbody>
												<tr>
													<td class="si-pic"><img
														src="<c:url value='/img/select-product-1.jpg'/>" alt=""></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$60.00 x 1</p>
															<h6>Kabino Bedside Table</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
												<tr>
													<td class="si-pic"><img
														src="<c:url value='/img/select-product-2.jpg'/>" alt=""></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$60.00 x 1</p>
															<h6>Kabino Bedside Table</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="select-total">
										<span>total:</span>
										<h5>$120.00</h5>
									</div>
									<div class="select-button">
										<a href="#" class="primary-btn view-card">VIEW CARD</a> <a
											href="#" class="primary-btn checkout-btn">CHECK OUT</a>
									</div>
								</div></li>
							<li class="cart-price"><c:if test="${login != null }">
									<button type="button" onclick="location.href='/member/logout' "
										class="primary-btn" style="border: 0; outline: 0;">로그아웃</button>
								</c:if> <c:if test="${login == null }">
									<button type="button" onclick="location.href='/loginN' "
										class="primary-btn" style="border: 0; outline: 0;">로그인</button>
								</c:if></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>Category</span>
						<ul class="depart-hover">
							<li><a href="/board/?condition=story">이야기</a></li>
							<li><a href="/board/?condition=photo">사진</a></li>
							<li><a href="/board/?condition=video">영상</a></li>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li><a href="/">Home</a></li>
						<li><a href="/board/?condition=photo">추억</a></li>
						<li><a href="/cs">고객관리</a></li>
						<li><a href="/about">소개</a></li>
						<li><a href="/contact">Contact</a></li>
						<li><a href="#">More</a>
							<ul class="dropdown">
								<c:if test="${login != null }">
									<li><a href="/mypage">마이페이지</a></li>
								</c:if>
								<c:if test="${login == null }">
									<li><a href="/loginN">로그인</a></li>
									<li><a href="/register">회원가입</a></li>
								</c:if>
							</ul></li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
	<!-- Header End -->