<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    
    .returnExchangeListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }

    .returnExchangeListTable td{
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
        <h1 style="position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">교환/반품 내역</h1>
        <hr width="1600px" align="left">
        <br><br>

        <div class="returnExchangeListDiv" align="center">
            <table class="returnExchangeListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 100px">구분</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">회원번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; ">상품명</td> 
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">요청일자</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 100px">처리여부</td>
                </tr>
                <c:if test="${ empty returnExchangeList }">
                	<tr>
                		<td colspan="5" style="font-family: 'SCDream-Regular'; font-size: 20px; height: 100px;">반품/교환 내역이 없습니다.</td>
                	</tr>
                </c:if>
                
                <c:forEach var="list" items="${ returnExchangeList }">
                <tr>
                    <td>
                    	<c:if test="${ fn:contains(list.retnExchNo,'RETN') }">반품</c:if> 
                    	<c:if test="${ fn:contains(list.retnExchNo,'EXCH') }">교환</c:if>
                    </td>	 
                    <td><c:out value="${ list.userNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><nobr><c:out value="${ list.prodMngProduct.prodName }"/></nobr></td>
                    <td><c:out value="${ list.retnExchDate }"/></td>
                    <td>
                    	<c:if test="${ list.retnExchChk eq 'Y' }">완료</c:if>
                    	<c:if test="${ list.retnExchChk eq 'N' || null }">예정</c:if>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>       <!-- returnExchangeListDiv 종료 -->
		
		<br><br><br><br>
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

		
	</div>	<!-- sectionDiv 종료 -->

    <br clear=both>
	<!-- <div class="footer">
		<h1 align="center">FOOTER</h1>
	</div> -->

	<script>
		const link = "${ pageContext.servletContext.contextPath }/salesMng/selectReturnExchange";
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
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