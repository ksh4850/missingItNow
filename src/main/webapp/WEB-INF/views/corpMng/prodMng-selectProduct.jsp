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
    
    .searchProductBtn{
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
    
    .prodListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }

    .prodListTable td{
        border: 2px solid darkgray;
        font-family: 'SCDream-Regular';
        font-size: 16px;
        height: 50px;
        text-overflow: ellipsis;
        overflow: hidden;
    }
    
    .prodUpdateBtn{
	    width: 100px; 
    	height: 30px; 
    	font-family: 'SCDream-Regular';
    	font-size: 16px;
    	color: white;
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
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
        <h1 style="position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">등록 상품 조회/수정</h1>
        <hr width="1600px" align="left">
        <br><br>
        <div style="font-size: 20px;">
            <div style="position: relative; left: 100px; font-family: 'SCDream-Regular'; font-size: 24px;">
            	<div style="display: inline-block;">
				<input type="radio" id="radioCategory" name="chooseMethod" value="radioCategory" checked><label for="radioCategory">카테고리 조회</label>
            	</div>
            	<div style="display: inline-block; position: relative; left: 50px;">
               	<input type="radio" id="radioProdName" name="chooseMethod" value="radioProdName"><label for="radioProdName">상품명 조회</label>
            	</div>
            </div>
            <br>
            
            <form id="selectByCtgForm" action="${ pageContext.servletContext.contextPath }/prodMng/searchProductList" method="GET">     <!-- form action 명시 필요 -->
                <div id="radioCategory" style="position: relative; left: 100px;">
                    <h3 style="font-family: 'SCDream-Regular'; font-size: 26px; display: inline; position: relative; vertical-align: middle;">카테고리 : </h3>
                    <select name="prodCtgNo" style="font-family: 'SCDream-Regular'; position: relative; left: 20px; vertical-align: middle; width: 400px; height: 40px; font-size: 20px;">
                        <option value="PRCT0001">거실/침실가구</option>
                        <option value="PRCT0002">학생/서재가구</option>
                        <option value="PRCT0003">테이블/의자</option>
                        <option value="PRCT0004">침구/커튼</option>
                        <option value="PRCT0005">쿠션/방석</option>
                        <option value="PRCT0006">가전</option>
                        <option value="PRCT0007">수납/정리</option>
                        <option value="PRCT0008">조명</option>
                        <option value="PRCT0009">홈데코</option>
                        <option value="PRCT0010">생활용품</option>
                    </select>
                    <button type="submit" class="searchProductBtn">조회</button>
                </div>
            </form>	
            
            <form id="selectByProdNameForm" action="${ pageContext.servletContext.contextPath }/prodMng/searchProductList" method="GET" hidden>
           		<div id="radioProdName" style="position: relative; left: 100px;">
                    <h3 style="font-family: 'SCDream-Regular'; font-size: 26px; display: inline; position: relative; vertical-align: middle;">상품명 : </h3>
                    <input type="text" name="prodName" style="font-family: 'SCDream-Regular'; position: relative; left: 20px; vertical-align: middle; width: 400px; height: 40px; font-size: 20px;">
                    <button type="submit" class="searchProductBtn">조회</button>
                </div>
            </form>
            <br>
        </div>
        <br>
        <div class="prodListDiv" align="center">
            <table class="prodListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 160px">카테고리명</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">상품번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">상품명</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 180px">판매가 (원)</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">등록일</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">판매종료일</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 100px">노출여부</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">수정</td>
                </tr>
                <c:if test="${ empty productList }">
                	<tr>
                		<td colspan="8"><h3 align="center">선택하신 조건으로 등록된 상품이 없습니다.</h3></td>
                	</tr>
                </c:if>
                
                <c:forEach var="list" items="${ productList }">
                <tr>
                    <td><c:out value="${ list.category.prodCtgName }"/></td>
                    <td><c:out value="${ list.prodNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><nobr><c:out value="${ list.prodName }"/></nobr></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ list.prodPrice }"/></td>
                    <td><c:out value="${ list.prodUploadDate }"/></td>
                    <td><c:out value="${ list.prodTerminateDate }"/></td>
                    <td><c:out value="${ list.prodDisplayChk }"/></td>
                    <td><button onclick="location.href='${ pageContext.servletContext.contextPath }/prodMng/updateProduct/${ list.prodNo }'" class="prodUpdateBtn">정보수정</button></td>
                </tr>
                </c:forEach>
            </table>
        </div>
        
        <br><br><br>
        <div class="pagingArea" align="center">
        	<c:choose>
	        	<c:when test="${ empty params.prodCtgNo }">
					<button id="searchNameStartPage">◀◀</button>
			
					<c:if test="${ pageInfo.pageNo == 1 }">
						<button disabled>◁</button>
					</c:if>
					<c:if test="${ pageInfo.pageNo > 1 }">
						<button id="searchNamePrevPage">◁</button>
					</c:if>
			
					<c:forEach var="p" begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" step="1">
					<c:if test="${ pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ pageInfo.pageNo ne p }">
						<button onclick="searchNamePageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ pageInfo.pageNo == pageInfo.maxPage }">
						<button disabled>▷</button>	
					</c:if>
					<c:if test="${ pageInfo.pageNo < pageInfo.maxPage }">
						<button id="searchNameNextPage">▷</button>
					</c:if>
			
					<button id="searchNameMaxPage">▶▶</button>
				</c:when>
				
				<c:when test="${ empty params.prodName }">
					<button id="searchCtgStartPage">◀◀</button>
			
					<c:if test="${ pageInfo.pageNo == 1 }">
						<button disabled>◁</button>
					</c:if>
					<c:if test="${ pageInfo.pageNo > 1 }">
						<button id="searchCtgPrevPage">◁</button>
					</c:if>
			
					<c:forEach var="p" begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" step="1">
					<c:if test="${ pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ pageInfo.pageNo ne p }">
						<button onclick="searchCtgPageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ pageInfo.pageNo == pageInfo.maxPage }">
						<button disabled>▷</button>	
					</c:if>
					<c:if test="${ pageInfo.pageNo < pageInfo.maxPage }">
						<button id="searchCtgNextPage">▷</button>
					</c:if>
			
					<button id="searchCtgMaxPage">▶▶</button>
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
		</div>	<!-- pagingArea 종료 -->
        
        
    </div> <!-- sectionDiv 종료-->
    
    <br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
	<script>
		$(function(){
			$('input:radio[name=chooseMethod]').click(function(){
				var term = $(this).val();
				if(term == 'radioCategory'){
					$('#selectByCtgForm').show();
					$('#selectByProdNameForm').hide();
				}
				else if(term == 'radioProdName'){
					$('#selectByProdNameForm').show();
					$('#selectByCtgForm').hide();
				}
			})
		});
		
		const link = "${ pageContext.servletContext.contextPath }/prodMng/selectProduct";
		const searchLink = "${ pageContext.servletContext.contextPath }/prodMng/searchProductList";
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text;
		}
		
		function searchCtgPageButtonAction(text) {
			location.href = searchLink + "?currentPage=" + text + "&prodCtgNo=${params.prodCtgNo}";
		}
		
		function searchNamePageButtonAction(text) {
			location.href = searchLink + "?currentPage=" + text + "&prodName=${params.prodName}";
		}
		
		
		if(document.getElementById("searchCtgStartPage")){
			const $searchCtgStartPage = document.getElementById("searchCtgStartPage");
			$searchCtgStartPage.onclick = function(){
				location.href = searchLink + "?currentPage=1&prodCtgNo=${params.prodCtgNo}";
			}
		}
		
		if(document.getElementById("searchCtgMaxPage")){
			const $searchCtgMaxPage = document.getElementById("searchCtgMaxPage");
			$searchCtgMaxPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.maxPage }&prodCtgNo=${params.prodCtgNo}";
			}
		}
		
		if(document.getElementById("searchCtgPrevPage")){
			const $searchCtgPrevPage = document.getElementById("searchCtgPrevPage");
			$searchCtgPrevPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.pageNo - 1 }&prodCtgNo=${params.prodCtgNo}";
			}
		}
		
		if(document.getElementById("searchCtgNextPage")){
			const $searchCtgNextPage = document.getElementById("searchCtgNextPage");
			$searchCtgNextPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.pageNo + 1 }&prodCtgNo=${params.prodCtgNo}";
			}
		}
		
		
		if(document.getElementById("searchNameStartPage")){
			const $searchNameStartPage = document.getElementById("searchNameStartPage");
			$searchNameStartPage.onclick = function(){
				location.href = searchLink + "?currentPage=1&prodName=${params.prodName}";
			}
		}
		
		if(document.getElementById("searchNameMaxPage")){
			const $searchNameMaxPage = document.getElementById("searchNameMaxPage");
			$searchNameMaxPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.maxPage }&prodName=${params.prodName}";
			}
		}
		
		if(document.getElementById("searchNamePrevPage")){
			const $searchNamePrevPage = document.getElementById("searchNamePrevPage");
			$searchNamePrevPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.pageNo - 1 }&prodName=${params.prodName}";
			}
		}
		
		if(document.getElementById("searchNameNextPage")){
			const $searchNameNextPage = document.getElementById("searchNameNextPage");
			$searchNameNextPage.onclick = function(){
				location.href = searchLink + "?currentPage=${ pageInfo.pageNo + 1 }&prodName=${params.prodName}";
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