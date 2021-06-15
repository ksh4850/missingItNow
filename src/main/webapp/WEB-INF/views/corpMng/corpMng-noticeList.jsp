<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        /* min-height: 1900px; */
        margin: 0 auto;
	}
	
    .section{
        position: relative;
        float: right;
        width: 1650px;
        min-height: 1100px;
        /* border: 1px solid blue; */
    }
    
    .noticeListTable{
        border: hidden;
        border-top: 2px solid darkgray;
        border-bottom: 2px solid darkgray;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
        table-layout:fixed;
    }

    .noticeListTable td{
        border: 2px solid darkgray;
        font-family: 'SCDream-Regular';
        font-size: 16px;
        height: 50px;
        text-overflow: ellipsis;
        overflow: hidden;
    }
    
    .noticeTitles{
        cursor: pointer;
   	}

	.noticeDetails{
		display: none;
	}
	
	.noticeDetails td{
		padding-left: 100px;
		padding-right: 100px;
		padding-top: 30px;
		padding-bottom: 30px;
		background-color: #F0F0F0;
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
        <h1 style="position: relative; left: 20px; font-family: 'SCDream-Medium'; font-size: 40px;">공지사항</h1>
        <hr width="1600px" align="left">
        <br><br>

        <div class="noticeListDiv" align="center">
            <table class="noticeListTable">
                <tr>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">공지번호</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px;">제목</td>
                    <td style="font-family: 'SCDream-Medium'; font-size: 20px; width: 150px">등록일자</td> 
                </tr>
                
                <c:if test="${ empty noticeList }">
                	<tr>
                		<td colspan="3"style="font-family: 'SCDream-Regular'; font-size: 20px; height: 100px;">공지사항이 없습니다.</td>
                	</tr>
                </c:if>
                
                <c:forEach var="list" items="${ noticeList }">
                <tr class="noticeTitles">
                    <td><c:out value="${ list.noticeNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><nobr><c:out value="${ list.noticeTitle }"/></nobr></td>	<!-- 제목 -->
                    <td><c:out value="${ list.noticeDate }"/></td>
                </tr>
                <tr class="noticeDetails">
                	<td colspan="3" style="text-align: left; padding: 40px;">${ list.noticeDetails }</td>
                </tr>
                </c:forEach>
            </table>
        </div>       <!-- noticeListDiv 종료 -->
        
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
	
	<script>
		$(document).ready(function(){
	        $(".noticeTitles").click(function(){
	            var submenu = $(this).next("tr");
	            
	            if( submenu.is(":visible") ){
	                submenu.slideUp();
	                resizeContent();
	            } else {
	                submenu.slideDown();
	                resizeContent();
	            }
	        });
	    });
	
		const link = "${ pageContext.servletContext.contextPath }/corpMng/noticeList";
		
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