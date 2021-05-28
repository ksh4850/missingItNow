<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="${ pageContext.servletContext.contextPath }/resources/icon/fontawesome.js"></script>

</head>
<body>
    <div id="wrap">
        <header id="header">
            <jsp:include page="../common/header.jsp"/>
        </header>
        <main id="main">
            <section id="section1">
                <div class="wrap">
                    <div class="gap">
                        <div class="container">
                            <div class="slide-view">
                                <ul class="slide-wrap cf">
                                    <li class="slide slide2"></li>
                                    <li class="slide slide0"></li>
                                    <li class="slide slide1"></li>
                                    <li class="slide slide2"></li>
                                    <li class="slide slide0"></li>
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
                    <div class="gap">
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
                                    <h2>신규 등록 상품</h2>
                                    <div class="aside-title">
                                        <h4>바로가기</h4>
                                        <div class="ra-btn">
                                            <p>→</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-view">
                                    <ul class="slide-wrap cf">
                                        <li class="slide slide2"></li>
                                        <li class="slide slide0"></li>
                                        <li class="slide slide1"></li>
                                        <li class="slide slide2"></li>
                                        <li class="slide slide0"></li>
                                    </ul>
                                </div>
                                <div class="slide-btn cf">
                                    <span class="prev-btn"><</span>
                                    <span class="next-btn">></span>
                                </div>
                            </div>
                            <div class="right-content">
                                <div class="title-wrap cf">
                                    <h2>오늘의 제품</h2>
                                    <div class="aside-title">
                                        <h4>바로가기</h4>
                                        <div class="ra-btn">
                                            <p>→</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-view">
                                    <ul class="slide-wrap cf">
                                        <li class="slide slide2"></li>
                                        <li class="slide slide0"></li>
                                        <li class="slide slide1"></li>
                                        <li class="slide slide2"></li>
                                        <li class="slide slide0"></li>
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
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>전체</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn1">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>    
                                                    <h5>브랜드패션</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn2">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>트렌드패션</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn3">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>뷰티</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn4">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>식품</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn5">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>스포츠/레저</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn6">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>출산/육아</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn7">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>가구/홈데코</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn8">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>생필품/펫</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn9">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>가전/디지털</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn10">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>건강</h5>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="menuBtn menuBtn11">
                                            <div class="menuBtn-gap">
                                                <div class="menuBtn-box">
                                                    <div class="imoticon-wrap"></div>
                                                    <h5>취미/독서</h5>
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
        <footer id="footer">
            <jsp:include page="../common/footer.jsp"/>
        </footer>
    </div>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/song.js"></script>
    <script>
    </script>
</body>
</html>