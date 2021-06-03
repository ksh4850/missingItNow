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
<style>
.uploadImages{

	border: 1px solid black;
	

}
</style>
</head>
<body>
	<a href="${pageContext.request.contextPath}/admin/qna/list">Q&amp;A리스트로 이동하기</a><br>
	<a href="${pageContext.request.contextPath}/admin/qna/manage">Q&amp;A관리 페이지로 이동하기</a><br>
	<a href="${pageContext.request.contextPath}/admin/ntc/list">공지사항리스트로 이동하기</a><br>
	<a href="${pageContext.request.contextPath}/admin/settlement/breakdown">정산현황으로 이동하기</a><br>
	<a href="${pageContext.request.contextPath}/admin/userManage/list">사용자관리로 이동하기</a>
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
		<button type="button" id="multipleFileUploadButton">파일 업로드</button>
		<input type="file" name="files" id="files" multiple style="display: none;">
		<div id="contentImgArea"></div>
		<button type="button" id="acceptButton">확인</button>
	</div>
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
	var inputFiles = e.target;
	
	$imgs.html('');
	for(var i = 0 ; i < $files.files.length ; i++){
		var fileReader = new FileReader();
		fileReader.readAsDataURL(inputFiles.files[i]);
		fileReader.onload = function(e){
			$('<img>', {
				src: e.target.result,
				name: "img" + (1 + i)
			}).css({
				width: '120px',
				height: '100px',
				border: '1px solid black',
				margin: '5px 5px 0px 0px'
			}).addClass('uploadImages')
			.appendTo($imgs);
		}
		
	}
	
});

$("#acceptButton").click(function(){
	
	var $files = document.getElementById("files");
	var $imgs = $("#contentImgArea");
	
	if($files.files.length > 0){
		
		var inputFile = $('#files');
	    var data = new FormData();
	    var files=inputFile[0].files;
	    
	    for(var i = 0 ; i < files.length ; i++){
	    	data.append('uploadFiles', files[i]);
		}
		
	    console.log(files);
	    
		$.ajax({
			
			type: "POST",
			url: "${pageContext.servletContext.contextPath}/admin/qna/fileUpload",
			processData: false,
			contentType: false,
			enctype: "multipart/form-data",
			data: data,
			success: function(data){
				
				var parseData = JSON.parse(data);
				console.table(parseData);
				console.log(parseData);
				
				for(var index in parseData){
					
					var $test = parseData[index].url;
					
					console.log($test);
					
					
					
					var $uploadedImgs = $('<img>', {src: parseData[index].url}).css({width: '250px', height: '200px', border: '1px solid black', margin: '5px 5px 0px 0px'}).addClass('uploadImages');
					console.log($uploadedImgs);
					$('#details').append($uploadedImgs);
					
					/* var element = document.getElementById('details');
					var strOriginal = element.value + "";
					var iStartPos = element.selectionStart;
					var iEndPos = element.selectionEnd;
					var strFront = "";
					var strEnd = "";

					if(iStartPos == iEndPos) {

					strFront = strOriginal.substring(0, iStartPos);
					strEnd = strOriginal.substring(iStartPos, strOriginal.length);

					} */
					
					/* e.value = strFront; */
					/* e.append($uploadedImgs); */
					/* e.value = e.value + strEnd; */
					
				}
				
		
			},
			error: function(error){
				
			}
			
		});
		
	}
	
	$imgs.html('');
	$(".close-modal").click();
	
});
</script>
</body>
</html>