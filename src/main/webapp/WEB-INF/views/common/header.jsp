<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/header.css">
</head>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
    $(document).ready(function () {
        $(".hamberger-wrap").click(function () {
            $(".hamberger-wrap").toggleClass("active");
        });
    })

    function inputImg(obj) {
        obj.style.backgroundImage = "";
        obj.onkeydown = obj.onmousedown = null;
    }

</script>

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
                    <div class="information">
                        <div id="goAdminMain" class="profile"><img src="${ pageContext.servletContext.contextPath }/resources/images/header/profile.png" alt=""></div>
                        <div class="user-name">송준원님</div>
                    </div>
                    <div class="test">
                        <div class="blank"></div>

                        <div class="category">
                            <div class="category-name">카테고리</div>
                            <ul>
                                <li class="category-title">
                                    <div class="category-title-style">소파/거실</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">침실가구</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">드레스룸</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">주방가구</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">학생/서재가구</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">유아동가구</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">화장대/거울</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">식탁/테이블</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">의자/스툴</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">수납가구</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">병풍/파티션</div>
                                </li>
                            </ul>
                        </div>

                        <div class="blank"></div>

                        <div class="category">
                            <div class="category-name">주요서비스</div>
                            <ul>
                                <li class="category-title">
                                    <div class="category-title-style">쿠폰존</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">이벤트 / 기획전</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">MY PAGE</div>
                                </li>
                                <li class="category-title">
                                    <div class="category-title-style">커뮤니티</div>
                                </li>
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
                <img class="logo-png" src="${ pageContext.servletContext.contextPath }/resources/images/logo.png" class="icons_img" alt="" width="80px" >
            </div>

            <!-- 검색바 -->
            <div class="search">
                <!-- <form method="post"> -->
                <div class="search_bar">
                    <input class="search_size" type="text" title="검색">
                    <a href="#" type="submit"><img src="${ pageContext.servletContext.contextPath }/resources/images/search.png" class="search_img" alt=""></a>
                </div>
                <!-- </form> -->
            </div>

            <!-- 차트 -->
            <div class="charts">
                <span class="charts_rank">1 &nbsp;&nbsp;</span><span>1등인기 상품</span>
            </div>

            <!-- 아이콘 -->
            <div class="icons">
                <img src="${ pageContext.servletContext.contextPath }/resources/images/ic.png" class="icons_img" alt="">
            </div>

        </div>
    </header>

<script>
	$("#goAdminMain").click(function(){
		
		location.href="${pageContext.request.contextPath}/admin/main";
		
	})
</script>
</body>
</html>