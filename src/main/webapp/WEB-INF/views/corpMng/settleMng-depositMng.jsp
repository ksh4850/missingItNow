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
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
        min-height: 1100px;
        /* border: 1px solid black; */
    }
    
    .depositChargeDiv{
        margin: 0 auto;
        text-align: center;
        border: 3px solid #8877DA;
        border-radius: 20px;
        width: 800px;
        height: 270px;
    }

    .depositChargeTable{
        margin: 0 auto;
        border-collapse: collapse;
        text-align: right;
    }

    .depositChargeTable td{
        border: none;
        font-family: 'SCDream-Regular';
        height: 70px;
        font-size: 20px;
    }

    .depositChargeTable input{
        width: 200px; 
        height: 40px;
        font-family: 'SCDream-Regular';  
        font-size: 22px; 
        position: relative;
        text-align: right;
        right: 10px;
    }
    
    #chargeDepositBtn{
    	width: 150px; 
    	height: 50px;
    	font-family: 'SCDream-Regular'; 
    	font-size: 22px;
    	color: white;
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
    }

    .depositListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }

    .depositListTable td{
        border: 2px solid darkgray;
        font-family: 'SCDream-Regular';
        font-size: 16px;
        height: 50px;
        text-overflow: ellipsis;
        overflow: hidden;
    }
    
    .pagingArea{
    	position: absolute;
    	left: 50%;
    	transform: translateX(-50%);
    	bottom: 0px;
    }
        
    .pagingArea button{
    	width: 40px;
    	height: 40px;
    	color: #775EEE;
    	border: none;
    	background: transparent;
    	font-family: 'SCDream-Regular';
    	font-size: 16px;
    	font-weight: bold;
    }
   
    .footer{
        width: 1920px;
        height: 100px;
        border: 1px solid black;
        text-align: center;
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
		<h1 style="position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">예치금 충전</h1>
        <hr width="1600px" align="left">
        <br><br>
        
        <div class="depositChargeDiv">
            <br>
			<table class="depositChargeTable">
			   <tr>
			       <td style="width: 200px;">충전 방식 : </td>
			       <td style="width: 300px;">
			           <select id="chargeMethod" style="font-family: 'SCDream-Regular'; width: 240px; height: 40px; font-size: 20px;">
			               <option value="card">신용카드</option>
			               <!-- <option value="kakaopay">카카오페이</option> -->
			               <!-- <option value="accountTransfer">무통장입금</option> --> 
			           </select>
			       </td>
			    </tr>
			    <tr>
			        <td>충전 금액 : </td>
			        <td><input type="text" id="amount">원</td>
			    </tr>
			</table> 
			<br>
			<button id="chargeDepositBtn" type="submit">충전하기</button>
        </div>

        <br><br>

        <div class="depositListDiv" align="center">
            <h1 style="text-align: left; position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">예치금 내역</h1>
            <hr width="1600px" align="left">
            <br>
            <table class="depositListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px;">구분</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 200px;">금액 (원)</td> 
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px;">일자</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">내용</td>
                </tr>
                <c:if test="${ empty depositList }">
                	<tr>
                		<td colspan="4" style="font-family: 'SCDream-Regular'; font-size: 20px; height: 100px;"> 예치금 내역이 없습니다.</td>
                	</tr>
                </c:if>
                
                <c:forEach var="depositList" items="${ depositList }">
                <tr>
                    <td><c:out value="${ depositList.depositSort }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ depositList.amount }"/></td>
                    <td><c:out value="${ depositList.depositDate }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><c:out value="${ depositList.depositDetails }"/></td>
                </tr>
                </c:forEach>
                
            </table>
        </div>       <!-- depositListDiv 종료 -->
	
		<div class="pagingArea" align="center">
			<button id="startPage">◀◀</button>
	
			<c:if test="${ pageInfo.pageNo == 1 }">
				<button disabled>◁</button>
			</c:if>
			<c:if test="${ pageInfo.pageNo > 1 }">
				<button id="prevPage">◁</button>
			</c:if>
	
			<c:forEach var="p" begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" step="1">
			<c:if test="${ pageInfo.pageNo eq p }">
				<button disabled><c:out value="${ p }"/></button>
			</c:if>
			<c:if test="${ pageInfo.pageNo ne p }">
				<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
			</c:if>
			</c:forEach>
	
			<c:if test="${ pageInfo.pageNo == pageInfo.maxPage }">
				<button disabled>▷</button>	
			</c:if>
			<c:if test="${ pageInfo.pageNo < pageInfo.maxPage }">
				<button id="nextPage">▷</button>
			</c:if>
	
			<button id="maxPage">▶▶</button>
		</div> <!-- pagingAreaDiv 종료 -->
	
	</div>	<!-- sectionDiv 종료-->
	
	
    <br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
	<script>
		$('#chargeDepositBtn').click(function(){
			$.ajax({
				url:'/missingitnow/settleMng/selectCorpUserForPay',
				type:'post',
				success: function(data){
					const corpName = data.corpName;
					const corpEmail = data.corpEmail;
					const corpContacts = data.corpContacts;
					
					IMP.init('imp60030043');
					IMP.request_pay({
					    pg : 'html5_inicis',
					    pay_method : $('#chargeMethod').val(),
					    merchant_uid : 'merchant_' + new Date().getTime(),
					    name : '예치금 충전 테스트',
					    amount : $('#amount').val(),
					    buyer_name : corpName,
					    buyer_email : corpEmail,
					    buyer_tel : corpContacts,
					    
					}, function(rsp) {
					    if ( rsp.success ) {
					    	$.ajax({
					    		url:'/missingitnow/settleMng/insertPayment',
					    		type:'POST',
					    		data:{
				    				imp_uid : rsp.imp_uid,
				    				merchant_uid : rsp.merchant_uid,
				    				pay_method : rsp.pay_method,
				    				name : rsp.name,
				    				paid_amount : rsp.paid_amount,
				    				buyer_name : rsp.buyer_name,
				    				buyer_email : rsp.buyer_email,
				    				buyer_tel : rsp.buyer_tel
				    			},
					    		success: function(data){
					    			var msg = '결제가 완료되었습니다.';
							        /* msg += '고유ID : ' + rsp.imp_uid;
							        msg += '상점 거래ID : ' + rsp.merchant_uid;
							        msg += '결제 금액 : ' + rsp.paid_amount;
							        msg += '카드 승인번호 : ' + rsp.apply_num; */
							        
							        alert(msg);
							        location.replace("${ pageContext.servletContext.contextPath }/settleMng/selectDepositList");
					    		},
					    		error: function(error){
					    			console.log("error : " + error);
					    		}
					    	});
					    } else {
					        var msg = '결제에 실패하였습니다.';
					        msg += '에러내용 : ' + rsp.error_msg;
					        alert(msg);
					    }
					});
				},
				error: function(error){
					console.log(error)
				}
			});
		}); 
	
		
		const link = "${ pageContext.servletContext.contextPath }/settleMng/selectDepositList";
		
		if(document.getElementById("startPage")){
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function(){
				location.href = link + "?currentPage=1";
			}
		}
		
		if(document.getElementById("maxPage")){
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function(){
				location.href = link + "?currentPage=${ pageInfo.maxPage }";
			}
		}
		
		if(document.getElementById("prevPage")){
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function(){
				location.href = link + "?currentPage=${ pageInfo.pageNo - 1 }";
			}
		}
		
		if(document.getElementById("nextPage")){
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function(){
				location.href = link + "?currentPage=${ pageInfo.pageNo + 1 }";
			}
		}
	</script>
	
</body>
</html>