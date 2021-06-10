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
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-qna-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 150px;
            font-size: 20px;
           
        }

        .system-qna-searchBar > form > select{
            border: 2px solid rgb(119, 94, 238);
            font-size: 18px;
        }


        .system-qna-searchBar > form > input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
        }
        
        .system-qna-searchBar > form > input[type="date"] {
            border: 2px solid rgb(119, 94, 238);
        }

        .system-qna-searchBar > form > input[type="button"] {
            font-size: 18px;
            padding: 3px;
            background-color: rgb(119, 94, 238);
        }
       
        

        .system-qna-info{
             margin-left: 150px;
             text-align: center; 
             line-height: 2;
        }

        

        .system-qna-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
            
            
       }

       .system-qna-info td{
            padding-top: 10px;
            
            
       }

        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(8) {border-radius:0 15px 15px 0;}

        input[type ="search"]{
            width: 300px;
            line-height: 2;
        }

        .system-qna-info input[type="button"]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px ;
            color: rgb(47, 16, 201);
            padding: 3px;
        }

        
        .system-qna-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }

        
        .system-qna-searchBar > input[type="date"]{
            border: 2px solid  rgb(119, 94, 238); 
        }


    </style>

</head>
<body>
    <header>
		<jsp:include page="../../common/corpMngHeader.jsp"/>
    </header>

    <aside>
		<jsp:include page="../../common/corpMngNavi.jsp"/>
    </aside>
    <section>
        <div class="system-qna-head">Q&A 관리</div>
        <br>
        <div class="system-qna-searchBar" >
        	<form action="${pageContext.request.contextPath}/admin/qna/manage" id="manageSearchForm">
        		<label>작성일 : </label>
	            <input type="date" name="searchWriteDateStart" value=<c:if test="${ search.searchWriteDateStart ne null }">"${ search.searchWriteDateStart }"</c:if>> ~
	            <input type="date" name="searchWriteDateEnd" value=<c:if test="${ search.searchWriteDateEnd ne null }">"${ search.searchWriteDateEnd }"</c:if>>
	            <select name="largeSearchCondition" style="margin-left: 460px;">
	                <option value="all" <c:if test="${ search.largeSearchCondition eq 'all' }">selected</c:if>>전체</option>
	                <option value="answer" <c:if test="${ search.largeSearchCondition eq 'answer' }">selected</c:if>>답변</option>
	                <option value="noneAnswer" <c:if test="${ search.largeSearchCondition eq 'noneAnswer' }">selected</c:if>>미답변</option>
	            </select>
	            <select name="smallSearchCondition">
	                <option value="id" <c:if test="${ search.smallSearchCondition eq 'id' }">selected</c:if>>아이디</option>
	                <option value="name" <c:if test="${ search.smallSearchCondition eq 'name' }">selected</c:if>>이름</option>
	                <option value="title" <c:if test="${ search.smallSearchCondition eq 'title' }">selected</c:if>>제목</option>
	            </select>
	            <input type="search" name="searchValue" width="300px" value="${ search.searchValue }">
	            <input type="button" id="manageSearchButton" value="검색"/>
			</form>
        </div>

        <br>
        <div class="system-qna-info" >
            <table>
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
                 <c:forEach items="${ qnaList }" var="qna">
                 	<tr>
                 		<td><c:out value="${ qna.no }"/></td>
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
        </div>

        <br>

        <div  align="center">
            <table>
                <tr class="system-qna-page">
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