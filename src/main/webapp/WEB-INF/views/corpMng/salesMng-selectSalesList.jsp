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
    
    .salesListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
    }

    .salesListTable td{
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
        <h1 style="position: relative; left: 20px;">매출내역</h1>
        <hr width="1600px" align="left">
        <br><br>
		
        <div style="font-size: 20px;">
            <form action="${ pageContext.servletContext.contextPath }/salesMng/selectSalesListByDate" method="POST">
                <div align="center">
                    <h3 style="display: inline; position: relative; vertical-align: middle;">조회기간</h3> 
                    <input type="date" name="startDate" style="width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; margin-left: 50px;"> <span> &nbsp; ~ &nbsp; </span> 
                    <input type="date" name="endDate" style="width: 200px; height: 30px; font-size: 18px; position: relative; vertical-align: middle; ">
                    <button type="submit" style="width: 100px; height: 30px; font-size: 20px; position: relative; vertical-align: middle; margin-left: 50px;">조회</button>
                </div>
            </form>
        </div>
        <br><br><br>

        <div class="salesListDiv" align="center">
            <table class="salesListTable">
                <tr>
                    <td style="width: 180px">매출번호</td>
                    <td style="width: 180px">주문번호</td>
                    <td>상품명</td> 
                    <td style="width: 100px">수량</td>
                    <td style="width: 180px">매출금액 (원)</td>
                    <td style="width: 150px">매출일자</td>
                </tr>
                <c:if test="${ empty salesList }">
                	<tr>
                		<td colspan="6"><h3 align="center">매출 내역이 없습니다.</h3></td>
                	</tr>
                </c:if>
                
                <%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
                <%-- 3자리 마다 쉼표 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" /> --%>
				<%-- 한국 통화 : <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${price}" /> --%>
                
                <c:forEach var="list" items="${ salesList }">
                <tr>
                    <td><c:out value="${ list.salesNo }"/></td>
                    <td><c:out value="${ list.orderNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><c:out value="${ list.prodMngProduct.prodName }"/></td>
                    <td><c:out value="${ list.salesQuantity }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ list.salesAmt }"/></td>
                    <td><c:out value="${ list.salesDate }"/></td>
                </tr>
                </c:forEach>
                
            </table>
        </div>       <!-- salesListDiv 종료 -->
		
	
	</div>	<!-- sectionDiv 종료 -->
	
    <br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
	
</body>
</html>















