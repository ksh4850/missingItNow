<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/product/product-list.css">

</head>

<body>
	<jsp:include page="../common/header.jsp"/>
    <!-- section -->
    <section>
        <div class="section">
            <div class="left-space"></div>
            <div class="left-menu">
                <div class="menu-name">카테고리</div>
                <li>거실/침실가구</li>
                <li>학생/서재가구</li>
                <li>테이블/의자</li>
                <li>침구/커튼</li>
                <li>쿠션/방석</li>
                <li>가전</li>
                <li>수납/정리</li>
                <li>조명</li>
                <li>홈데코</li>
                <li>생활용품</li>

                <div class="menu-name">가격</div>
                <p><input type="text" name="최저가" placeholder="최저가" class="input-price"> ~ <input type="text"
                        placeholder="최고가" class="input-price"></p>
                <a href="#">
                    <div class="price-button">검색하기</div>
                </a>
            </div>
            <div class="right">
                <div class="right-header">
                    <div class="right-header-search">검색결과 303,303건</div>
                    <div class="right-header-button">
                        <a id="button3" onclick="button3()" href="#">
                            <div class="right-header-button-1">낮은가격순</div>
                        </a>
                        <a onclick="button2()" href="#">
                            <div class="right-header-button-1">높은가격순</div>
                        </a>
                        <a onclick="button1()" href="#">
                            <div class="right-header-button-1">인기순</div>
                        </a>
                    </div>
                </div>
              

                <div class="right-contest">
                    <div class="right-contest-advertisement">추천상품</div>
                    <div class="right-contest-recommendation">
                         <c:forEach var="List" items="${ productList }" begin="0" end="5" step="1">
                        <a href="#">
                            <div class="right-contest-recommendation-box">
                                <img src="${ pageContext.servletContext.contextPath }/resources/images/product/<c:out value="${ List.prodImgRename }"/>" alt="">
                                <div class="product-font-1"><c:out value="${ List.prodName }"/></div>
                                <div class="product-font-2"><c:out value="${ List.prodPrice }"/>원</div>
                                <div class="product-font-1">무료배송</div>
                            </div>
                        </a>
                        </c:forEach>
                    </div>

                    <div class="right-contest-product-view">
                        <div class="right-contest-advertisement">상품보기</div>
                    </div>
                    
					<div id="test">
                    <c:forEach var="List" items="${ highProductList }">  <!-- 처음 뜨는 화면 -->
                    <a href="${ pageContext.servletContext.contextPath}/product/product?prodNo=<c:out value="${ List.prodNo }"/>&corpNo=<c:out value="${ List.corpNo }"/>">
                        <div class="right-contest-advertisement-product">
                            <div class="right-contest-advertisement-product-img">
                                <img src="${ pageContext.servletContext.contextPath }/resources/images/product/<c:out value="${ List.prodImgRename }"/>" alt="">
                            </div>
                            <div class="right-contest-advertisement-text">
                                <div class="product-contest-1"><c:out value="${ List.prodName }"/> </div>
                                <div class="product-font-review"><span class="color-yellow">★★★★★</span> 리뷰 40건
                                </div>
                                <div class="product-contest-2"><c:out value="${ List.prodPrice }"/></div>
                                <div class="product-contest-1">무료배송</div>
                            </div>
                            <div class="right-contest-advertisement-company">
                                <div class="product-contest-1"><c:out value="${ List.corpName }"/></div>
                            </div>
                        </div>
                    </a>
                    </c:forEach>
                    </div>
                   
                    
                    
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="../common/footer.jsp"/>
</body>

</html>