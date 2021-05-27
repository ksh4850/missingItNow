<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    .qnaSummaryDiv{
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
                    <td style="width: 200px; text-indent: 10px">다이소</td>
                    <td style="width: 150px; height: 40px; text-align: right;">등급 : </td>
                    <td style="width: 250px; text-indent: 10px; text-align: right;">VVIP</td>
                </tr>
                <tr>
                    <td style="height: 40px; text-align: right;">등록된 상품 수 : </td>
                    <td style="text-indent: 10px">300</td>
                    <td style="height: 40px; text-align: right;">예치금 잔액 : </td>
                    <td style="text-indent: 10px; text-align: right;">2000000 원</td>
                </tr>
                <tr>
                    <td style="height: 40px; text-align: right;">품절 상품 수 : </td>
                    <td style="text-indent: 10px">300</td>
                    <td style="height: 40px; text-align: right;">금월 매출액 : </td>
                    <td style="text-indent: 10px; text-align: right;">2000000 원</td>
                </tr>
            </table>
        </div>
        <div class="productSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 최근 등록 상품 > </button>   <!-- 상품조회 페이지 이동 btn-->
            <hr>
            <div class="productSummaryList">
                <table>
                    <!-- select for문 시작 -->
                    <tr>
                        <td style="width: 680px; height: 40px; text-indent: 20px;">상품명 3</td>
                        <td style="text-align: right;">500000 원</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품명 2</td>
                        <td style="text-align: right;">150000 원</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품명 1</td>
                        <td style="text-align: right;">50000 원</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="orderSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 주문 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
            <hr>
            <div class="orderSummaryList">
                <table>
                    <!-- select for문 시작 -->
                    <tr>
                        <td style="width: 400px; height: 40px; text-indent: 20px;">입금 대기 : </td>
                        <td>5 건</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품 준비중 : </td>
                        <td>4 건</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">배송중 : </td>
                        <td>2 건</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">배송완료 : </td>
                        <td>1 건</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="qnaSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 상품 문의 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
            <hr>
            <div class="qnaSummaryList">
                <table>
                    <!-- select for문 시작 -->
                    <tr>
                        <td style="width: 680px; height: 40px; text-indent: 20px;">상품명 3</td>
                        <td style="text-align: right;">2021-05-03</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품명 2</td>
                        <td style="text-align: right;">2021-05-02</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품명 1</td>
                        <td style="text-align: right;">2021-05-01</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="reviewSummaryDiv">
            <button class="titleBtn" onclick="location.href=''" style="border: none; background-color: transparent;"> 상품 리뷰 > </button>   <!-- 주문내역조회 페이지 이동 btn-->
            <hr>
            <div class="reviewSummaryList">
                <table>
                    <!-- select for문 시작 -->
                    <tr>
                        <td style="width: 500px; height: 40px; text-indent: 20px;">상품명 3</td>
                        <td style="width: 180px; text-align: center;">★★★★★</td>
                        <td style="text-align: right;">2021-05-03</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품명 2</td>
                        <td style="text-align: center;">★★★★</td>
                        <td style="text-align: right;">2021-05-02</td>
                    </tr>
                    <tr>
                        <td style="height: 40px; text-indent: 20px;">상품명 1</td>
                        <td style="text-align: center;">★</td>
                        <td style="text-align: right;">2021-05-02</td>
                    </tr>
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