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
        .system-qnaList-head{
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);
        }

        .system-qnaList-list{
            line-height: 2;
            width: 1100px;
            margin: 0 auto;
        }

        .system-qnalist tr{
            border-bottom: 1px solid rgb(119, 94, 238);
        }

        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
        }


        .system-qnaList-list td{
           padding-top: 7px;
           padding-bottom: 7px;
        }

        .system-qnaList-p{
            margin: 0 auto;
            border-bottom: none;
            text-align: center;
        }

        .qnaList-regist{
            background-color: rgb(119, 94, 238); 
            color: white;
            margin-left: 1030px;
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
		
		.system-qnalist{
		
			text-align: center;
		
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
			border-radius: 8px;
		
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
        <div class="system-qnaList-list">
	        <div class="system-qnaList-head">Q&amp;A 리스트</div>
	        <br>
	        <div class="system-qna-searchBar" >
	        	<form action="${pageContext.request.contextPath}/admin/qna/list" id="manageSearchForm" method="GET">
		            <select name="searchCondition">
		                <option value="all" <c:if test="${ search.searchCondition eq 'all' }">selected</c:if>>전체</option>
		                <option value="writer" <c:if test="${ search.searchCondition eq 'writer' }">selected</c:if>>작성자</option>
		                <option value="title" <c:if test="${ search.searchCondition eq 'title' }">selected</c:if>>제목</option>
		            </select>
		            <input type="search" name="searchValue" width="300px" value="${ search.searchValue }">
		            <input type="button" id="manageSearchButton" value="검색"/>
				</form>
	        </div>
	        <button type="button" id="qnaRegistButton" class="qnaList-regist">작성하기</button>
            <table class="system-qnalist">
                <tr class="first-tr">
                    <th width="700px">제목 </th>
                    <th width="200px">작성자</th>
                    <th width="200px">작성일</th>
                </tr>
				<c:forEach items="${ qnaList }" var="qna">
					<tr>
						<td><input type="hidden" value="${ qna.no }"/><c:out value="${ qna.title }"/></td>
						<td>
							<c:if test="${ qna.user.name ne null}">
								<c:out value="${ qna.user.name }"/>
							</c:if>
							<c:if test="${ qna.user.name eq null}">
								<c:out value="${ qna.corpUser.corpName }"/>
							</c:if>
						</td>
						<td><c:out value="${ qna.date }" /></td>
					</tr>
				</c:forEach>
               
            </table>

	        <br>
	        <div class="system-qnaList-p">
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
	</div>
	<footer>
		<jsp:include page="../../common/footer.jsp"/>
	</footer>
<script>
	const pageLink = "${ pageContext.servletContext.contextPath }/admin/qna/list";
	const detailLink = "${ pageContext.servletContext.contextPath }/admin/qna/detail";
	const registLink = "${pageContext.request.contextPath}/admin/qna/regist";

	$("#qnaRegistButton").click(function(){
		
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
				location.href = detailLink + "?qnaNo=" + no;
				
			}
			
		}
	}
</script>  
    
</body>
</html>