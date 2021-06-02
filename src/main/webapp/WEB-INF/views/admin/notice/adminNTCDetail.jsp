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
          .system-noticeDetail-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-noticeDetail-form{
            margin-top: 30px;
            margin-left: 500px;
        }

        .system-noticeDetail-form label{
            font-size: 25px;
            color: rgb(119, 94, 238);
            

        }

        .system-noticeDetail-form input[type="text"]{
            margin-top: 10px;
            margin-bottom: 20px;
            line-height: 1;
            width: 600px;
            font-size: 20px;
            border: 2px solid rgb(119, 94, 238);


        }

        .system-noticeDetail-detail{
            border: 2px solid rgb(119, 94, 238);
            width: 600px;
            height: 600px;
            margin-top: 10px;
        }

       
        .system-noticeDetail-bottom{
            margin-top: 40px;
            margin-left: 200px;
        }

        .system-noticeDetail-bottom input{
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
        <div class="system-noticeDetail-head">공지사항 상세페이지</div>
        <br>

        <div class="system-noticeDetail-form">
        <form action="${pageContext.request.contextPath}/admin/ntc/update" method="get">
        	<input type="hidden" name="no" value="${ ntc.no }">
            <label for="">공지사항 제목</label><br>
            <div>
            	${ ntc.title }
            </div>
            <input type="hidden" name="title" value="${ ntc.title }">
            <br>
            <label for="">공지사항 내용</label>
            <br>
            <div class="system-noticeDetail-detail">
            	${ ntc.details }
            </div>
            <input type="hidden" name="details" value="${ ntc.details }">
            <br>
	        <div class="system-noticeDetail-bottom">
	            <input type="submit" id="updateButton" value="수정">
	            <input type="button" id="deleteButton" value="삭제">
	            <input type="button" id="returnButton" value="목록으로">
	        </div>
        </form>
        </div>
    </section>
<script>
	$("#deleteButton").click(function(){
		
		const no = this.parentNode.parentNode.children[0].value;
		
		location.href = "${pageContext.request.contextPath}/admin/ntc/delete?no=" + no;
		
	});
	
	$("#returnButton").click(function(){
		location.href = "${pageContext.request.contextPath}/admin/ntc/list";
	});
	
	const message = '${ requestScope.message }';
	if(message != null && message !== '') {
		alert(message);
	};
</script>
</body>
</html>