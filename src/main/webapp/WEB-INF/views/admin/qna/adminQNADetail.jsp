<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin_main.css">

    <style>
          .system-qnaDetail-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-qnaDetail-form{
            
            margin-top: 30px;
            margin-left: 500px;
        }

        .system-qnaDetail-form label{
            font-size: 25px;
            color: rgb(119, 94, 238);
            

        }

        .system-qnaDetail-form div{
            margin-top: 10px;
            margin-bottom: 20px;
            line-height: 1;
            width: 600px;
            font-size: 20px;
            border: 2px solid rgb(119, 94, 238);


        }

        .system-qnaDetail-detail{
            border: 2px solid rgb(119, 94, 238);
            width: 600px;
            height: 600px;
            margin-top: 10px;
        }

       
        .system-qnaDetail-bottom{
            margin-top: 40px;
            margin: 0 auto;
            text-align: center;
        }

        .system-qnaDetail-bottom input{
            background-color: rgb(119, 94, 238);
            border-radius: 5px;
            color: white;
            padding: 5px;
            margin: 10px;
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
        <div class="system-qnaDetail-head">Q&amp;A 작성하기</div>
        <br>

        <form class="system-qnaDetail-form" action="${pageContext.request.contextPath}/admin/qna/update" method="get">
        	<input type="hidden" name="no" value="${ qna.no }">
            <label for="">Q&amp;A 제목</label><br>
            <div>
            	${ qna.title }
            </div>
            <input type="hidden" name="title" value="${ qna.title }">
            <br>
            <label for="">Q&amp;A 내용</label>
            <br>
            <div class="system-qnaDetail-detail">
            	${ qna.details }
            </div>
            <input type="hidden" name="details" value="${ qna.details }">
            <br>
	        <div class="system-qnaDetail-bottom">
	            <input type="submit" id="updateButton" value="수정">
	            <input type="button" id="deleteButton" value="삭제">
	            <input type="button" id="returnButton" value="목록으로">
	        </div>
        </form>
    </section>
<script>
	$("#deleteButton").click(function(){
		
		const no = this.parentNode.parentNode.children[0].value;
		
		location.href = "${pageContext.request.contextPath}/admin/qna/delete?no=" + no;
		
	});
	
	$("#returnButton").click(function(){
		location.href = "${pageContext.request.contextPath}/admin/qna/list";
	});
	
	const message = '${ requestScope.message }';
	if(message != null && message !== '') {
		alert(message);
	};
</script>
</body>
</html>