<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>상품 상세 페이지 </title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/product/product.css">

</head>

<body>

    <jsp:include page="../common/header.jsp" />
    <section1>
        <div class="product intro">
            <div class="thumbnail">
                <img id="img" src="${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[0].prodImgRename }" />" alt="" width="540px">
            </div>
            <div class="information">
                <div class="title">
                    <c:out value="${ productList[0].prodName }" />
                </div>
                <div class="price">
                    <div class="sale">
                        <c:out value="${ productList[0].prodDiscountRate }" />%
                    </div>
                    <div class="cost-price"><s>
                            <c:out value="${ productList[0].prodPrice }" />원
                        </s></div>
                    <div class="sales">8,000원</div>
                </div>
                <div class="parcel">
                    <div class="name">
                        택배<br>
                        원산지<br>
                        혜택
                    </div>
                    <div class="name-contest">
                        2,500원(산간지역 거리에 따라 증가)<br>
                        국내<br>
                        무이자 할부 / 카카오페이 할인
                    </div>
                </div>
                <div class="final-price">
                    <div class="final-left final-top">총 상품 금액</div>
                    <div class="final-right final-top">
                        <c:out value="${ productList[0].prodPrice }" />원
                    </div>
                    <div class="final-left final-bottom">할인가</div>
                    <div class="final-right final-bottom">8,000원</div>
                </div>

                <div class="product-button">
                    <button onclick="location.href='https://www.naver.com'" class="one-button">장바구니</button>
                    <button onclick="location.href='https://www.naver.com'" class="two-button">바로구매</button>
                </div>
            </div>
            <div>
                <button onclick="Img1()"><img src="${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[0].prodImgRename }" />" alt="" class="thumbnail-img"></button>
                <button onclick="Img2()"><img src="${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[1].prodImgRename }" />" alt="" class="thumbnail-img"></button>
                <button onclick="Img3()"><img src="${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[2].prodImgRename }" />" alt="" class="thumbnail-img"></button>
                <button onclick="Img4()"><img src="${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[3].prodImgRename }" />" alt="" class="thumbnail-img"></button>
                <button onclick="Img5()"><img src="${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[4].prodImgRename }" />" alt="" class="thumbnail-img"></button>
            </div>
        </div>
        <script>
            function Img1() {
                document.getElementById("img").src = "${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[0].prodImgRename } " />";
            }
            function Img2() {
                document.getElementById("img").src = "${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[1].prodImgRename } " />";
            }
            function Img3() {
                document.getElementById("img").src = "${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[2].prodImgRename } " />";
            }
            function Img4() {
                document.getElementById("img").src = "${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[3].prodImgRename } " />";
            }
            function Img5() {
                document.getElementById("img").src = "${ pageContext.servletContext.contextPath }/resources/img/product/<c:out value="${ productList[4].prodImgRename } " />";
            }
        </script>
    </section1>
    <section2>
        <div class="section2">
            <div class="exhibitions">
                <div class="exhibitions-right">신나는 램프 기획전</div>
                <div class="exhibitions-left"><a href="#">더보기 +</a></div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/1.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/2.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/3.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/4.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
            </div>

            <div class="exhibitions">
                <div class="exhibitions-right">화나는 램프 기획전</div>
                <div class="exhibitions-left"><a href="#">더보기 +</a></div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/5.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/10.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/1.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/2.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
            </div>
            <div class="exhibitions">
                <div class="exhibitions-right">확인만 할깨요</div>
                <div class="exhibitions-left"><a href="#">더보기 +</a></div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/3.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/7.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/8.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/9.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
            </div>
            <div class="exhibitions">
                <div class="exhibitions-right">넘어가는거 확인용</div>
                <div class="exhibitions-left"><a href="#">더보기 +</a></div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/6.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/7.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/8.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
                <div class="exhibitions-img">
                    <img src="${ pageContext.servletContext.contextPath }/resources/img/product/10.jpg" alt="">
                    <div class="exhibitions-font">
                        [준원나라]<br>
                        게이밍의자 1<br>
                        <div class="exhibitions-price">3,200원</div>
                    </div>
                </div>
            </div>
        </div>
    </section2>

    <section3>
        <div class="path">
            <a href="#click1">
                <div class="path-button">제품 상세</div>
            </a>
            <a href="#click2">
                <div class="path-button2">배송 안내</div>
            </a>
            <a href="#img">
                <div class="path-button2">상품 고객센터</div>
            </a>
            <a href="#img">
                <div class="path-button2">리뷰(1,101)</div>
            </a>
        </div>
        <div class="section3">
            <div class="section-name">필수 표기정보</div>
            <div class="notations">
                <table>
                    <tr>
                        <th>종류</th>
                        <td>램프</td>
                        <th>소재</td>
                        <td>컨테츠 참조</td>
                    </tr>
                    <tr>
                        <th>치수</th>
                        <td>컨테츠 참조</td>
                        <th>제조자(수입자)</td>
                        <td>(주)진민이회사</td>
                    </tr>
                    <tr>
                        <th>제조사</th>
                        <td>한국</td>
                        <th>취급시 주의사항</td>
                        <td>컨테츠 참조</td>
                    </tr>
                    <tr>
                        <th>품질보증기준</th>
                        <td>컨테츠 참조</td>
                        <th>책임자 전화번호</td>
                        <td>회사 고객센터 1577-1577</td>
                    </tr>
                </table>
                <br><br><br>
                <div class="notations2" id="click1">
                    <c:forEach var="List" items="${ productImgList }" begin="0">
                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/test/<c:out value="
                            ${ List.prodImgRename }" />" alt="">
                    </c:forEach>

                </div>
                <div class="section-name" id="click2">배송정보</div>
                <table>
                    <tr class="section4-table">
                        <th>배송방법</th>
                        <td>순차배송</td>
                        <th rowspan="2" class="table-rowspan-2">배송비</th>
                        <td rowspan="2">무료배송<br>
                            - 도서산간 지역 추가비용 없음</td>
                    </tr>
                    <tr class="section4-table">
                        <th>묶음배송여부</th>
                        <td>가능</td>
                    </tr>
                    <tr class="section4-table">
                        <th class="table-rowspan-3">배송기간</th>
                        <td colspan="3">
                            - 주문 및 결제 완료 후, 1-2일 이내 도착<br>
                            - 도서 산간 지역 등은 하루가 더 소요될 수 있습니다 <br>
                            - 천재지벼느 물량 수급 변동 등 예외적인 사유 발생 시, 다소 지연될 수 있는 점 양해 부탁드립니다 <br>
                        </td>
                    </tr>
                </table>

                <div class="section-name">교환/반품 안내</div>
                <table>
                    <tr class="section3-table">
                        <th class="table-rowspan-3">교환/반품 비용</th>
                        <td class="section3-td">
                            5,000원<br>
                            - 단, 고객 변심의 겨우에만 발생<br>
                            - 부품반품 시, 남은 금액이 무료배송 조건을 유지하면 일부 반품비용이 부과
                        </td>
                    </tr>
                    <tr class="section3-table">
                        <th class="table-rowspan-3">교환/반품 신청 기준일</th>
                        <td class="section3-td">
                            - 단순변심에 교환/반품은 제품 수령 후 30일 이내까지, 제한사항에 해당하지 않는 경우에만 가능(비용 고객부담)<br>
                            - 상품의 내용이 표시ㆍ광고의 내용과 다른 경우에는 상품을 수령한 날부터 3개월 이내<br>
                            &nbsp;&nbsp;&nbsp;, 그 사실을 안 날 또는 알수 있었던 날부터 30일 이내에 청약철회 가능
                        </td>
                    </tr>
                </table>

                <div class="section-name">교환/반품 제한사항</div>
                <div class="section3-contest">
                    - 주문/제작 상품의 경우, 상품의 제작이 이미 진행된 경우<br>
                    - 상품 포장을 개봉하여 사용 또는 설치 완료되어 상품의 가치가 훼손된 경우(다느 내용 확인을 위한 포장 개봉의 경우는 예외)<br>
                    - 세트 상품 일부 사요으 구성품을 분실하였거나 취급 부주의로 인한 파손/고장/오염으로 재판매 불가한 경우<br>
                    - 모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 달라, 고객이 단순 병심으로 교환/반붐을 무료로 요청하는 경우<br>
                    - 제조사의 사정 (신모델 출시 등) 및 부품 가격변동 등에 의해 무료 교환/반품으로 요청하는 경우
                </div>
                <div class="section3-bold">※ 각 상품별로 아래와 같은 사유로 취소/반품이 제한 될 수 있습니다</div>

                <div class="section-name">판매자 정보</div>
                <table>
                    <tr class="section3-table">
                        <th>판매자</th>
                        <td class="section3-td">송준원</td>
                    </tr>
                </table>
                <div class="section3-warning">미성년자가 체결한 계약은 법정대리인이 동의하지 않는 경우 본인 또는 법정대리인이 취소할 수 있습니다.</div>
                <div class="review">

                </div>

            </div>
        </div>
    </section3>
    <section4>
        <div class="section3">
            <div class="section4_rv">상품 리뷰</div>
            <div class="section4_rv_contest">
                <div class="section4_star">
                    <span class="section4_star_1">구매만족도</span><br>
                    <span class="section4_star_2">
                        <c:out value="${ average }" />
                    </span><br>
                    <c:if test="${ average eq '5'}">
                        <span>
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                        </span>
                    </c:if>
                    <c:if test="${ average eq '4'}">
                        <span>
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                        </span>
                    </c:if>
                    <c:if test="${ average eq '3'}">
                        <span>
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                        </span>
                    </c:if>
                    <c:if test="${ average eq '2'}">
                        <span>
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                        </span>
                    </c:if>
                    <c:if test="${ average eq '1'}">
                        <span>
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                        </span>
                    </c:if>
                    <c:if test="${ average eq '0'}">
                        <span>
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                            <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                alt="">
                        </span>
                    </c:if>
                </div>
                <div class="section4_point">



                    <div class="section4_point_5">
                        <div class="section4_point_1">5점</div>
                        <div class="a">
                            <div class="b" style="width: <c:out value=" ${ fivePointSize }" />px;">
                        </div>
                    </div>
                    <div class="section4_point_2">
                        <c:out value="${ fivePoint }" />%
                    </div>
                </div>
                <div class="section4_point_5">
                    <div class="section4_point_1">4점</div>
                    <div class="a">
                        <div class="b" style="width: <c:out value=" ${ fourPointSize }" />px;">
                    </div>
                </div>
                <div class="section4_point_2">
                    <c:out value="${ fourPoint }" />%
                </div>
            </div>
            <div class="section4_point_5">
                <div class="section4_point_1">3점</div>
                <div class="a">
                    <div class="b" style="width: <c:out value=" ${ threePointSize }" />px;">
                </div>
            </div>
            <div class="section4_point_2">
                <c:out value="${ threePoint }" />%
            </div>
        </div>
        <div class="section4_point_5">
            <div class="section4_point_1">2점</div>
            <div class="a">
                <div class="b" style="width: <c:out value=" ${ twoPointSize }" />px;">
            </div>twoPoint
        </div>
        <div class="section4_point_2">
            <c:out value="${ twoPoint }" />%
        </div>
        </div>
        <div class="section4_point_5">
            <div class="section4_point_1">1점</div>
            <div class="a">
                <div class="b" style="width: <c:out value=" ${ onePointSize }" />px;">
            </div>
        </div>
        <div class="section4_point_2">
            <c:out value="${ onePoint }" />%
        </div>
        </div>


        </div>
        <div class="section4_test">
            dfs
        </div>
        </div>
        </div>
        <div class="section3">
            <div class="section4_rv">전체 리뷰 총 <c:out value="${ count }" />건</div>
            <form action="${ pageContext.servletContext.contextPath }/product/insertReview" method="post" encType="multipart/form-data">
				<span>
   					<button onclick="Img1()" type="button"><img id="star1" src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg" alt="" ></button>
    				<button onclick="Img2()" type="button"><img id="star2" src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg" alt="" ></button>
    				<button onclick="Img3()" type="button"><img id="star3" src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg" alt="" ></button>
    				<button onclick="Img4()" type="button"><img id="star4" src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg" alt="" ></button>
    				<button onclick="Img5()" type="button"><img id="star5" src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg" alt="" ></button>
				</span>

				별점 :  <input type="text" value="3" name="stars" id="starsValue"><br>
				글내용 : <input type="text" name="reviewDetails"><br>
				<!-- 글내용 : <input type="file" name="multiFiles" multiple><br> -->
				<button type="submit"> 댓글 등록</button>
			</form>  
            <table>
                <thead>
                </thead>
                <tbody>
                    <c:forEach var="reviewList" items="${ reviewList }">
                        <tr>
                            <td>
                                <c:out value="${ reviewList.nickname }" />
                            </td>
                            <td class="table_right">
                                <c:out value="${ reviewList.reviewDate }" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <c:if test="${ reviewList.reviewScore eq '5'}">
                                    <span>
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        5
                                    </span>
                                </c:if>
                                <c:if test="${ reviewList.reviewScore eq '4'}">
                                    <span>
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        4
                                    </span>
                                </c:if>
                                <c:if test="${ reviewList.reviewScore eq '3'}">
                                    <span>
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        3
                                    </span>
                                </c:if>
                                <c:if test="${ reviewList.reviewScore eq '2'}">
                                    <span>
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        2
                                    </span>
                                </c:if>
                                <c:if test="${ reviewList.reviewScore eq '1'}">
                                    <span>
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        1
                                    </span>
                                </c:if>
                                <c:if test="${ reviewList.reviewScore eq '0'}">
                                    <span>
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg"
                                            alt="" width="25">
                                        0
                                    </span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <c:out value="${ reviewList.reviewDetails }" />
                            </td>
                        </tr>
                        <tr class="table_bottom">
                            <td colspan="2"><span><img
                                        src="${ pageContext.servletContext.contextPath }/resources/img/product/2.jpg"
                                        alt="" width="200px"></span></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section4>
    <jsp:include page="../common/footer.jsp" />
     <script>
    function Img1() {
        document.getElementById("star1").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star2").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("star3").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("star4").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("star5").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("starsValue").value = "1";
    }
    function Img2() {
        document.getElementById("star1").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star2").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star3").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("star4").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("star5").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("starsValue").value = "2";
    }
    function Img3() {
        document.getElementById("star1").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star2").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star3").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star4").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("star5").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("starsValue").value = "3";
    }
    function Img4() {
        document.getElementById("star1").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star2").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star3").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star4").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star5").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars2.jpg";
        document.getElementById("starsValue").value = "4";
    }
    function Img5() {
        document.getElementById("star1").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star2").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star3").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star4").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("star5").src = "${ pageContext.servletContext.contextPath }/resources/img/product/stars1.jpg";
        document.getElementById("starsValue").value = "5";
    }
</script>
</body>

</html>