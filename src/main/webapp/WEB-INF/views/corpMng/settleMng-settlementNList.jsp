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
        min-height: 1100px;
        /* border: 1px solid black; */
    }
    
    #selectExpectedSettlementBtn{
    	width: 100px; 
    	height: 40px; 
    	font-size: 20px; 
    	position: relative; 
    	vertical-align: middle; 
    	margin-left: 50px;
    	font-family: 'SCDream-Regular';
    	background: transparent;
    	border: 1px solid #775EEE;
    	border-radius: 10px; 
    }
    
    .selectExpectedSettlementDiv{
        margin: 0 auto;
        text-align: center;
        /* border: 1px solid black; */
        border: 3px solid #8877DA;
        border-radius: 20px;
        width: 800px;
        height: 300px;
    }
    
    .selectExpectedSettlementTable{
        margin: 0 auto;
        border-collapse: collapse;
        text-align: right;
    }

    .selectExpectedSettlementTable td{
        border: none;
        font-family: 'SCDream-Regular';
        height: 60px;
        font-size: 20px;
    }

    .selectExpectedSettlementTable input{
        width: 200px; 
        height: 40px;
        font-family: 'SCDream-Regular';  
        font-size: 24px; 
        position: relative;
        text-align: right;
        border: none;
        right: 10px;
    }
    
    #settlementBtn{
    	width: 150px; 
    	height: 50px;
    	font-family: 'SCDream-Regular'; 
    	font-size: 22px;
    	color: white;
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
    }
    
    .settlementListTable{
        border: hidden;
        border-top: 2px solid darkgray;
        border-bottom: 2px solid darkgray;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }

    .settlementListTable td{
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
    	padding-bottom: 20px;
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
</style>
<body>
	<!-- header jsp -->
	<jsp:include page="corpMngHeader.jsp"/>
	<!-- navi jsp -->
	<jsp:include page="corpMngNavi.jsp"/>
	
	<div class="section">
        <h1 style="position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">정산하기</h1>
        <hr width="1600px" align="left">
        <br><br>
        
        <div style="font-size: 20px;">
			<div align="center">
                   <h3 style="font-family: 'SCDream-Regular'; font-size: 26px; display: inline; position: relative; vertical-align: middle;">예상 정산금 조회</h3> 
                   <input type="date" id="startDate" name="startDate" style="font-family: 'SCDream-Regular'; text-align: center; width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; margin-left: 50px;"> <span> &nbsp; ~ &nbsp; </span> 
                   <input type="date" id="endDate" name="endDate" style="font-family: 'SCDream-Regular'; text-align: center; width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; ">
                   <button id="selectExpectedSettlementBtn">조회</button>
               </div>
        </div>
        <br><br>
        
        <form action="${ pageContext.servletContext.contextPath }/settleMng/insertSettlement" method="POST">
	        <input type="hidden" id="startDate2" name="settlementStartDate">
	        <input type="hidden" id="endDate2" name="settlementEndDate">
	        <input type="hidden" name="totalSales">
	        <input type="hidden" name="commissionBySales">
	        <input type="hidden" name="settlementAmt">
	        <div class="selectExpectedSettlementDiv">
	            <br>
                <table class="selectExpectedSettlementTable">
                	<tr>
                        <td style="width: 200px;">결제내역 합계 : </td>
                        <td style="width: 300px;"><input type="text" name="total" readonly>원</td> 
                    </tr>
                    <tr>
                        <td>수수료 : </td>
                        <td><input type="text" name="commission" readonly>원</td>
                    </tr>
                    <tr>
                        <td>예상 정산 금액 : </td>
                        <td><input type="text" name="settleAmt" readonly>원</td>
                    </tr>
                </table>
                <br>
                <button id="settlementBtn" type="submit">정산하기</button>
	        </div>    
		</form>
        
        <div class="settlementListDiv" align="center">
            <h1 style="text-align: left; position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">정산내역</h1>
            <hr width="1600px" align="left">
            <br>
            <table class="settlementListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">정산번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">정산시작일자</td> 
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">정산종료일자</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">매출액 (원)</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">수수료금액 (원)</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">정산금액 (원)</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">정산일자</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">정산여부</td>
                </tr>
                <c:if test="${ empty settlementList }">
                	<tr>
                		<td colspan="8" style="font-family: 'SCDream-Regular'; font-size: 20px; height: 100px;">정산된 내역이 없습니다.</td>
                	</tr>
                </c:if>
                
				<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
                <%-- 3자리 마다 쉼표 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" /> --%>
				<%-- 한국 통화 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${price}" /> --%>
                
                <c:forEach var="stmlist" items="${ settlementList }">
                <tr>
                    <td><c:out value="${ stmlist.settlementNo }"/></td>
                    <td><c:out value="${ stmlist.settlementStartDate }"/></td>
                    <td><c:out value="${ stmlist.settlementEndDate }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ stmlist.totalSales }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ stmlist.commissionBySales }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ stmlist.settlementAmt }"/></td>
                    <td><c:out value="${ stmlist.settlementDate }"/></td>
                    <td><c:out value="${ stmlist.settlementChk }"/></td>
                </tr>
                </c:forEach>
            </table>
        </div>       <!-- settlementListDiv 종료 -->
        
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
<!-- 	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
 -->	
	<script>
		$('#selectExpectedSettlementBtn').click(function(){
			const startDate = $('#startDate').val();
			const endDate = $('#endDate').val();
		
			$('#startDate2').val(startDate);
			$('#endDate2').val(endDate);
			
			// 마지막 정산 날짜 확인 및 결과 조회
			$.ajax({
				url:'/missingitnow/settleMng/chkLastEndDate',
				type: 'post',
				success:function(data1){
					
					 if (data1 == null || startDate >= data1.lastEndDate) {
						$.ajax({
							url:'/missingitnow/salesMng/selectExpectedTotalSettlement',
							type:'post',
							data:{
									startDate: startDate,
									endDate: endDate,
									},
							success:function(data){
								if(data != null){
									const total = data.totalSales.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
									const commission = data.commissionBySales.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
									const settlement = data.settlementAmt.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
									
									$('input[name=total]').attr('value',total);
									$('input[name=commission]').attr('value',commission);
									$('input[name=settleAmt]').attr('value',settlement);
									
									$('input[name=totalSales]').attr('value',data.totalSales);
									$('input[name=commissionBySales]').attr('value',data.commissionBySales);
									$('input[name=settlementAmt]').attr('value',data.settlementAmt);
								}
								
								if(data == null){
									$('input[name=totalSales]').attr('value', 0);
									$('input[name=commissionBySales]').attr('value', 0);
									$('input[name=settlementAmt]').attr('value', 0);
									alert("예상 정산금이 없습니다.");
								}
							},
							error:function(error){
								console.log(error);
							}
						}); /*	결과 조회 ajax 종료  */
						
					} else if (startDate < data1.lastEndDate){
						alert('시작일자를 마지막 정산종료일자 이후로 선택하여 주시기 바랍니다.');
					}
					
				}, error: function(error){
					console.log(error);
				}
				
			});
		});
		
		$('#settlementBtn').click(function(){
			if($('input[name=totalSales]').val() == 0 || null){
				alert('정산을 요청할 금액이 없습니다.');
				return false;
			}
		});
		
		
		const link = "${ pageContext.servletContext.contextPath }/settleMng/selectSettlementList";
		
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