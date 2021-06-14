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
        /* min-height: 1900px; */
        margin: 0 auto;
	}
	
    .section{
        position: relative;
        float: right;
        width: 1650px;
        min-height: 1000px;
        padding-top: 30px;
        font-family: 'SCDream-Regular';
    }
    
    .section button{
    	font-family: 'SCDream-Regular';
    }
    
	.noticeDiv{
        border: 3px solid #8877DA;
        border-radius: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 20px;
        padding-right: 20px;
        float: left;
        position: relative;
        width: 750px;
        height: 300px;
    }
	
	.noticeListTable{
    	margin: 0 auto;
    	width: 660px;
    	table-layout:fixed;
    }
    
    .noticeListTable td{
		height: 40px;
		text-overflow: ellipsis;
        overflow: hidden;
	}
	
    .titleBtn{
        padding-top: 10px;
        font-weight: bold;
        font-size: 25px;
    }

    .corpInfoDiv{
        border: 3px solid #8877DA;
        border-radius: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 20px;
        padding-right: 20px;
        position: relative;
        float: left;
        left: 40px;
        width: 750px;
        height: 300px;
    }

    .corpInfoTable {
        margin: 0 auto;
    	width: 660px;
    	table-layout:fixed;
    }

	.corpInfoTable td{
		height: 40px;
		text-overflow: ellipsis;
        overflow: hidden;
	}

    .productSummaryDiv{
		border: 3px solid #8877DA;
        border-radius: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 20px;
        padding-right: 20px;
		float: left;
		position: relative;
		top: 40px;
		width: 750px;
		height: 300px;
    }
    
    .productSummaryTable{
    	margin: 0 auto;
    	width: 660px;
    	table-layout:fixed;
    }
    
    .productSummaryTable td{
    	/* border: 1px solid black; */
    	height: 40px;
		text-overflow: ellipsis;
        overflow: hidden;
	}
	
    .orderSummaryDiv{
        border: 3px solid #8877DA;
        border-radius: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 20px;
        padding-right: 20px;
        position: relative;
        float: left;
        top: 40px;
        left: 40px;
        width: 750px;
        height: 300px;
    }
    
    .orderSummaryTable{
    	float: right;
    	margin-right: 80px;
    	width: 300px;
    	table-layout:fixed;
    }
    
    .orderSummaryTable td{
    	/* border: 1px solid black; */
    	height: 40px;
		text-overflow: ellipsis;
        overflow: hidden;
	}

    .prodCmtSummaryDiv{
        border: 3px solid #8877DA;
        border-radius: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 20px;
        padding-right: 20px;
        position: relative;
        float: left;
        top: 80px;
        width: 750px;
        height: 300px;
    }
    
    .prodCmtSummaryTable{
    	margin: 0 auto;
    	width: 660px;
    	table-layout:fixed;
    }
    
    .prodCmtSummaryTable td{
    	/* border: 1px solid black; */
    	height: 40px;
		text-overflow: ellipsis;
        overflow: hidden;
    }

    .reviewSummaryDiv{
        border: 3px solid #8877DA;
        border-radius: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left: 20px;
        padding-right: 20px;
        position: relative;
        float: left;
        top: 80px;
        left: 40px;
        width: 750px;
        height: 300px;
    }
    
    .reviewSummaryTable{
		margin: 0 auto;
    	width: 660px;
    	table-layout:fixed;
    }
	
	.reviewSummaryTable td{
		/* border: 1px solid black; */
    	height: 40px;
		text-overflow: ellipsis;
        overflow: hidden;
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
		<div class="sectionDivs">
			<div class="noticeDiv">
	            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 공지사항 > </button>   <!-- 공지사항 페이지 이동 btn-->
	            <hr>
	            <div>
	                <table class="noticeListTable">
	                    <c:forEach var="recentNotice" items="${ recentNoticeList }" begin="1" end="5" step="1">
		                	<tr>
		                        <td><nobr>${ recentNotice.noticeTitle }</nobr></td>
		                        <td style="text-align: center; width: 120px;">${ recentNotice.noticeDate }</td>
		                    </tr>
						</c:forEach>
	                </table>
	            </div>
	        </div>
	        <div class="corpInfoDiv">
	            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 판매자정보 > </button>   <!-- 판매자정보 페이지 이동 btn-->
	            <hr>
	            <table class="corpInfoTable" align="center">
	                <tr>
	                    <td style="width: 150px; text-align: right;">기업명 : </td>
	                    <td style="width: 150px; padding-left: 20px"><c:out value="${corpUserInfo.corpName}"/></td>
	                    <td style="width: 150px; text-align: right;">등급 : </td>
	                    <td style="width: 150px; padding-right: 20px; text-align: right;">${corpUserInfo.corpLv.corpLvName}</td>
	                </tr>
	                <tr>
	                    <td style="text-align: right;">등록된 상품 수 : </td>
	                    <td style="padding-left: 20px"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ totalCount }"/> 건</td>
	                    <td style="text-align: right;">예치금 잔액 : </td>
	                    <td style="padding-right: 20px; text-align: right;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ depositTotal }"/> 원</td>
	                </tr>
	            </table>
	        </div>
	        <div class="productSummaryDiv">
	            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 최근 등록 상품 > </button>   <!-- 상품조회 페이지 이동 btn-->
	            <hr>
	            <div>
	                <table class="productSummaryTable">
		                <c:forEach var="recentProd" items="${ recentProductList }" begin="1" end="5" step="1">
		                	<tr>
		                        <td><nobr>${ recentProd.prodName }</nobr></td>
		                        <td style="width: 150px; padding-right: 20px; text-align: right;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ recentProd.prodPrice }"/> 원</td>
		                    </tr>
						</c:forEach>
	                </table>
	            </div>
	        </div>
	        <div class="orderSummaryDiv">
	            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 주문 상태 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
	            <hr>
	            <div>
	                <table class="orderSummaryTable">
	                    <tr>
	                        <td style="text-align: right;">입금 대기 : </td>
	                        <td style="text-align: right; padding-right: 50px;">${ countOrderStatus.waitCount } 건</td>
	                    </tr>
	                    <tr>
	                        <td style="text-align: right;">결제 완료 : </td>
	                        <td style="text-align: right; padding-right: 50px;">${ countOrderStatus.paidCount } 건</td>
	                    </tr>
	                    <tr>
	                        <td style="text-align: right;">상품 준비중 : </td>
	                        <td style="text-align: right; padding-right: 50px;">${ countOrderStatus.preparingCount } 건</td>
	                    </tr>
	                    <tr>
	                        <td style="text-align: right;">배송중 : </td>
	                        <td style="text-align: right; padding-right: 50px;">${ countOrderStatus.deliveringCount } 건</td>
	                    </tr>
	                    <tr>
	                        <td style="text-align: right;">배송완료 : </td>
	                        <td style="text-align: right; padding-right: 50px;">${ countOrderStatus.deliveredCount } 건</td>
	                    </tr>
	                </table>
	            </div>
	        </div>
	        <div class="prodCmtSummaryDiv">
	            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 상품 문의 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
	            <hr>
	            <div>
	                <table class="prodCmtSummaryTable">
	                    <c:forEach var="recentProdCmt" items="${ recentProductCmtList }" begin="1" end="5" step="1">
		                	<tr>
		                        <td><nobr>${ recentProdCmt.prodComtDetails }</nobr></td>
		                        <td style="width: 120px; text-align: center;">${ recentProdCmt.prodComtDate }</td>
		                    </tr>
						</c:forEach>
	                </table>
	            </div>
	        </div>
	        <div class="reviewSummaryDiv">
	            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 상품 리뷰 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
	            <hr>
	            <div>
	                <table class="reviewSummaryTable">
						<c:forEach var="recentProdRev" items="${ recentProdRevList }" begin="1" end="5" step="1">
		                	<tr>
		                        <td><nobr>${ recentProdRev.reviewDetails }</nobr></td>
		                        <td style="width: 170px; text-align: center;">
		                        	<c:if test="${ recentProdRev.reviewScore eq 5 }">★★★★★</c:if>
				                    <c:if test="${ recentProdRev.reviewScore eq 4 }">★★★★☆</c:if>
				                    <c:if test="${ recentProdRev.reviewScore eq 3 }">★★★☆☆</c:if>
				                    <c:if test="${ recentProdRev.reviewScore eq 2 }">★★☆☆☆</c:if>
				                    <c:if test="${ recentProdRev.reviewScore eq 1 }">★☆☆☆☆</c:if>
		                        </td>
		                        <td style="width: 120px; text-align: center;">${ recentProdRev.reviewDate }</td>
		                    </tr>
						</c:forEach>
	                </table>
	            </div>
	        </div>
		</div>
	</div>	<!-- sectionDiv 종료 -->
	
	<br clear="both">
	<!-- <div class="footer">
		<h1 align="center">FOOTER</h1>
	</div> -->
	
	<script>
		$(document).ready(function() {
			resizeContent();
		});
		$(window).resize(function() {
			resizeContent();
		});
		function resizeContent() {
			var windowHeight = $(window).height();
			var sectionHeight = $(".section").height();
			$('.nav').css({'height':(sectionHeight)+'px'});
		}
	</script>
	
</body>
</html>