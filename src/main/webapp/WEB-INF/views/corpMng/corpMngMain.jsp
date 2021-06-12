<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
    body{
        width: 1920px;
        min-height: 1900px;
        margin: 0 auto;
	}
	
    .section{
        position: relative;
        float: right;
        width: 1650px;
        min-height: 700px;
        /* border: 1px solid black; */
    }
	
	.noticeDiv{
        border: 1px solid black;
        float: left;
        position: relative;
        width: 800px;
        height: 300px;
    }

    .titleBtn{
        padding-top: 10px;
        font-weight: bold;
        font-size: 25px;
    }

    .corpInfoDiv{
        border: 1px solid black;
        position: relative;
        float: left;
        left: 40px;
        width: 800px;
        height: 300px;
    }

    .corpInfoTable {
        font-size: 18px;
    }

    .corpInfoTable input{
        border: none;
        width: 150px;
        font-size: 18px;
    }

    .productSummaryDiv{
        border: 1px solid black;
        position: relative;
        float: left;
        top: 40px;
        width: 800px;
        height: 300px;
    }

    .orderSummaryDiv{
        border: 1px solid black;
        position: relative;
        float: left;
        top: 40px;
        left: 40px;
        width: 800px;
        height: 300px;
    }

    .prodCmtSummaryDiv{
        border: 1px solid black;
        position: relative;
        float: left;
        top: 80px;
        width: 800px;
        height: 300px;
    }

    .reviewSummaryDiv{
        border: 1px solid black;
        position: relative;
        float: left;
        top: 80px;
        left: 40px;
        width: 800px;
        height: 300px;
    }
	
    .footer{
        width: 1920px;
        height: 100px;
        border: 1px solid black;
        text-align: center;
    }

</style>
<body>
	<!-- header jsp -->
	<jsp:include page="corpMngHeader.jsp"/>
	<!-- navi jsp -->
	<jsp:include page="corpMngNavi.jsp"/>
	
	<div class="section">
		<div class="noticeDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 공지사항 > </button>   <!-- 공지사항 페이지 이동 btn-->
            <hr>
            <div class="noticeList">
                <table>
                    <!-- select for문 시작 -->
                    <tr>
                        <td style="width: 680px; height: 40px; text-indent: 20px;">공지 제목1</td>
                        <td style="text-align: center;">2021-05-03</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">공지 제목2</td>
                        <td style="text-align: center;">2021-05-02</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">공지 제목3</td>
                        <td style="text-align: center;">2021-05-01</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="corpInfoDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 판매자정보 > </button>   <!-- 판매자정보 페이지 이동 btn-->
            <hr>
            <table class="corpInfoTable" align="center">
                <tr>
                    <td style="width: 150px; height: 40px; text-align: right;">기업명 : </td>
                    <td style="width: 200px; text-indent: 10px"><c:out value="${corpUserInfo.corpName}"/></td>
                    <td style="width: 150px; height: 40px; text-align: right;">등급 : </td>
                    <td style="width: 250px; text-indent: 10px; text-align: right;">${corpUserInfo.corpLv.corpLvName}</td>
                </tr>
                <tr>
                    <td style="height: 40px; text-align: right;">등록된 상품 수 : </td>
                    <td style="text-indent: 10px"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ totalCount }"/>건</td>
                    <td style="height: 40px; text-align: right;">예치금 잔액 : </td>
                    <td style="text-indent: 10px; text-align: right;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ depositTotal }"/> 원</td>
                </tr>
            </table>
        </div>
        <div class="productSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 최근 등록 상품 > </button>   <!-- 상품조회 페이지 이동 btn-->
            <hr>
            <div class="productSummaryList">
                <table>
	                <c:forEach var="recentProd" items="${ recentProductList }" begin="1" end="5" step="1">
	                	<tr>
	                        <td style="width: 680px; height: 40px; text-indent: 20px;"><nobr>${ recentProd.prodName }</nobr></td>
	                        <td style="text-align: right;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ recentProd.prodPrice }"/> 원</td>
	                    </tr>
					</c:forEach>
                </table>
            </div>
        </div>
        <div class="orderSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 주문 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
            <hr>
            <div class="orderSummaryList">
                <table>
                    <tr>
                        <td style="width: 400px; height: 40px; text-indent: 20px;">입금 대기 : </td>
                        <td>${ countOrderStatus.waitCount } 건</td>
                    </tr>
                    <tr>
                        <td style="width: 400px; height: 40px; text-indent: 20px;">결제 완료 : </td>
                        <td>${ countOrderStatus.paidCount } 건</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품 준비중 : </td>
                        <td>${ countOrderStatus.preparingCount } 건</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">배송중 : </td>
                        <td>${ countOrderStatus.deliveringCount } 건</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">배송완료 : </td>
                        <td>${ countOrderStatus.deliveredCount } 건</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="prodCmtSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 상품 문의 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
            <hr>
            <div class="prodCmtSummaryList">
                <table>
                    <c:forEach var="recentProdCmt" items="${ recentProductCmtList }" begin="1" end="5" step="1">
	                	<tr>
	                        <td style="width: 680px; height: 40px; text-indent: 20px;"><nobr>${ recentProdCmt.prodComtDetails }</nobr></td>
	                        <td style="text-align: right;">${ recentProdCmt.prodComtDate }</td>
	                    </tr>
					</c:forEach>
                </table>
            </div>
        </div>
        <div class="reviewSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 상품 리뷰 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
            <hr>
            <div class="reviewSummaryList">
                <table>
					<c:forEach var="recentProdRev" items="${ recentProdRevList }" begin="1" end="5" step="1">
	                	<tr>
	                        <td style="width: 600px; height: 40px; text-indent: 20px;"><nobr>${ recentProdRev.reviewDetails }</nobr></td>
	                        <td style="text-align: right;">
	                        	<c:if test="${ recentProdRev.reviewScore eq 5 }">★★★★★</c:if>
			                    <c:if test="${ recentProdRev.reviewScore eq 4 }">★★★★☆</c:if>
			                    <c:if test="${ recentProdRev.reviewScore eq 3 }">★★★☆☆</c:if>
			                    <c:if test="${ recentProdRev.reviewScore eq 2 }">★★☆☆☆</c:if>
			                    <c:if test="${ recentProdRev.reviewScore eq 1 }">★☆☆☆☆</c:if>
	                        </td>
	                        <td style="text-align: right;">${ recentProdRev.reviewDate }</td>
	                    </tr>
					</c:forEach>
                </table>
            </div>
        </div>
	</div>	<!-- sectionDiv 종료 -->
	
	<br clear="both">
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
</body>
</html>