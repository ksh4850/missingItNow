<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin_main.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>

    <style>
          .system-qnaResponse-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-qnaResponse-form{
            margin-top: 30px;
            margin-left: 500px;
        }

        .system-qnaResponse-form label{
            font-size: 25px;
            color: rgb(119, 94, 238);
            

        }

        .system-qnaResponse-form input[type="text"]{
            margin-top: 10px;
            margin-bottom: 20px;
            line-height: 1;
            width: 600px;
            font-size: 20px;
            border: 2px solid rgb(119, 94, 238);


        }

        .system-qnaResponse-detail{
            border: 2px solid rgb(119, 94, 238);
            width: 600px;
            height: 400px;
            margin-top: 10px;
        }

       
        .system-qnaResponse-button{
            margin-top: 40px;
            margin-left: 200px;
           
        }

        .system-qnaResponse-button input{
            background-color: rgb(119, 94, 238);
            border-radius: 10px;
            color: white;
            padding: 5px;
            margin: 10px;
        }

       

        .system-qnaResponse-form textarea{
            margin-top: 10px;
            border: 2px solid rgb(119, 94, 238);
            width: 600px;
            height: 200px;
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
        <div class="system-qnaResponse-head">Q&amp;A 답변하기</div>
        <br>

        <div class="system-qnaResponse-form">
            <form action="${ pageContext.servletContext.contextPath }/admin/qna/response" method="post">
            <label for="">Q&amp;A 제목</label><br>
            <input type="hidden" name="no" value="${ qna.no }">
            <div>${ qna.title }</div>
            <br>
            <label for="">Q&amp;A 내용</label>
            <br>
            <div class="system-qnaResponse-detail">${ qna.details }</div>
            <br>
            <label for="">답변 내용</label>
            <br>
            <textarea name="reply" id="reply" cols="30" rows="10"></textarea>
            
            <div class="system-qnaResponse-button">
                <input type="submit" value="답변작성">
                <input type="button" id="cancleButton" value="작성취소">
            </div>

        	</form>
        </div>
    </section>
<script>
	$("#cancleButton").click(function(){
		
		location.href = "${pageContext.request.contextPath}/admin/qna/manage";
		
	});
</script>
</body>
</html>