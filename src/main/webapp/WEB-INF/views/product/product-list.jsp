<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0001">
                <li>거실/침실가구</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0002">
                <li>학생/서재가구</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0003">
                <li>테이블/의자</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0004">
                <li>침구/커튼</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0005">
                <li>쿠션/방석</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0006">
                <li>가전</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0007">
                <li>수납/정리</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0008">
                <li>조명</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT0009">
                <li>홈데코</li>
                </a>
                <a href="${ pageContext.servletContext.contextPath}/product/productList?prodCtgNo=PRCT00010">
                <li>생활용품</li>
                </a>
                <div class="menu-name">가격</div>
                <p><input type="text" name="최저가" placeholder="최저가" class="input-price" id="lowPrice"> ~ <input id="highPrice" type="text" placeholder="최고가" class="input-price"></p>
                <a id="button0" href="#">
                    <div class="price-button">검색하기</div>
                </a>
            </div>
            <div class="right">
                <div class="right-header">
                    <div class="right-header-search">검색결과 303,303건</div>
                    <input type="hidden" id="prodCtgNo" value="${ productList[0].product.prodCtgNo }">
                    <div class="right-header-button">
                        <a id="button3" href="#">
                            <div class="right-header-button-1">낮은가격순</div>
                        </a>
                        <a id="button2" href="#">
                            <div class="right-header-button-1">높은가격순</div>
                        </a>
                        <a id="button1" href="#">
                            <div class="right-header-button-1">인기순</div>
                        </a>
                    </div>
                </div>
	
                <div class="right-contest">
                    <div class="right-contest-advertisement">추천상품</div>
                    <div class="right-contest-recommendation">
                         <c:forEach var="List" items="${ productList }" begin="0" end="4" step="1">
                        <a href="#">
                            <div class="right-contest-recommendation-box">
                                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${ List.productImg.prodImgRename }" alt="">
                                <div class="product-font-1"><c:out value="${ List.product.prodName }"/></div>
                                <div class="product-font-2"><c:out value="${ List.product.prodPrice }"/>원</div>
                                <div class="product-font-1">무료배송</div>
                            </div>
                        </a>
                        </c:forEach>
                    </div>

                    <div class="right-contest-product-view">
                        <div class="right-contest-advertisement">상품보기</div>
                    </div>
                    
					<div class = "productChange">
                    <c:forEach var="List" items="${ productList }">  <!-- 처음 뜨는 화면 -->
                    <a href="${ pageContext.servletContext.contextPath}/product/product?prodNo=<c:out value="${ List.product.prodNo }"/>&corpNo=<c:out value="${ List.product.corpNo }"/>">
                        <div class="right-contest-advertisement-product">
                            <div class="right-contest-advertisement-product-img">
                                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/<c:out value="${ List.productImg.prodImgRename }"/>" alt="">
                            </div>
                            <div class="right-contest-advertisement-text">
                                <div class="product-contest-1"><c:out value="${ List.product.prodName }"/> </div>
                                <div class="product-font-review"><span class="color-yellow">
                                	<c:if test="${ List.starsScore.starsScore == 5}">
                                		★★★★★
                                	</c:if>
                                	<c:if test="${ List.starsScore.starsScore == 4}">
                                		★★★★☆
                                	</c:if>
                                	<c:if test="${ List.starsScore.starsScore == 3}">
                                		★★★☆☆
                                	</c:if>
                                	<c:if test="${ List.starsScore.starsScore == 2}">
                                		★★☆☆☆
                                	</c:if>
                                	<c:if test="${ List.starsScore.starsScore == 1}">
                                		★☆☆☆☆
                                	</c:if>
                                	<c:if test="${ List.starsScore.starsScore == 0}">
                                		☆☆☆☆☆
                                	</c:if>
                                	</span>리뷰 ${ List.starsScore.count }건</div>
                                <div class="product-contest-2"><c:out value="${ List.product.prodPrice }"/> 할인가 <c:out value="${ List.product.prodDiscountRate }"/>% 
                                
                                <c:forEach var="price" items="${ price }">
                                	<c:if test="${ price.prodNo == List.product.prodNo }">
                                		<c:out value="${ price.prodPrice }"/>원
                                	</c:if>
                                </c:forEach>  
                                </div>
                                <div class="product-contest-1">무료배송</div>
                            </div>
                            <div class="right-contest-advertisement-company">
                                <div class="product-contest-1"><c:out value="${ List.product.corpName }"/></div>
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
    <script>
    $("#button0").click(function () {
        const prodCtgNo = document.getElementById("prodCtgNo").value;
        const highPrice = document.getElementById("highPrice").value;
        const lowPrice = document.getElementById("lowPrice").value;
        $.ajax({
            url: "productPriceChoice",
            method: "post",
            data: {
                prodCtgNo: prodCtgNo,
                highPrice: highPrice,
                lowPrice: lowPrice
            },
            success: function (data) {
                console.log(data)
                console.table(data);
                const $div = $(".productChange").attr("class", "productChange");
                $div.html("");

                for (var index in data) {


                    $link = $("<a>").attr("href", "${ pageContext.servletContext.contextPath}/product/product?prodNo=" + data[index].prodNo + "&corpNo=" + data[index].corpNo);

                    $floatDiv = $("<div>").attr("class", "right-contest-advertisement-product");
                    $rightImgDiv = $("<div>").attr("class", "right-contest-advertisement-product-img");
                    $img = $("<img>").attr("src", "${ pageContext.servletContext.contextPath }/resources/uploadFiles/" + data[index].prodImgRename);

                    $centerDiv = $("<div>").attr("class", "right-contest-advertisement-text");
                    $prodName = $("<div>").text(data[index].prodName).attr("class", "product-contest-1");
                    $review = $("<div>").attr("class", "product-font-review");
                    $span = $("<span>").text("★★★★★").attr("class", "color-yellow");
                    $span2 = $("<span>").text("리뷰 40건");
                    $price = $("<div>").text(data[index].prodPrice).attr("class", "product-contest-2");
                    $free = $("<div>").text("무료배송").attr("class", "product-contest-1");
                   
                   
                    $leftDiv = $("<div>").attr("class", "right-contest-advertisement-company");
                    $corpName = $("<div>").text(data[index].corpName).attr("class", "product-contest-1");

                    $rightImgDiv.append($img);

                    $centerDiv.append($prodName);
                    $centerDiv.append($review);
                    $review.append($span);
                    $review.append($span2);
                    $review.append($price);
                    $review.append($free);


                    $leftDiv.append($corpName);

                    $floatDiv.append($rightImgDiv);
                    $floatDiv.append($centerDiv);
                    $floatDiv.append($leftDiv);

                    $link.append($floatDiv);

                    $div.append($link);
                }

            },

            error: function (error) {
                console.log(error);
            }
        });
    });
    $("#button3").click(function () {

        const prodCtgNo = document.getElementById("prodCtgNo").value;
        $.ajax({
            url: "lowProductList",
            method: "post",
            data: { prodCtgNo: prodCtgNo },
            success: function (data) {
                console.log(data)
                console.table(data);
                const $div = $(".productChange").attr("class", "productChange");
                $div.html("");

                for (var index in data) {


                    $link = $("<a>").attr("href", "${ pageContext.servletContext.contextPath}/product/product?prodNo=" + data[index].prodNo + "&corpNo=" + data[index].corpNo);

                    $floatDiv = $("<div>").attr("class", "right-contest-advertisement-product");
                    $rightImgDiv = $("<div>").attr("class", "right-contest-advertisement-product-img");
                    $img = $("<img>").attr("src", "${ pageContext.servletContext.contextPath }/resources/uploadFiles/" + data[index].prodImgRename);

                    $centerDiv = $("<div>").attr("class", "right-contest-advertisement-text");
                    $prodName = $("<div>").text(data[index].prodName).attr("class", "product-contest-1");
                    $review = $("<div>").attr("class", "product-font-review");
                    $span = $("<span>").text("★★★★★").attr("class", "color-yellow");
                    $span2 = $("<span>").text("리뷰 40건");
                    $price = $("<div>").text(data[index].prodPrice).attr("class", "product-contest-2");
                    $free = $("<div>").text("무료배송").attr("class", "product-contest-1");

                    $leftDiv = $("<div>").attr("class", "right-contest-advertisement-company");
                    $corpName = $("<div>").text(data[index].corpName).attr("class", "product-contest-1");

                    $rightImgDiv.append($img);

                    $centerDiv.append($prodName);
                    $centerDiv.append($review);
                    $review.append($span);
                    $review.append($span2);
                    $review.append($price);
                    $review.append($free);


                    $leftDiv.append($corpName);

                    $floatDiv.append($rightImgDiv);
                    $floatDiv.append($centerDiv);
                    $floatDiv.append($leftDiv);

                    $link.append($floatDiv);

                    $div.append($link);
                }

            },

            error: function (error) {
                console.log(error);
            }
        });
    });
    $("#button2").click(function () {

        const prodCtgNo = document.getElementById("prodCtgNo").value;
        $.ajax({
            url: "highProductList",
            method: "post",
            data: { prodCtgNo: prodCtgNo },
            success: function (data) {
                console.log(data)
                console.table(data);
                const $div = $(".productChange").attr("class", "productChange");
                $div.html("");

                for (var index in data) {


                    $link = $("<a>").attr("href", "${ pageContext.servletContext.contextPath}/product/product?prodNo=" + data[index].prodNo + "&corpNo=" + data[index].corpNo);

                    $floatDiv = $("<div>").attr("class", "right-contest-advertisement-product");
                    $rightImgDiv = $("<div>").attr("class", "right-contest-advertisement-product-img");
                    $img = $("<img>").attr("src", "${ pageContext.servletContext.contextPath }/resources/uploadFiles/" + data[index].prodImgRename);

                    $centerDiv = $("<div>").attr("class", "right-contest-advertisement-text");
                    $prodName = $("<div>").text(data[index].prodName).attr("class", "product-contest-1");
                    $review = $("<div>").attr("class", "product-font-review");
                    $span = $("<span>").text("★★★★★").attr("class", "color-yellow");
                    $span2 = $("<span>").text("리뷰 40건");
                    $price = $("<div>").text(data[index].prodPrice).attr("class", "product-contest-2");
                    $free = $("<div>").text("무료배송").attr("class", "product-contest-1");

                    $leftDiv = $("<div>").attr("class", "right-contest-advertisement-company");
                    $corpName = $("<div>").text(data[index].corpName).attr("class", "product-contest-1");

                    $rightImgDiv.append($img);

                    $centerDiv.append($prodName);
                    $centerDiv.append($review);
                    $review.append($span);
                    $review.append($span2);
                    $review.append($price);
                    $review.append($free);


                    $leftDiv.append($corpName);

                    $floatDiv.append($rightImgDiv);
                    $floatDiv.append($centerDiv);
                    $floatDiv.append($leftDiv);

                    $link.append($floatDiv);

                    $div.append($link);
                }

            },

            error: function (error) {
                console.log(error);
            }
        });
    });
    $("#button1").click(function () {

        const prodCtgNo = document.getElementById("prodCtgNo").value;
        $.ajax({
            url: "productPopularity",
            method: "post",
            data: { prodCtgNo: prodCtgNo },
            success: function (data) {
                console.log(data)
                console.table(data);
                const $div = $(".productChange").attr("class", "productChange");
                $div.html("");

                for (var index in data) {


                    $link = $("<a>").attr("href", "${ pageContext.servletContext.contextPath}/product/product?prodNo=" + data[index].prodNo + "&corpNo=" + data[index].corpNo);

                    $floatDiv = $("<div>").attr("class", "right-contest-advertisement-product");
                    $rightImgDiv = $("<div>").attr("class", "right-contest-advertisement-product-img");
                    $img = $("<img>").attr("src", "${ pageContext.servletContext.contextPath }/resources/uploadFiles/" + data[index].prodImgRename);

                    $centerDiv = $("<div>").attr("class", "right-contest-advertisement-text");
                    $prodName = $("<div>").text(data[index].prodName).attr("class", "product-contest-1");
                    $review = $("<div>").attr("class", "product-font-review");
                    $span = $("<span>").text("★★★★★").attr("class", "color-yellow");
                    $span2 = $("<span>").text("리뷰 40건");
                    $price = $("<div>").text(data[index].prodPrice).attr("class", "product-contest-2");
                    $free = $("<div>").text("무료배송").attr("class", "product-contest-1");

                    $leftDiv = $("<div>").attr("class", "right-contest-advertisement-company");
                    $corpName = $("<div>").text(data[index].corpName).attr("class", "product-contest-1");

                    $rightImgDiv.append($img);

                    $centerDiv.append($prodName);
                    $centerDiv.append($review);
                    $review.append($span);
                    $review.append($span2);
                    $review.append($price);
                    $review.append($free);


                    $leftDiv.append($corpName);

                    $floatDiv.append($rightImgDiv);
                    $floatDiv.append($centerDiv);
                    $floatDiv.append($leftDiv);

                    $link.append($floatDiv);

                    $div.append($link);
                }

            },

            error: function (error) {
                console.log(error);
            }
        });
    });


</script>
</body>

</html>