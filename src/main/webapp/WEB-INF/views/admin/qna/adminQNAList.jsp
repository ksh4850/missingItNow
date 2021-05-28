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
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);
        }

        .system-qnaList-list{
            line-height: 2;
            margin-left: 250px;
        }

        .system-qnaList-list tr{
            border-bottom: 1px solid rgb(119, 94, 238);
        }

        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
        }

        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(3) {border-radius:0 15px 15px 0;}

        .system-qnaList-list td{
           padding: 8px;
           padding-left: 35px;
        }

        .system-qnaList-p{
            margin-left: 700px;
            border: 1px solid rgb(119, 94, 238);
        }

        .system-qnaList-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
        }

        .qnaList-regist{
            background-color: rgb(119, 94, 238); 
            color: white;
            margin-left: 1280px;
            margin-bottom: 10px;
            padding: 5px;
            line-height: 2;
            border-radius: 10px;
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
        <div class="system-qnaList-head">Q&amp;A 리스트</div>
        <br>
       
        <button type="button" id="qnaRegistButton" class="qnaList-regist">작성하기</button>
        <div class="system-qnaList-list">
            <table>
                <tr class="first-tr">
                    <th width="700px">제목 </th>
                    <th width="200px">작성자</th>
                    <th width="200px">작성일</th>
                </tr>
				<c:forEach items="${ qnaList }" var="qna">
					<tr>
						<td><input type="hidden" value="${ qna.no }"/><c:out value="${ qna.title }"/></td>
						<td><c:out value="${ qna.user.name }"/></td>
						<td><c:out value="${ qna.date }" /></td>
					</tr>
				</c:forEach>
               
            </table>

        </div>

        <br>
        <div >
            <table class="system-qnaList-p">
                <tr class="system-qnaList-page">
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