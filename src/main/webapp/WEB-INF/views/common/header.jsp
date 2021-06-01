<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/header.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
</head>

<body>
    <header>
        <div class="nav">

            <!-- 햄버거 버튼 -->

            <div class="menu">
                <input type="checkbox" id="menuicon">
                <label for="menuicon">
                    <span></span>
                    <span></span>
                    <span></span>
                </label>
                <div class="sidebar">
                    <div class="header-information">
                        <div class="profile"><img
                                src="${ pageContext.servletContext.contextPath }/resources/img/header/profile.png"
                                alt=""></div>
                        <div class="user-name">송준원님</div>
                    </div>
                    <div class="test">
                        <div class="blank"></div>

                        <div class="category">
                            <div class="category-name">카테고리</div>
                            <ul><a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0001">
                                    <li class="category-title">
                                        <div class="category-title-style">거실/침실가구</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0002">
                                    <li class="category-title">
                                        <div class="category-title-style">학생/서재가구</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0003">
                                    <li class="category-title">
                                        <div class="category-title-style">테이블/의자</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0004">
                                    <li class="category-title">
                                        <div class="category-title-style">침구/커튼</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0005">
                                    <li class="category-title">
                                        <div class="category-title-style">쿠션/방석</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0006">
                                    <li class="category-title">
                                        <div class="category-title-style">가전</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0007">
                                    <li class="category-title">
                                        <div class="category-title-style">수납/정리</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0008">
                                    <li class="category-title">
                                        <div class="category-title-style">조명</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT0009">
                                    <li class="category-title">
                                        <div class="category-title-style">홈데코</div>
                                    </li>
                                </a>
                                <a href="${ pageContext.servletContext.contextPath}/product/test?prodCtgNo=PRCT00010">
                                    <li class="category-title">
                                        <div class="category-title-style">생활용품</div>
                                    </li>
                                </a>
                             
                            </ul>
                        </div>

                        <div class="blank"></div>

                        <div class="category">
                            <div class="category-name">주요서비스</div>
                            <ul><a href="#">
                                    <li class="category-title">
                                        <div class="category-title-style">쿠폰존</div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li class="category-title">
                                        <div class="category-title-style">이벤트 / 기획전</div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li class="category-title">
                                        <div class="category-title-style">MY PAGE</div>
                                    </li>
                                </a>
                                <a href="#">
                                    <li class="category-title">
                                        <div class="category-title-style">커뮤니티</div>
                                    </li>
                                </a>
                            </ul>
                        </div>

                        <div class="blank"></div>

                        <div class="event">
                            우리은행 카드 결제시 수수료 면제
                        </div>

                        <div class="blank"></div>

                    </div>
                </div>
            </div>
            <!-- 로고 -->
            <div class="logo">
                <img class="logo-png" src="${ pageContext.servletContext.contextPath }/resources/img/logo.png"
                    class="icons_img" alt="" width="80px">
            </div>

            <!-- 검색바 -->
            <div class="search">
                <!-- <form method="post"> -->
                <div class="search_bar">
                    <input class="search_size" type="text" title="검색">
                    <a href="#" type="submit"><img
                            src="${ pageContext.servletContext.contextPath }/resources/img/search.png"
                            class="search_img" alt=""></a>
                </div>
                <!-- </form> -->
            </div>

            <!-- 차트 -->
            <div class="charts">
                <span class="charts_rank">1 &nbsp;&nbsp;</span><span>1등인기 상품</span>
            </div>

            <!-- 아이콘 -->
            <div class="icons">
                <a href="${ pageContext.servletContext.contextPath}/controller/loginPage"><img src="${ pageContext.servletContext.contextPath }/resources/images/ic.png" class="icons_img" alt=""></a>
            </div>
        </div>
    </header>
    <div class="space"></div>
</body>
</html>