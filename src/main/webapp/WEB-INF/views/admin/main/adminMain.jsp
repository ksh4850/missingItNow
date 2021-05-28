<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
</head>
<body>
	<a href="${pageContext.request.contextPath}/admin/qna/list">qna리스트로 이동하기</a>
	<a href="${pageContext.request.contextPath}/admin/qna/manage">qna관리 페이지로 이동하기</a>
	<div class="btns" style="width: 300px; height: 50px">
		<button type="button" id="textColorButton">칼</button>
		<button type="button" id="textBolderButton">두</button>
		<button type="button" id="textUnderlineButton">밑</button>
		<button type="button" id="textSizeButton">크</button>
		<button type="button" id="fileUploadButton"><a class="btn" href="#pop">파</a></button>
	</div>
	<form action="${pageContext.request.contextPath}/admin/test" method="post" id="testSubmit">
	<div id="details" class="system-qnaDetail-detail" contenteditable="true" style="border: 1px solid black; width: 300px; height: 300px;">
		type here
		<img src="${ pageContext.servletContext.contextPath }/resources/img/header/profile.png" alt="">
	</div>
	<textarea name="append" id="appenddiv" style="display:none;"></textarea>
	<input type="button" name="temp" id="temp" value="submit"/>
	</form>
	
	<div id="pop" class="modal">
		<form method="POST" enctype="multipart/form-data" id="uploadForm">
		<button type="button" id="multipleFileUploadButton">파일 업로드</button>
		<input type="file" name="files" id="files" multiple style="display: none;">
		<div id="contentImgArea"></div>
		<button type="button" id="acceptButton">확인</button>
		</form>
	</div>
	<img alt="" src="">
<script>
$(document).ready(function () {
    $('#temp').click(function () {
        $('#appenddiv').val($('#details').html());
        $('#testSubmit').submit();
    });
});

$(document).ready(function () {
    $('#textColorButton').click(function () {

    });
});

$(document).ready(function () {
    $('#textBolderButton').click(function () {

    });
});

$(document).ready(function () {
    $('#textUnderlineButton').click(function () {

    });
});

$(document).ready(function () {
    $('#textSizeButton').click(function () {

    });
});

$(document).ready(function () {
	
	$('a[href="#pop"]').click(function(event) {
		
    	event.preventDefault();
	 
    	$(this).modal({
    		fadeDuration: 250
    	});
	      
    });
	
});

$("#multipleFileUploadButton").click(function(){
	
	$("#files").click();
	
});

$("#files").change(function(e){
	
	var $files = document.getElementById("files");
	var $imgs = $("#contentImgArea");
	console.log($files.files[0]);
	$imgs.html('');
	for(var i = 0 ; i < $files.files.length ; i++){
		
		$('<img>', {
			src: "#",
			name: "img" + (1 + i)
		}).css({
			width: 100,
			height: 100
		}).appendTo($imgs);
		
	}
	
});

$("#acceptButton").click(function(){
	
	$(".close-modal").click();
	
	var $files = document.getElementById("files");
	
	if($files.files.length > 0){
		
		var form = $('#uploadForm')[0];
	    var data = new FormData(form);
	    
	    data.append('file1', $files.files[0]);
	    data.append('file2', $files.files[1]);
	    data.append('file3', $files.files[2]);
		
	    console.log(data);
	    
		$.ajax({
			
			type: "POST",
			url: "${pageContext.servletContext.contextPath}/admin/qna/fileUpload",
			processData: false,
			contentType: false,
			enctype: "multipart/form-data",
			data: data,
			success: function(data){
				console.log(data);
			},
			error: function(error){
				
			}
			
		});
		
	}
	
});
</script>
</body>
</html>