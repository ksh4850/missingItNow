<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin_main.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>

    <style>
        .system-notice-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-notice-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 250px;
            font-size: 20px;
           
        }

        .system-notice-searchBar>select{
            border: 2px solid rgb(119, 94, 238);
            font-size: 18px;
        }


        .system-notice-searchBar > input[type="search"]{
            border: 2px solid rgb(119, 94, 238);
            width: 400px;
            line-height: 2;
        }

        .system-notice-searchBar > input[type="button"] {
            font-size: 18px;
            padding: 3px;
            background-color: rgb(119, 94, 238);
            color: white;
        }

        .system-notice-list{
            line-height: 2;
            margin-left: 250px;
        }

       

        .system-notice-list tr{
            border-bottom: 1px solid rgb(119, 94, 238);
        }

      
        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
            
        }

        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(3) {border-radius:0 15px 15px 0;}

        
        

        .system-notice-list td{
           padding: 8px;
           padding-left: 35px;
           
        }

        .system-notice-p{
            margin-left: 700px;
            border: 1px solid rgb(119, 94, 238);
        }

        .system-notice-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
           
            
        }

        .notice-regist{
            background-color: rgb(119, 94, 238); 
            color: white;
            margin-left: 1280px;
            margin-bottom: 10px;
            padding: 5px;
            line-height: 2;
            border-radius: 10px;
        }

        .system-notice-searchBar > input[type="date"]{
            border: 2px solid  rgb(119, 94, 238); 
        }


    </style>
</head>
<body>

    <header>

    </header>

    <aside>

    </aside>
    <section>
        <div class="system-notice-head">공지사항 관리</div>
        <br>
        <div class="system-notice-searchBar" >
        	<form action="${ pageContext.servletContext.contextPath }/admin/ntc/list" id="noticeSearchForm" method="post">
	            <input type="date" id="searchWriteDateStart" name="searchWriteDateStart" value=<c:if test="${ search.searchWriteDateStart ne null }">"${ search.searchWriteDateStart }"</c:if> min="2021-05-11"> ~
	            <input type="date" id="searchWriteDateEnd" name="searchWriteDateEnd" value=<c:if test="${ search.searchWriteDateEnd ne null }">"${ search.searchWriteDateEnd }"</c:if> max="2021-06-30">
	            <select name="searchCondition" style="margin-left: 80px;">
	                <option value="all" <c:if test="${ search.searchCondition eq 'all' }">selected</c:if>>전체</option>
	                <option value="title" <c:if test="${ search.searchCondition eq 'title' }">selected</c:if>>제목</option>
	                <option value="body" <c:if test="${ search.searchCondition eq 'body' }">selected</c:if>>내용</option>
	                <option value="titleAndBody" <c:if test="${ search.searchCondition eq 'titleAndBody' }">selected</c:if>>제목 + 내용</option>
	            </select>
	            <input type="search" name="searchValue" value="${ search.searchValue }">
	            <input type="button" id="searchButton" value="검색"/>
            </form>
        </div>
        <input type="button" value="작성하기" class="notice-regist" id="ntcRegistButton"/>
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
        <div >
            <table class="system-notice-p">
                <tr class="system-notice-page">
                    <c:forEach var="page" begin="${ search.pageInfo.startPage }" end="${ search.pageInfo.endPage }" step="1">
                    	<c:if test="${search.pageInfo.pageNo eq page }">
                    	<td>
							<button disabled>
								<c:out value="${ page }" />
							</button>
						</td>
						</c:if>
						<c:if test="${search.pageInfo.pageNo ne page }">
						<td>
							<button onclick="pageButtonAction(this.innerText);">
								<c:out value="${ page }" />
							</button>
						</td>
						</c:if>
                    </c:forEach>
                </tr>
            </table>
        </div>
    </section>
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
		location.href = link + "?currentPage=" + text + "&searchWriteDateStart="
		+ document.getElementsByName("searchWriteDateStart")[0].value
		+ "&searchWriteDateEnd=" + document.getElementsByName("searchWriteDateEnd")[0].value
		+ "&searchCondition=" + document.getElementsByName("searchCondition")[0].value
		+ "&searchValue=" + document.getElementsByName("searchValue")[0].value;
	};
	
	function getFormatDate(date){
	    var year = date.getFullYear();              
	    var month = (1 + date.getMonth());          
	    month = month >= 10 ? month : '0' + month;  
	    var day = date.getDate();                   
	    day = day >= 10 ? day : '0' + day;          
	    return  year + '-' + month + '-' + day;       
	}
</script>
</body>
</html>