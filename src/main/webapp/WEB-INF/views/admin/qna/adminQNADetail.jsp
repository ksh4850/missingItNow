<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
	<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
	
    <style>
    	section{
    	
    		padding-top: 100px;
    		margin-bottom: 100px;
    	
    	}
    
    	.wrap-detail{
    	
    		margin: 0 auto;
    		width: 605px;
    	
    	}
    	
        .system-qnaDetail-head{
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-qnaDetail-form{
            
            margin-top: 30px;
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
            min-height: 300px;
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
		<jsp:include page="../../common/header.jsp"/>
    </header>

    <section>
    	<div class="wrap-detail">
        <div class="system-qnaDetail-head">Q&amp;A 상세</div>
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
            <input type="hidden" name="details" value='${ qna.details }'>
            <br>
	        <div class="system-qnaDetail-bottom" style="border: none;">
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