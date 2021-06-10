<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
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
    
    .prodRevListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }
    
    .prodRevListTable td{
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
        <h1 style="position: relative; left: 20px;">상품 리뷰 내역</h1>
        <hr width="1600px" align="left">
        <br><br>

        <div class="prodRevListDiv" align="center">
            <table class="prodRevListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">상품번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 250px">상품명</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 180px">작성자</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">리뷰 내용</td> 
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">작성일</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">리뷰평점</td>
                </tr>
                <c:if test="${ empty productRevList }">
                	<tr>
                		<td colspan="6" style="font-family: 'SCDream-Regular'; font-size: 20px; height: 100px;">상품 리뷰 내역이 없습니다.</td>
                	</tr>
                </c:if>
                
                <c:forEach var="list" items="${ productRevList }">
                <tr>
                    <td><c:out value="${ list.prodNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><nobr><c:out value="${ list.prodMngProduct.prodName }"/></nobr></td>
                    <td><c:out value="${ list.user.userId }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><c:out value="${ list.reviewDetails }"/></td>
                    <td><c:out value="${ list.reviewDate }"/></td>
                    <td>
	                    <c:if test="${ list.reviewScore eq 5 }">★★★★★</c:if>
	                    <c:if test="${ list.reviewScore eq 4 }">★★★★☆</c:if>
	                    <c:if test="${ list.reviewScore eq 3 }">★★★☆☆</c:if>
	                    <c:if test="${ list.reviewScore eq 2 }">★★☆☆☆</c:if>
	                    <c:if test="${ list.reviewScore eq 1 }">★☆☆☆☆</c:if>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>       <!-- prodCmtListDiv 종료 -->
		
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
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
	<script>
		const link = "${ pageContext.servletContext.contextPath }/prodCmtRevMng/productRevList";
		
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

</body>
</html>