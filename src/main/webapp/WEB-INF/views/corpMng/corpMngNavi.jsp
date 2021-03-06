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
        /* min-height: 1900px; */
        margin: 0 auto;
    }
	
    .nav{
        position: relative;
        float: left;
        width: 260px;
		min-height: 1100px;
        text-align: center;
        font-family: 'SCDream-Regular';
        color: white;
        text-shadow: 2px 1px 3px darkslategray;
        /* border: 1px solid black; */
        background-color: #a091e8;
    }
	
	.nav h2{
		font-family: 'SCDream-Regular';
		font-size: 28px;
	}
	
    .naviList li{
        list-style: none;
        padding-top: 10px;
        padding-bottom: 15px;
        font-size: 20px;
        background-color: #775EEE;
    }
    
    .naviListTitle{
        cursor: pointer;
   	}

	.naviListDetails{
	     display: none;
	}

    .corpProfileDiv{
        display: inline-block;
        position: relative;
        width: 240px;
        height: 250px;
        font-size: 18px;
        /* border: 1px solid blue; */
    }
    
    #corpNameOnNavi {
		width: 120px;
		font-size: 28px; 
		font-family: 'SCDream-Regular';
		text-align: center;
		margin-right: 10px;
    }

    .corpProfileImg{
        margin: 0 auto;
        width: 200px;
        height: 200px;
        border: 1px solid #8877DA;
        border-radius: 50%;
    }
</style>
<body>
    <div class="nav">
        <div class="corpProfileDiv">
            <br> 
            <img id="corpImg" class="corpProfileImg" 
            src="${ pageContext.servletContext.contextPath }/resources/corpUserImages/CorpUserDefaultImg.png"/>
            <br>
            <div align="center">
	            <p><span id="corpNameOnNavi"></span>님 <br>환영합니다.</p>
            </div>
        </div>
        <br>
        <div class="naviList" style="margin-top: 50px;">
            <div class="naviListTitle">
                <h2>상품관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="insertProduct">상품등록</li>
                <li id="selectProduct">상품조회/수정</li>
            </div>
            <div class="naviListTitle">
                <h2>판매관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="selectOrderList">주문내역</li>
                <li id="selectSalesList">매출내역</li>
                <li id="selectReturnExchangeList"">교환/반품 내역</li>
            </div>
            <div class="naviListTitle">
                <h2>정산관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="settlementNList">정산 및 내역</li>
                <li id="depositMng">예치금관리</li>
                <li id="paymentList">결제내역</li>
            </div>
            <div class="naviListTitle">
                <h2 id="qnaNReviewMng">문의/리뷰관리</h2>
            </div>
            <div class="naviListDetails">                
                <li id="productCmtList">상품문의 내역</li>
                <li id="productReviewList">상품리뷰 내역</li>
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
			location.href="${ pageContext.servletContext.contextPath }/prodMng/selectProduct"+"?currentPage=1";
		})
		
		$("#selectOrderList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/salesMng/selectOrderList";
		})
		
		$("#selectSalesList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/salesMng/selectSalesList";
		})
		
		$("#selectReturnExchangeList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/salesMng/selectReturnExchange";
		})
		
		$("#settlementNList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/settleMng/selectSettlementList";
		})
		
		$("#depositMng").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/settleMng/selectDepositList";
		})
		
		$("#paymentList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/settleMng/paymentList";
		})
		
		$("#productCmtList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/prodCmtRevMng/productCmtList";
		})
		
		$("#productReviewList").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/prodCmtRevMng/productRevList";
		})
		
		$("#statistics").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/statistics/selectAllStatistics";
		})
		
		$.ajax({
			url: '/missingitnow/corpMng/selectCorpUserInfoForNavi',
			type: 'post',
			success: function(data){
				const corpName = data.corpName;
				const corpImg = data.corpImg.corpImgRename;
				
				$('#corpNameOnNavi').text(corpName);
				
				if(corpImg == null){
					$('#corpImg').attr('src','${ pageContext.servletContext.contextPath }/resources/corpUserImages/CorpUserDefaultImg.png');
				} else {
					$('#corpImg').attr('src','${ pageContext.servletContext.contextPath }/resources/corpUserImages/'+corpImg);
				}
				
			},
			error: function(error){
				console.log(error)
			}
		});
		
		$(document).ready(function(){
            $(".naviListTitle").click(function(){
                var submenu = $(this).next("div");
                
                if( submenu.is(":visible") ){
                    submenu.slideUp();
                } else {
                    submenu.slideDown();
                }
            });
        });
	</script>
	
	<script>
		$(document).ready(function() {
			resizeContent();
		});
		$(window).resize(function() {
			resizeContent();
		});
		function resizeContent() {
			/* var windowHeight = $(window).height(); */
			var sectionHeight = $(".section").height();
			$('.nav').css({'height':(sectionHeight)+'px'});
		}
	</script>
	
</body>
</html>














