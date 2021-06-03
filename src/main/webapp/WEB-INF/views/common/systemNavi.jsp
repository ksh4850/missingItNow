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
        /* border: 1px solid blue; */
    }
    .naviListTitle{
    	margin-top: 10px;
    }
    .naviListDetails{
    	 margin-top: 10px;
    }

    
</style>
<body>
    <div class="nav">
        <!-- <div class="corpProfileDiv">
            <br> 
            <div class="corpProfileImg"> </div>
            <br>
            <h3 style="display: inline;">다이소</h3><p style="display: inline;">님 환영합니다.</p>
        </div>
        <br> -->
        <div class="naviList">
            <div class="naviListTitle">
                <h2>회원관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="selectNUpdateProduct">일반회원</li>
                <li id="corpInfoBtn">기업회원</li>
            </div>
            <div class="naviListTitle">
                <h2>매출관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="corpSalesInfo">기업별 매출 내역</li>
                <li id="orderInfoBtn">주문내역</li>
                <li id="productSoldList">구매내역</li>
            </div>
            <div class="naviListTitle">
                <h2>정산관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="settlementNList">정산 및 내역</li>
                <li id="depositBtn">예치금관리</li>
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
    <script >
    	$("#corpInfoBtn").click(function(){
    		location.href="${ pageContext.servletContext.contextPath }/system/comInfo";
    	})
    	
    	$("#depositBtn").click(function(){
    		location.href="${ pageContext.servletContext.contextPath }/system/depositInfo";
    	})
    	
    	$("#orderInfoBtn").click(function(){
    		location.href="${ pageContext.servletContext.contextPath }/system/orderInfo";
    	})
    	
    	$("#corpSalesInfo").click(function(){
    		location.href="${ pageContext.servletContext.contextPath }/system/corpSalesInfo";
    	})
    
    </script>
	
	
</body>
</html>