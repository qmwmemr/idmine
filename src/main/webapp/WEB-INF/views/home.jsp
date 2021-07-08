<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/views/include/header.jsp" />

    <!-- Hero Section Begin -->
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="<c:url value='/img/Ihero-1.jpg'/>">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>IDMINE</span>
                            <h1>기억</h1>
                            <p>가슴 깊이 묻혀있는 추억들을 나누고 구경해봐요</p>
                            <a href="/board/?condition=photo" class="primary-btn">추억</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>동심 <span>100%</span></h2>
                    </div>
                </div>
            </div>
            <div class="single-hero-items set-bg" data-setbg="<c:url value='/img/Ihero-2.jpg'/>">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>IDMINE</span>
                            <h1>향수</h1>
                            <p>저희와 함께 어린날의 기억들을 찾아보지 않을래요?</p>
                            <a href="/register" class="primary-btn">회원가입</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>추억 <span>100%</span></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Banner Section Begin -->
    <div class="banner-section spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="<c:url value='/img/Ibanner-1.jpg'/>" alt="">
                        <div class="inner-text" OnClick="location.href ='/board/?condition=story'" style="cursor:pointer;">
                            <h4>Story</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="<c:url value='/img/Ibanner-2.jpg'/>" alt="">
                        <div class="inner-text" OnClick="location.href ='/board/?condition=photo'" style="cursor:pointer;">
                        <h4>Photo</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <img src="<c:url value='/img/Ibanner-3.jpg'/>" alt="">
                        <div class="inner-text" OnClick="location.href ='/board/?condition=video'" style="cursor:pointer;">
                            <h4>Video</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Section End -->

    <!-- Women Banner Section Begin -->
    <section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="product-large set-bg" data-setbg="<c:url value='/img/i2.jpg'/>">
                        <h2>Photo</h2>
                        <a href="/board/?condition=photo">Discover More</a>
                    </div>
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">Best Photo</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel">
                        
                        <c:forEach var="p" items="${photo}">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="<c:url value='/img/products/${p.board_no}.jpg'/>" alt="">
                                <div class="sale">Hot</div>
                                <ul>
                                    <li class="quick-view"><a href="/board/${p.board_no}">+ Quick View</a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">${p.board_category}</div>
                                <a href="#">
                                    <h5>${p.board_name }</h5>
                                </a>
                                <div class="product-price">
                                    ${p.board_simple}
                                </div>
                            </div>
                        </div>
                       </c:forEach> 
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Women Banner Section End -->

    <!-- Deal Of The Week Section Begin-->
    <section class="deal-of-week set-bg spad" data-setbg="<c:url value='/img/bg.jpg'/>">
        <div class="container">
            <div class="col-lg-6 text-center">
                <div class="section-title">
                    <h2>랜덤 추천 추억 </h2>
                    <p>회원님들이 남긴 추억들을 무작위로 추천 해드립니다.</p>
                </div>
                <div class="countdown-timer" id="countdown">
                    <div class="cd-item">
                        <span>56</span>
                        <p>Days</p>
                    </div>
                    <div class="cd-item">
                        <span>12</span>
                        <p>Hrs</p>
                    </div>
                    <div class="cd-item">
                        <span>40</span>
                        <p>Mins</p>
                    </div>
                    <div class="cd-item">
                        <span>52</span>
                        <p>Secs</p>
                    </div>
                </div>
                <a href="/board/${random}" class="primary-btn">view</a>
            </div>
        </div>
    </section>
    <!-- Deal Of The Week Section End -->

    <!-- Man Banner Section Begin -->
    <section class="man-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <div class="filter-control">
                        <ul>
                            <li class="active">Best Video</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel">
                        
                        <c:forEach var="v" items="${video}">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img alt="" src="https://img.youtube.com/vi/${v.board_link}/sddefault.jpg">
                                <div class="sale">Hot</div>
                                <ul>
                                    <li class="quick-view"><a href="/board/${v.board_no}">+ Quick View</a></li>
                                </ul>
                            </div>
                            <div class="pi-text">
                                <div class="catagory-name">${v.board_category}</div>
                                <a href="#">
                                    <h5>${v.board_name }</h5>
                                </a>
                                <div class="product-price">
                                    ${v.board_simple}
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="product-large set-bg m-large" data-setbg="<c:url value='/img/i1.jpg'/>">
                        <h2>Video</h2>
                        <a href="/board/?condition=video">Discover More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Man Banner Section End -->

    <!-- Instagram Section Begin -->
    <div class="instagram-photo" style="margin-bottom: 100px;">
        <div class="insta-item set-bg" data-setbg="<c:url value='/img/insta-1.jpg'/>">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">colorlib_Collection</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="<c:url value='/img/insta-2.jpg'/>">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">colorlib_Collection</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="<c:url value='/img/insta-3.jpg'/>">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">colorlib_Collection</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="<c:url value='/img/insta-4.jpg'/>">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">colorlib_Collection</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="<c:url value='/img/insta-5.jpg'/>">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">colorlib_Collection</a></h5>
            </div>
        </div>
        <div class="insta-item set-bg" data-setbg="<c:url value='/img/insta-6.jpg'/>">
            <div class="inside-text">
                <i class="ti-instagram"></i>
                <h5><a href="#">colorlib_Collection</a></h5>
            </div>
        </div>
    </div>
    <!-- Instagram Section End -->


    <c:import url="/WEB-INF/views/include/footer.jsp" />
