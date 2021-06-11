<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin_main.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>

    <style>
   
        .system-qna-head{
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-qna-searchBar{
        	width: 1340px;
        }
        
        #manageSearchForm input,
        #manageSearchForm select,
        #manageSearchForm label{
        	height: 40px;
        	vertical-align: middle;
        	line-height: 40px;
        	font-size: 18px;
        	padding: 3px;
        }

        .system-qna-info{
             margin-left: 150px;
             line-height: 2;
        }

        .system-qnalist{
        	text-align: center;
        }

        .system-qnalist tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
       }

       .system-qna-info td{
            padding-top: 8px;
            padding-bottom: 8px;
       }

        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
            
        }

        .system-qnalist button[type=button]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px;
            color: rgb(47, 16, 201);
            padding: 3px;
        }
		
		.system-qna-page{
		
			margin: 0 auto;
		
		}
        
        .pageButtons{
        
        	background-color: #fff;
			border: 1px solid black;
			width: 30px;
			height: 40px;
        
        }

		.system-qna-searchBar select,
		.system-qna-searchBar input{
		
			background-color: #fff;
			border: 1px solid black;
			height: 30px;
			padding-left: 10px;
			padding-right: 10px;
		
		}
		
		.system-qna-searchBar input[type=button]{
		
			background-color: rgb(119, 94, 238); 
			color: white;
			width: 50px;
			border-radius: 8px;
			
		
		}
		.system-qna-searchBar input[type=date]{
		
			font-size: 10px;
			
		}
    </style>

</head>
<body>
    <header>
		<jsp:include page="../../common/corpMngHeader.jsp"/>
    </header>
	<div style="overflow:hidden; display: flex;">
    <aside>
		<jsp:include page="../../common/corpMngNavi.jsp"/>
    </aside>
    <section>

       
        <div class="system-qna-info" >
        <div class="system-qna-head">Q&A 관리</div>
        <br>
        <div class="system-qna-searchBar">
        	<form action="${pageContext.request.contextPath}/admin/qna/manage" id="manageSearchForm">
        		<label>작성일 : </label>
	            <input type="date" name="searchWriteDateStart" value=<c:if test="${ search.searchWriteDateStart ne null }">"${ search.searchWriteDateStart }"</c:if>> ~
	            <input type="date" name="searchWriteDateEnd" value=<c:if test="${ search.searchWriteDateEnd ne null }">"${ search.searchWriteDateEnd }"</c:if>>
	            <select name="largeSearchCondition" style="margin-left: 350px;">
	                <option value="all" <c:if test="${ search.largeSearchCondition eq 'all' }">selected</c:if>>전체</option>
	                <option value="answer" <c:if test="${ search.largeSearchCondition eq 'answer' }">selected</c:if>>답변</option>
	                <option value="noneAnswer" <c:if test="${ search.largeSearchCondition eq 'noneAnswer' }">selected</c:if>>미답변</option>
	            </select>
	            <select name="smallSearchCondition">
	                <option value="id" <c:if test="${ search.smallSearchCondition eq 'id' }">selected</c:if>>아이디</option>
	                <option value="name" <c:if test="${ search.smallSearchCondition eq 'name' }">selected</c:if>>이름</option>
	                <option value="title" <c:if test="${ search.smallSearchCondition eq 'title' }">selected</c:if>>제목</option>
	            </select>
	            <input type="search" name="searchValue" style="width: 300px;" value="${ search.searchValue }">
	            <input type="button" id="manageSearchButton" value="검색"/>
			</form>
        </div>
        <br>
            <table class="system-qnalist">
                <tr class="first-tr">
                    <th width=160px;>Q&A 번호</th>
                    <th width=160px;>작성자 아이디</th>
                    <th width=160px;>작성자 이름</th>
                    <th width=300px;>Q&A 제목</th>
                    <th width=160px;>작성일 </th>
                    <th width=160px;>답변일</th>
                    <th width=160px;>답변 여부</th>
                    <th width=80px;>관리</th>
                 </tr>
                 <c:set var="num" value="${ search.pageInfo.startRow }"/>
                 <c:forEach items="${ qnaList }" var="qna">
                 	<tr>
                 		<td><input type="hidden" value="${ qna.no }"/><c:out value="${ search.pageInfo.totalCount + 1 - num }"/></td>
                 		<c:set var="num" value="${ num + 1 }"/>
                 		<td>
                 			<c:if test="${ qna.user.id ne null}">
								<c:out value="${ qna.user.id }"/>
							</c:if>
							<c:if test="${ qna.user.id eq null}">
								<c:out value="${ qna.corpUser.corpId }"/>
							</c:if>
                 		</td>
                 		<td>
                 			<c:if test="${ qna.user.name ne null}">
								<c:out value="${ qna.user.name }"/>
							</c:if>
							<c:if test="${ qna.user.name eq null}">
								<c:out value="${ qna.corpUser.corpName }"/>
							</c:if>
                 		</td>
                 		<td><c:out value="${ qna.title }"/></td>
                 		<td><c:out value="${ qna.date }"/></td>
                 		<td><c:out value="${ qna.replyDate }"/></td>
                 		<td><c:out value="${ qna.replyChk }"/></td>
                 		<td>
                 			<c:if test="${ qna.replyChk eq 'N'}">
                 				<button type="button" class="responseButtons">답변하기</button>
                 			</c:if>
                 		</td>
                 	</tr>
                 </c:forEach>
                 
            </table>
	        <br>
	
	        <div>
	            <table class="system-qna-page">
	                <tr>
	                    <c:forEach var="page" begin="${ search.pageInfo.startPage }" end="${ search.pageInfo.endPage }" step="1">
	                    	<c:if test="${search.pageInfo.pageNo eq page }">
	                    	<td>
								<button class="pageButtons" disabled>
									<c:out value="${ page }" />
								</button>
							</td>
							</c:if>
							<c:if test="${search.pageInfo.pageNo ne page }">
							<td>
								<button class="pageButtons" onclick="pageButtonAction(this.innerText);">
									<c:out value="${ page }" />
								</button>
							</td>
							</c:if>
	                    </c:forEach>
	                </tr>
	            </table>
	        </div>
        </div>
    </section>
    </div>
    <footer>
		<jsp:include page="../../common/footer.jsp"/>
	</footer>
<script>
	const link = "${ pageContext.servletContext.contextPath }/admin/qna/manage";
	const responseLink = "${ pageContext.servletContext.contextPath }/admin/qna/response";

	$("#manageSearchButton").click(function(){
		
		$("#manageSearchForm").submit();
		
	});
	
	function pageButtonAction(text){
		location.href = link + "?currentPage=" + text + "&searchWriteDateStart="
		+ document.getElementsByName("searchWriteDateStart")[0].value
		+ "&searchWriteDateEnd=" + document.getElementsByName("searchWriteDateEnd")[0].value
		+ "&largeSearchCondition=" + document.getElementsByName("largeSearchCondition")[0].value
		+ "&smallSearchCondition=" + document.getElementsByName("smallSearchCondition")[0].value
		+ "&searchValue=" + document.getElementsByName("searchValue")[0].value;
	};
	
	if(document.getElementsByClassName("responseButtons")){
		
		const $btns = document.getElementsByClassName("responseButtons");
		for(var i = 0 ; i < $btns.length ; i++){
			
			$btns[i].onclick = function(){
				
				const no = this.parentNode.parentNode.children[0].innerText;

				location.href = responseLink + "?no=" + no;
				
			}
			
		}
		
	}
	
	const message = '${ requestScope.message }';
	if(message != null && message !== '') {
		alert(message);
	};
</script>
</body>
</html>