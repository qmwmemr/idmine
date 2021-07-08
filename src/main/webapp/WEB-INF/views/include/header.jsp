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

<body onload="commentData()">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">

		<div class="container">
			<div class="inner-header"
				style="padding-top: 15px; padding-bottom: 15px;">
				<div class="row">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="/"> <img src="<c:url value='/img/logo1.png'/>"
								alt="" style="max-width: 190%;">
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
						<ul class="nav-right" style="margin-top: 30px;">

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
						<li><a href="/cs/list">고객센터</a></li>
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