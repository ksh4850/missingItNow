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
		<jsp:include page="../../common/corpMngHeader.jsp"/>
    </header>

    <aside>
		<jsp:include page="../../common/corpMngNavi.jsp"/>
    </aside>
    <section>
        <div class="system-ntcDetail-head">공지사항 작성하기</div>
        <br>

        <div class="system-ntcDetail-form">
        <form action="${pageContext.request.contextPath}/admin/ntc/regist" method="post">
            <label for="">공지사항 제목</label><br>
            <input type="text" name="title">
            <br>
            <label for="">공지사항 내용</label>
            <br>
            <textarea name="details" class="system-ntcDetail-detail"></textarea>
            <br>
            <div class="system-ntcDetail-bottom">
                <input type="submit" value="작성하기">
                <input type="button" id="cancleButton" value="작성취소">
            </div>

            
        </form>
        </div>
    </section>
<script>
	$("#cancleButton").click(function(){
		
		location.href = "${pageContext.request.contextPath}/admin/ntc/list";
		
	});
</script>
</body>
</html>