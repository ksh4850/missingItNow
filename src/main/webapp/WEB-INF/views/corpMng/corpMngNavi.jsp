<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    .nav{
        position: relative;
        float: left;
        width: 250px;
        min-height: 700px;
        text-align: center;
        font-family: 'SCDream-Regular';
        border: 1px solid black;
    }

    .naviList li{
        list-style: none;
        padding-bottom: 15px;
    }

    .corpProfileDiv{
        display: inline-block;
        position: relative;
        width: 240px;
        height: 250px;
        border: 1px solid blue;
    }

    .corpProfileImg{
        margin: 0 auto;
        width: 150px;
        height: 150px;
        border: 1px solid black;
        border-radius: 50%;
    }
</style>
<body>
    <div class="nav">
        <div class="corpProfileDiv">
            <br> 
            <div class="corpProfileImg"> </div>
            <br>
            <h3 style="display: inline;">다이소</h3><p style="display: inline;">님 환영합니다.</p>
        </div>
        <br>
        <div class="naviList">
            <div class="naviListTitle">
                <h2>상품관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="insertProduct">상품등록</li>
                <li id="selectProduct">상품조회/수정</li>
                <li id="relatedProductMng" style="color: red;">연관상품관리(공사중)</li>
            </div>
            <div class="naviListTitle">
                <h2>판매관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="selectOrderList">주문내역</li>
                <li id="selectSalesList">매출내역</li>
                <li id="selectCancelReturnList" style="color: red;">취소/반품/교환 내역(공사중)</li>
                <li id="insertBlackUser" style="color: red;">판매방해 고객관리(공사중)</li>
            </div>
            <div class="naviListTitle">
                <h2>정산관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="settlementNList">정산 및 내역</li>
                <li id="depositMng">예치금관리</li>
                <li id="paymentList" style="color: red;">결제내역(공사중)</li>
            </div>
            <div class="naviListTitle">
                <h2 id="qnaNReviewMng">문의/리뷰관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="productCmtList">상품문의</li>
                <li id="productReviewList">상품리뷰 평점조회</li>
            </div>
            <div class="naviListTitle">
                <h2 id="statistics">통계</h2>
            </div>
        </div>
    </div>
    
	<script>
		$("#insertProduct").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/prodMng/insertProduct";
		})
		
		$("#selectProduct").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/prodMng/selectProduct";
		})
		
		$("#selectOrderList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/salesMng/selectOrderList";
		})
		
		$("#selectSalesList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/salesMng/selectSalesList";
		})
		
		$("#settlementNList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/settleMng/selectSettlementList";
		})
		
		$("#depositMng").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/settleMng/selectDepositList";
		})
		
		
		
		
		
		$("#statistics").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/statistics/selectAllStatistics";
		})
		
	</script>
	
</body>
</html>