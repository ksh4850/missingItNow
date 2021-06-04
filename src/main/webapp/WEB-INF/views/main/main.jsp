<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/main.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>    

</head>
<body>

    <script>
    console.log("${CorpUserSession}");
    
    </script>


    <div id="wrap">
<jsp:include page="../common/header.jsp"/>

        <main id="main">
            <section id="section1">
                <div class="wrap">
                    <div class="gap">
                        <div class="container">
                            <div class="slide-view">
                                <ul class="slide-wrap cf">
                                    <li class="slide slide2"><img src="${ pageContext.servletContext.contextPath }/resources/images/slider-img3.jpg" alt=""></li>
                                    <li class="slide slide0"><img src="${ pageContext.servletContext.contextPath }/resources/images/slider-img1.jpg" alt=""></li>
                                    <li class="slide slide1"><img src="${ pageContext.servletContext.contextPath }/resources/images/slider-img2.jpg" alt=""></li>
                                    <li class="slide slide2"><img src="${ pageContext.servletContext.contextPath }/resources/images/slider-img3.jpg" alt=""></li>
                                    <li class="slide slide0"><img src="${ pageContext.servletContext.contextPath }/resources/images/slider-img1.jpg" alt=""></li>
                                </ul>
                                <div class="limocon-wrap">
                                    <div class="limocon-gap">
                                        <div class="limocon-content cf">
                                            <div class="stop-btn"><h2>=</h2></div>
                                            <div class="page-btn">
                                                 <span>00/00</span>
                                                <span>+</span>
                                            </div>
                                            <div class="slide-btn">
                                                <span class="prev-btn"><</span>
                                                <span class="next-btn">></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="section2">
                <div class="wrap">
                    <div class="gap">
                        <div class="container">
                            <ul class="content-wrap cf">
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>쇼핑하기</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>프리미엄</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>평수별점구경</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>공간별사진</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>빠른시공상담</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>시공업체찾기</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>찾아라해결템</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="menu-wrap">
                                    <div class="menu-gap">
                                        <div class="new">NEW</div>
                                        <div class="raicon"></div>
                                        <div class="text-wrap">
                                            <p>질문과답변</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <section id="section3">
                <div class="wrap">
                    <div
                     class="gap">
                        <div class="container">
                            <div class="title-wrap cf">
                                <h2>지금 제일 잘 나가는 상품</h2>
                                <div class="aside-title cf">
                                    <h4>전체보기</h4>
                                    <div class="arrow-wrap">
                                        →
                                    </div>
                                </div>
                            </div>
                            <div class="slide-view">
                                <ul class="slide-wrap cf">
                                    <li class="slide slide0">
                                        <div class="number-wrap">
                                            <h3>01</h3>
                                        </div>
                                            <div class="img-wrap"></div>
                                            <p>제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.</p>
                                            <span>제품가격<h4>원</h4></span>
                                    </li>
                                    <li class="slide slide1">
                                        <div class="number-wrap">
                                            <h3>02</h3>
                                        </div>
                                            <div class="img-wrap"></div>
                                            <p>제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.</p>
                                            <span>제품가격<h4>원</h4></span>
                                    </li>
                                    <li class="slide slide2">
                                        <div class="number-wrap">
                                            <h3>03</h3>
                                        </div>
                                            <div class="img-wrap"></div>
                                            <p>제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.</p>
                                            <span>제품가격<h4>원</h4></span>
                                    </li>
                                    <li class="slide slide3">
                                        <div class="number-wrap">
                                            <h3>04</h3>
                                        </div>
                                            <div class="img-wrap"></div>
                                            <p>제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.</p>
                                            <span>제품가격<h4>원</h4></span>
                                    </li>
                                    <li class="slide slide4">
                                        <div class="number-wrap">
                                            <h3>05</h3>
                                        </div>
                                            <div class="img-wrap"></div>
                                            <p>제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.</p>
                                            <span>제품가격<h4>원</h4></span>
                                    </li>
                                    <li class="slide slide5">
                                        <div class="number-wrap">
                                            <h3>06</h3>
                                        </div>
                                            <div class="img-wrap"></div>
                                            <p>제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.</p>
                                            <span>제품가격<h4>원</h4></span>
                                    </li>
                                    <li class="slide slide6">
                                        <div class="number-wrap">
                                            <h3>07</h3>
                                        </div>
                                            <div class="img-wrap"></div>
                                            <p>제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.제품설명이 이부분에 들어가게 됩니다 각 제품 설명을 작성해 주세요.</p>
                                            <span>제품가격<h4>원</h4></span>
                                    </li>
                                </ul>
                                <div class="slide-btn cf">
                                    <span class="prev-btn"><</span>
                                    <span class="next-btn">></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="section4">
                <div class="wrap">
                    <div class="gap">
                        <div class="container cf">
                            <div class="left-content">
                                <div class="title-wrap cf">
                                    <h2>이벤트</h2>
                                    <div class="aside-title">
                                        <h4>바로가기</h4>
                                        <div class="ra-btn">
                                            <p>→</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-view">
                                    <ul class="slide-wrap cf">
                                        <li class="slide slide2"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/event3.jpg" alt=""></li>
                                        <li class="slide slide0"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/event1.jpg" alt=""></li>
                                        <li class="slide slide1"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/event2.jpg" alt=""></li>
                                        <li class="slide slide2"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/event3.jpg" alt=""></li>
                                        <li class="slide slide0"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/event1.jpg" alt=""></li>
                                    </ul>
                                </div>
                                <div class="slide-btn cf">
                                    <span class="prev-btn"><</span>
                                    <span class="next-btn">></span>
                                </div>
                            </div>
                            <div class="right-content">
                                <div class="title-wrap cf">
                                    <h2>오늘의 쿠폰</h2>
                                    <div class="aside-title">
                                        <h4>바로가기</h4>
                                        <div class="ra-btn">
                                            <p>→</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-view">
                                    <ul class="slide-wrap cf">
                                        <li class="slide slide2"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/coupon3.jpg" alt=""></li>
                                        <li class="slide slide0"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/coupon1.jpg" alt=""></li>
                                        <li class="slide slide1"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/coupon2.jpg" alt=""></li>
                                        <li class="slide slide2"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/coupon3.jpg" alt=""></li>
                                        <li class="slide slide0"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/coupon1.jpg" alt=""></li>
                                    </ul>
                                </div>
                                <div class="slide-btn cf">
                                    <span class="prev-btn"><</span>
                                    <span class="next-btn">></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="section5">
                <div class="wrap">
                    <div class="gap">
                        <div class="container">
                            
                        </div>
                    </div>
                </div>
            </section>
            <section id="section6">
                <div class="wrap">
                    <div class="gap">
                        <div class="container">
                            
                        </div>
                    </div>
                </div>
            </section>
            <section id="section7">
                <div class="wrap">
                    <div class="gap">
                        <div class="container">
                            <div class="title-wrap">
                                <div class="title-gap">
                                    <h2>MD 추천</h2>
                                </div>
                            </div>
                            <div class="menuBtn-box-wrap">
                                <div class="menuBtn-box-gap">
                                    <ul class="menuBtn-content cf">
                                        <li class="menuBtn menuBtn0">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/1.png" alt="">
                                                    </div>
                                                    <h5>전체</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn1">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/2.png" alt="">
                                                    </div>    
                                                    <h5>신규</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn2">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/3.png" alt="">
                                                    </div>
                                                    <h5>거실/침실</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn3">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/4.png" alt="">
                                                    </div>
                                                    <h5>학생/서재</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn4">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/5.png" alt="">
                                                    </div>
                                                    <h5>테이블/의자</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn5">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/6.png" alt="">
                                                    </div>
                                                    <h5>침구/커튼</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn6">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/7.png" alt="">
                                                    </div>
                                                    <h5>쿠션/방석</h5>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="menuBtn menuBtn7">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/8.png" alt="">
                                                    </div>
                                                    <h5>가전</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn8">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/9.png" alt="">
                                                    </div>
                                                    <h5>수납/정리</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn9">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/10.png" alt="">
                                                    </div>
                                                    <h5>조명</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn10">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/11.png" alt="">
                                                    </div>
                                                    <h5>홈데코</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn11">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap">
                                                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/main/menu/11.png" alt="">
                                                    </div>
                                                    <h5>생활용품</h5>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <ul class="box-container cf">
                                <li class="box-content box-content0">
                                    <div class="container-wrap">
                                        <div class="img-wrap">
                                            <div class="img"></div>
                                        </div>
                                        <div class="halin">
                                            <span>전국민 쇼핑 -15%</span>
                                        </div>
                                        <div class="text-wrap">
                                            <div class="text-gap">
                                                <h3>해당제품의이름</h3>
                                                <div class="cf"><h3>쇼킹딜가</h3> <p>9900</p> <h4>원~</h4><h5>12.800원</h5></div>
                                                <span>51.436개 구매</span>
                                            </div>
                                        </div>
                                        <div class="bottom-info">
                                            <p>11번가 추천상품</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="box-content box-content1">
                                    <div class="container-wrap">
                                        <div class="img-wrap">
                                            <div class="img"></div>
                                        </div>
                                        <div class="halin">
                                            <span>전국민 쇼핑 -15%</span>
                                        </div>
                                        <div class="text-wrap">
                                            <div class="text-gap">
                                                <h3>해당제품의이름</h3>
                                                <div class="cf"><h3>쇼킹딜가</h3> <p>9900</p> <h4>원~</h4><h5>12.800원</h5></div>
                                                <span>51.436개 구매</span>
                                            </div>
                                        </div>
                                        <div class="bottom-info">
                                            <p>11번가 추천상품</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="box-content box-content2">
                                    <div class="container-wrap">
                                        <div class="img-wrap">
                                            <div class="img"></div>
                                        </div>
                                        <div class="halin">
                                            <span>전국민 쇼핑 -15%</span>
                                        </div>
                                        <div class="text-wrap">
                                            <div class="text-gap">
                                                <h3>해당제품의이름</h3>
                                                <div class="cf"><h3>쇼킹딜가</h3> <p>9900</p> <h4>원~</h4><h5>12.800원</h5></div>
                                                <span>51.436개 구매</span>
                                            </div>
                                        </div>
                                        <div class="bottom-info">
                                            <p>11번가 추천상품</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="box-content box-content3">
                                    <div class="container-wrap">
                                        <div class="img-wrap">
                                            <div class="img"></div>
                                        </div>
                                        <div class="halin">
                                            <span>전국민 쇼핑 -15%</span>
                                        </div>
                                        <div class="text-wrap">
                                            <div class="text-gap">
                                                <h3>해당제품의이름</h3>
                                                <div class="cf"><h3>쇼킹딜가</h3> <p>9900</p> <h4>원~</h4><h5>12.800원</h5></div>
                                                <span>51.436개 구매</span>
                                            </div>
                                        </div>
                                        <div class="bottom-info">
                                            <p>11번가 추천상품</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="box-content box-content4">
                                    <div class="container-wrap">
                                        <div class="img-wrap">
                                            <div class="img"></div>
                                        </div>
                                        <div class="halin">
                                            <span>전국민 쇼핑 -15%</span>
                                        </div>
                                        <div class="text-wrap">
                                            <div class="text-gap">
                                                <h3>해당제품의이름</h3>
                                                <div class="cf"><h3>쇼킹딜가</h3> <p>9900</p> <h4>원~</h4><h5>12.800원</h5></div>
                                                <span>51.436개 구매</span>
                                            </div>
                                        </div>
                                        <div class="bottom-info">
                                            <p>11번가 추천상품</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="box-content box-content5">
                                    <div class="container-wrap">
                                        <div class="img-wrap">
                                            <div class="img"></div>
                                        </div>
                                        <div class="halin">
                                            <span>전국민 쇼핑 -15%</span>
                                        </div>
                                        <div class="text-wrap">
                                            <div class="text-gap">
                                                <h3>해당제품의이름</h3>
                                                <div class="cf"><h3>쇼킹딜가</h3><p>9900</p><h4>원~</h4><h5>12.800원</h5></div>
                                                <span>51.436개 구매</span>
                                            </div>
                                        </div>
                                        <div class="bottom-info">
                                            <p>11번가 추천상품</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
        </main>

    </div>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/song.js"></script>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>