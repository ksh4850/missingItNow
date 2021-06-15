<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style>
         .system-ntcDetail-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238);
            color: rgb(119, 94, 238);

        }

        .system-ntcDetail-form{
            
            margin-top: 30px;
            margin-left: 500px;
        }

        .system-ntcDetail-form label{
            font-size: 25px;
            color: rgb(119, 94, 238);
            

        }

        .system-ntcDetail-form input[type="text"]{
            margin-top: 10px;
            margin-bottom: 20px;
            line-height: 1;
            width: 600px;
            font-size: 20px;
            border: 2px solid rgb(119, 94, 238);


        }

        .system-ntcDetail-detail{
            border: 2px solid rgb(119, 94, 238);
            width: 600px;
            height: 600px;
            margin-top: 10px;
        }

       
        .system-ntcDetail-bottom{
            margin-top: 40px;
            margin-left: 200px;
        }

        .system-ntcDetail-bottom input{
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
		<jsp:include page="../../common/header.jsp"/>
    </header>
    <section>
        <div class="system-ntcDetail-head">공지사항 수정하기</div>
        <br>

        <div class="system-ntcDetail-form">
        <form action="${pageContext.request.contextPath}/admin/ntc/update" method="post">
        	<input type="hidden" name="no" value="${ ntc.no }">
            <label for="">공지사항 제목</label><br>
            <input type="text" name="title" value="${ ntc.title }">
            <br>
            <label for="">공지사항 내용</label>
            <br>
            <textarea rows="5" cols="10" name="details" class="system-ntcDetail-detail">${ ntc.details }</textarea>
            <br>
            <div class="system-ntcDetail-bottom">
                <input type="submit" value="수정하기">
                <input type="button" id="cancleButton" value="수정취소">
            </div>

            
        </form>
        </div>
    </section>
<script>
	$("#cancleButton").click(function(){
		
		location.href = "${pageContext.request.contextPath}/admin/ntc/detail?no=" + ${ no };
		
	});
</script>
</body>
</html>