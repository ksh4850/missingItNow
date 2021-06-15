<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>

    <style>
        .system-notice-head{
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }
        
        .system-noticeList{
        
        	width: 1100px;
        	margin: 0 auto;
        	line-height: 2;
        
        }

        .system-notice-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            font-size: 20px;
           
        }
        
    	.system-notice-searchBar select,
		.system-notice-searchBar input[type=search],
		.system-notice-searchBar input[type=date]{
		
			background-color: #fff;
			border: 1px solid black;
			height: 30px;
			padding-left: 10px;
			padding-right: 10px;
		
		}
        

        .system-notice-searchBar input[type="button"] {
            background-color: rgb(119, 94, 238); 
			color: white;
			width: 50px;
			height: 30px;
			border-radius: 8px;
        }
        
        .system-notice-list{
            line-height: 2;
        }

        .system-notice-list tr{
            border-bottom: 1px solid rgb(119, 94, 238);
        }

      
        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
            
        }

        .system-notice-list td{
           padding: 8px;
           padding-left: 35px;
           
        }

        .system-notice-p{
            margin: 0 auto;
            text-align: center;
        }

        .notice-regist{
            background-color: rgb(119, 94, 238); 
            color: white;
            margin-bottom: 10px;
            padding: 5px;
            line-height: 2;
            border-radius: 10px;
        }
        
        .pageButtons{
		
			background-color: #fff;
			border: 1px solid black;
			width: 30px;
			height: 40px;
		
		}

    </style>
</head>
<body>

    <header>
		<jsp:include page="../../common/header.jsp"/>
    </header>
    <section>
    <div class="system-noticeList">
        <div class="system-notice-head">공지사항</div>
        <br>
        <div class="system-notice-searchBar" >
        	<form action="${ pageContext.servletContext.contextPath }/admin/ntc/list" id="noticeSearchForm" method="post">
	            <input type="date" id="searchWriteDateStart" name="searchWriteDateStart" value=<c:if test="${ search.searchWriteDateStart ne null }">"${ search.searchWriteDateStart }"</c:if> min="2021-05-11"> ~
	            <input type="date" id="searchWriteDateEnd" name="searchWriteDateEnd" value=<c:if test="${ search.searchWriteDateEnd ne null }">"${ search.searchWriteDateEnd }"</c:if> max="2021-06-30">
	            <select name="searchCondition" style="margin-left: 380px;">
	                <option value="all" <c:if test="${ search.searchCondition eq 'all' }">selected</c:if>>전체</option>
	                <option value="title" <c:if test="${ search.searchCondition eq 'title' }">selected</c:if>>제목</option>
	                <option value="body" <c:if test="${ search.searchCondition eq 'body' }">selected</c:if>>내용</option>
	                <option value="titleAndBody" <c:if test="${ search.searchCondition eq 'titleAndBody' }">selected</c:if>>제목 + 내용</option>
	            </select>
	            <input type="search" name="searchValue" value="${ search.searchValue }">
	            <input type="button" id="searchButton" value="검색"/>
            </form>
        </div>
        <c:if test="${ CorpUserSession.corpNo eq 'ADMIN' }">
        	<input type="button" value="작성하기" class="notice-regist" id="ntcRegistButton"/>
		</c:if>
        <div class="system-notice-list">
            <table>
                <tr class="first-tr">
                    <th width="700px">제목 </th>
                    <th width="200px">작성일</th>
                    <th width="200px">조회수</th>
                </tr>
				<c:forEach items="${ ntcList }" var="ntc">
					<tr>
						<td><input type="hidden" value="${ ntc.no }"/><c:out value="${ ntc.title }"/></td>
						<td><c:out value="${ ntc.date }" /></td>
						<td><c:out value="${ ntc.hits }"/></td>
					</tr>
				</c:forEach>
            </table>
        </div>
        <br>
        <div class="system-notice-p">
            <c:forEach var="page" begin="${ search.pageInfo.startPage }" end="${ search.pageInfo.endPage }" step="1">
                <c:if test="${search.pageInfo.pageNo eq page }">
					<button class="pageButtons" disabled>
						<c:out value="${ page }" />
					</button>
					</c:if>
				<c:if test="${search.pageInfo.pageNo ne page }">
					<button class="pageButtons" onclick="pageButtonAction(this.innerText);">
						<c:out value="${ page }" />
					</button>
				</c:if>
            </c:forEach>
        </div>
        </div>
    </section>
    <footer>
		<jsp:include page="../../common/footer.jsp"/>
	</footer>
<script>
	const pageLink = "${ pageContext.servletContext.contextPath }/admin/ntc/list";
	const detailLink = "${ pageContext.servletContext.contextPath }/admin/ntc/detail";
	const registLink = "${pageContext.request.contextPath}/admin/ntc/regist";

	$("#searchWriteDateStart").change(function(){
		console.log("startChanged");
		var inputDate = new Date($("#searchWriteDateStart").val());
		var date = getFormatDate(inputDate);
		console.log(date);
		$("#searchWriteDateEnd").min = date;
		console.log($("#searchWriteDateEnd").min);
		console.log($("#searchWriteDateEnd"));
		
	});
	
	$("#searchWriteDateEnd").change(function(){
		console.log("endChanged");
		var inputDate = new Date($("#searchWriteDateEnd").val());
		var date = getFormatDate(inputDate);
		console.log(date);
		$("#searchWriteDateStart").max = date;
		console.log($("#searchWriteDateEnd"));
		
	});
	
	$("#ntcRegistButton").click(function(){
		
		location.href = registLink;
		
	});
	
	const message = '${ requestScope.message }';
	if(message != null && message !== '') {
		alert(message);
	};
	
	function pageButtonAction(text){
		location.href = pageLink + "?currentPage=" + text;
	};
	
	if(document.getElementsByTagName("td")){
		const $tds = document.getElementsByTagName("td");
		for(var i = 0 ; i < $tds.length ; i++){
			
			$tds[i].onclick = function(){
				
				const no = this.parentNode.children[0].children[0].value;
				location.href = detailLink + "?no=" + no;
				
			}
			
		}
	}
	
	$("#searchButton").click(function(){
		
		$("#noticeSearchForm").submit();
		
	});
	
	function pageButtonAction(text){
		location.href = pageLink + "?currentPage=" + text + "&searchWriteDateStart="
		+ document.getElementsByName("searchWriteDateStart")[0].value
		+ "&searchWriteDateEnd=" + document.getElementsByName("searchWriteDateEnd")[0].value
		+ "&searchCondition=" + document.getElementsByName("searchCondition")[0].value
		+ "&searchValue=" + document.getElementsByName("searchValue")[0].value;
	};
</script>
</body>
</html>