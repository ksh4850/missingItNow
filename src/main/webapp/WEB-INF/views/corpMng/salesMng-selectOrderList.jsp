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
        min-height: 1100px;
        /* border: 1px solid black; */
    }
    
    #searchOrderListByDateBtn{
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
    
    .orderListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }

    .orderListTable td{
        border: 1px solid black;
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
</style>
<body>
	<!-- header jsp -->
	<jsp:include page="corpMngHeader.jsp"/>
	<!-- navi jsp -->
	<jsp:include page="corpMngNavi.jsp"/>
	
	<div class="section">
        <h1 style="position: relative; left: 20px;">주문내역</h1>
        <hr width="1600px" align="left">
        <br><br>
        
        <div style="font-size: 20px;">
            <form action="${ pageContext.servletContext.contextPath }/salesMng/searchOrderListByDate" method="GET">
                <div align="center">
                    <h3 style="display: inline; position: relative; vertical-align: middle;">조회기간</h3> 
                    <input type="date" name="startDate" style="width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; margin-left: 50px;" required> <span> &nbsp; ~ &nbsp; </span> 
                    <input type="date" name="endDate" style="width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle;" required >
                    <button type="submit" id="searchOrderListByDateBtn">조회</button>
                </div>
            </form>
        </div>
        <br><br>

        <div class="orderListDiv" align="center">
            <table class="orderListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">주문번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">회원번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; ">상품명</td> 
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 120px">주문수량</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 180px">주문금액 (원)</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">주문일시</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">거래상태</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 100px">주문상태</td>
                </tr>
                <c:if test="${ empty orderList }">
                	<tr>
                		<td colspan="8" style="font-family: 'SCDream-Regular'; font-size: 20px; height: 100px;">해당 기간 내의 주문 내역이 없습니다.</td>
                	</tr>
                </c:if>
                
                <%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
                <%-- 3자리 마다 쉼표 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" /> --%>
				<%-- 한국 통화 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${price}" /> --%>
                
                <c:forEach var="list" items="${ orderList }">
                <tr>
                    <td><c:out value="${ list.orderNo }"/></td>
                    <td><c:out value="${ list.user.userNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><nobr><c:out value="${ list.prodMngProduct.prodName }"/></nobr></td>
                    <td><c:out value="${ list.orderQuantity }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ list.orderPrice }"/></td>
                    <td><c:out value="${ list.orderDate }"/></td>
                    <td><c:out value="${ list.dealingStatus }"/></td>
                    <td><c:out value="${ list.orderStatus }"/></td>
                </tr>
                </c:forEach>
                
            </table>
        </div>       <!-- orderListDiv 종료 -->
		
		<br><br><br>
		<div class="pagingArea" align="center">
        	<c:choose>
				<c:when test="${ !empty params.startDate && !empty params.endDate }">
					<button id="searchOrderStartPage">◀◀</button>
			
					<c:if test="${ pageInfo.pageNo == 1 }">
						<button disabled>◁</button>
					</c:if>
					<c:if test="${ pageInfo.pageNo > 1 }">
						<button id="searchOrderPrevPage">◁</button>
					</c:if>
			
					<c:forEach var="p" begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" step="1">
					<c:if test="${ pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ pageInfo.pageNo ne p }">
						<button onclick="searchOrderPageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ pageInfo.pageNo == pageInfo.maxPage }">
						<button disabled>▷</button>	
					</c:if>
					<c:if test="${ pageInfo.pageNo < pageInfo.maxPage }">
						<button id="searchOrderNextPage">▷</button>
					</c:if>
			
					<button id="searchOrderMaxPage">▶▶</button>
				</c:when>
				
				<c:otherwise>
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
				</c:otherwise>
			</c:choose>
		</div>	<!-- pagingAreaDiv 종료 -->
		
	</div>	<!-- sectionDiv 종료 -->
	
    <br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
	<script>
		const link = "${ pageContext.servletContext.contextPath }/salesMng/selectOrderList";
		const searchLink = "${ pageContext.servletContext.contextPath }/salesMng/searchOrderListByDate";
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}
		
		function searchOrderPageButtonAction(text) {
			location.href = searchLink + "?currentPage=" + text + "&startDate=${params.startDate}&endDate=${params.endDate}";
		}
		
		if(document.getElementById("searchOrderStartPage")){
			const $searchOrderStartPage = document.getElementById("searchOrderStartPage");
			$searchOrderStartPage.onclick = function(){
				location.href = searchLink + "?currentPage=1&startDate=${params.startDate}&endDate=${params.endDate}";
			}
		}
		
		if(document.getElementById("searchOrderMaxPage")){
			const $searchOrderMaxPage = document.getElementById("searchOrderMaxPage");
			$searchOrderMaxPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.maxPage }&startDate=${params.startDate}&endDate=${params.endDate}";
			}
		}
		
		if(document.getElementById("searchOrderPrevPage")){
			const $searchOrderPrevPage = document.getElementById("searchOrderPrevPage");
			$searchOrderPrevPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.pageNo - 1 }&startDate=${params.startDate}&endDate=${params.endDate}";
			}
		}
		
		if(document.getElementById("searchOrderNextPage")){
			const $searchOrderNextPage = document.getElementById("searchOrderNextPage");
			$searchOrderNextPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.pageNo + 1 }&&startDate=${params.startDate}&endDate=${params.endDate}";
			}
		}
		
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






