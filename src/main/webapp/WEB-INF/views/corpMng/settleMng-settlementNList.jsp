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
    
    .selectExpectedSettlementDiv{
        margin: 0 auto;
        text-align: center;
        border: 1px solid black;
        border-radius: 15px;
        width: 800px;
        height: 280px;
    }

    .selectExpectedSettlementTable{
        margin: 0 auto;
        border-collapse: collapse;
        text-align: right;
    }

    .selectExpectedSettlementTable td{
        border: none;
        height: 60px;
        font-size: 20px;
    }

    .selectExpectedSettlementTable input{
        width: 200px; 
        height: 30px; 
        font-size: 20px; 
        position: relative;
        text-align: right;
        border: none;
        right: 10px;
    }
    
    .settlementListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
    }

    .settlementListTable td{
        border: 1px solid black;
        font-size: 20px;
        height: 50px;
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
        <h1 style="position: relative; left: 20px;">정산하기</h1>
        <hr width="1600px" align="left">
        <br><br>
        
        <div style="font-size: 20px;">
			<div align="center">
                   <h3 style="display: inline; position: relative; vertical-align: middle;">예상 정산금 조회</h3> 
                   <input type="date" id="startDate" name="startDate" style="width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; margin-left: 50px;"> <span> &nbsp; ~ &nbsp; </span> 
                   <input type="date" id="endDate" name="endDate" style="width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; ">
                   <button id="selectExpectedSettlementBtn" style="width: 100px; height: 30px; font-size: 20px; position: relative; vertical-align: middle; margin-left: 50px;">조회</button>
               </div>
        </div>
        <br><br>
        
        <form action="${ pageContext.servletContext.contextPath }/settleMng/insertSettlement" method="POST">
	        <input type="hidden" id="startDate2" name="settlementStartDate">
	        <input type="hidden" id="endDate2" name="settlementEndDate">
	        <div class="selectExpectedSettlementDiv">
	            <br>
                <table class="selectExpectedSettlementTable">
                    <tr>
                        <td style="width: 200px;">결제내역 합계 : </td>
                        <td style="width: 300px;"><input type="text" name="totalSales">원</td> 
                    </tr>
                    <tr>
                        <td>수수료 : </td>
                        <td><input type="text" name="commissionBySales">원</td>
                    </tr>
                    <tr>
                        <td>예상 정산 금액 : </td>
                        <td><input type="text" name="settlementAmt">원</td>
                    </tr>
                </table>
                <br>
                <button id="settlementBtn" type="submit" style="width: 100px; height: 30px; font-size: 20px;">정산하기</button>
	        </div>    
		</form>
        
        <div class="settlementListDiv" align="center">
            <h1 style="text-align: left; position: relative; left: 20px;">정산내역</h1>
            <hr width="1600px" align="left">
            <br>
            <table class="settlementListTable">
                <tr>
                    <td style="width: 180px">정산번호</td>
                    <td style="width: 180px">정산시작일자</td> 
                    <td style="width: 180px">정산종료일자</td>
                    <td>매출액 (원)</td>
                    <td style="width: 180px">수수료금액 (원)</td>
                    <td style="width: 180px">정산금액 (원)</td>
                    <td style="width: 180px">정산일자</td>
                    <td style="width: 120px">정산여부</td>
                </tr>
                <c:if test="${ empty settlementList }">
                	<tr>
                		<td colspan="8"><h3 align="center">정산된 내역이 없습니다.</h3></td>
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
	</div>	<!-- sectionDiv 종료-->
	
    <br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
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
									const totalSales = data.totalSales;
									const commissionBySales = data.commissionBySales;
									const settlementAmt = data.settlementAmt;
									
									$('input[name=totalSales]').attr('value',totalSales);
									$('input[name=commissionBySales]').attr('value',commissionBySales);
									$('input[name=settlementAmt]').attr('value',settlementAmt);
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
		
	</script>
	
	
	
</body>
</html>