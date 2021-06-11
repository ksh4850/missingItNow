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
    
    #searchSalesListByDateBtn {
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
    
    .salesListTable{
        border: hidden;
        border-top: 2px solid darkgray;
        border-bottom: 2px solid darkgray;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }

    .salesListTable td{
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
</style>
<body>
	<!-- header jsp -->
	<jsp:include page="corpMngHeader.jsp"/>
	<!-- navi jsp -->
	<jsp:include page="corpMngNavi.jsp"/>
	
	<div class="section">
        <h1 style="position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">매출내역</h1>
        <hr width="1600px" align="left">
        <br><br>
		
        <div style="font-size: 20px;">
            <form action="${ pageContext.servletContext.contextPath }/salesMng/searchSalesListByDate" method="GET">
                <div align="center">
                    <h3 style="font-family: 'SCDream-Regular'; font-size: 26px;  display: inline; position: relative; vertical-align: middle;">조회기간</h3> 
                    <input type="date" name="startDate" style="font-family: 'SCDream-Regular'; text-align: center; width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; margin-left: 50px;"> <span> &nbsp; ~ &nbsp; </span> 
                    <input type="date" name="endDate" style="font-family: 'SCDream-Regular'; text-align: center; width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; ">
                    <button type="submit" id="searchSalesListByDateBtn">조회</button>
                </div>
            </form>
        </div>
        <br><br>

        <div class="salesListDiv" align="center">
            <table class="salesListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">매출번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">주문번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">상품명</td> 
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 120px">수량</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 180px">매출금액 (원)</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">매출일자</td>
                </tr>
                <c:if test="${ empty salesList }">
                	<tr>
                		<td colspan="6" style="font-family: 'SCDream-Regular'; font-size: 20px; height: 100px;">매출 내역이 없습니다.</td>
                	</tr>
                </c:if>
                
                <%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
                <%-- 3자리 마다 쉼표 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" /> --%>
				<%-- 한국 통화 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${price}" /> --%>
                
                <c:forEach var="list" items="${ salesList }">
                <tr>
                    <td><c:out value="${ list.salesNo }"/></td>
                    <td><c:out value="${ list.orderNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><nobr><c:out value="${ list.prodMngProduct.prodName }"/></nobr></td>
                    <td><c:out value="${ list.salesQuantity }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ list.salesAmt }"/></td>
                    <td><c:out value="${ list.salesDate }"/></td>
                </tr>
                </c:forEach>
                
            </table>
        </div>       <!-- salesListDiv 종료 -->
		
		<br><br><br>
		<div class="pagingArea" align="center">
        	<c:choose>
				<c:when test="${ !empty params.startDate && !empty params.endDate }">
					<button id="searchSalesStartPage">◀◀</button>
			
					<c:if test="${ pageInfo.pageNo == 1 }">
						<button disabled>◁</button>
					</c:if>
					<c:if test="${ pageInfo.pageNo > 1 }">
						<button id="searchSalesPrevPage">◁</button>
					</c:if>
			
					<c:forEach var="p" begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" step="1">
					<c:if test="${ pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ pageInfo.pageNo ne p }">
						<button onclick="searchSalesPageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ pageInfo.pageNo == pageInfo.maxPage }">
						<button disabled>▷</button>	
					</c:if>
					<c:if test="${ pageInfo.pageNo < pageInfo.maxPage }">
						<button id="searchSalesNextPage">▷</button>
					</c:if>
			
					<button id="searchSalesMaxPage">▶▶</button>
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
		const link = "${ pageContext.servletContext.contextPath }/salesMng/selectSalesList";
		const searchLink = "${ pageContext.servletContext.contextPath }/salesMng/searchSalesListByDate";
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}
		
		function searchSalesPageButtonAction(text) {
			location.href = searchLink + "?currentPage=" + text + "&startDate=${params.startDate}&endDate=${params.endDate}";
		}
		
		if(document.getElementById("searchSalesStartPage")){
			const $searchSalesStartPage = document.getElementById("searchSalesStartPage");
			$searchSalesStartPage.onclick = function(){
				location.href = searchLink + "?currentPage=1&startDate=${params.startDate}&endDate=${params.endDate}";
			}
		}
		
		if(document.getElementById("searchSalesMaxPage")){
			const $searchSalesMaxPage = document.getElementById("searchSalesMaxPage");
			$searchSalesMaxPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.maxPage }&startDate=${params.startDate}&endDate=${params.endDate}";
			}
		}
		
		if(document.getElementById("searchSalesPrevPage")){
			const $searchSalesPrevPage = document.getElementById("searchSalesPrevPage");
			$searchSalesPrevPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.pageNo - 1 }&startDate=${params.startDate}&endDate=${params.endDate}";
			}
		}
		
		if(document.getElementById("searchSalesNextPage")){
			const $searchSalesNextPage = document.getElementById("searchSalesNextPage");
			$searchSalesNextPage.onclick = function(){
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















