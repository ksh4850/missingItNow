<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/resetsys.css">
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <style>
    .system-communtyRegist-head{
            font-size: 35px;
            margin-left: 300px;
            width: 800px;
            margin-top: 150px;
            border-bottom: 1px solid rgb(119, 94, 238);
            color: rgb(119, 94, 238);
        }
		section{
		
			padding-top: 100px;
			margin-bottom: 100px;
			width: 1920px;
			height: 1000px;
		
		}
		
		.system-qnaDetail{
		
			width: 1280px;
			margin: 0 auto;
		
		}

        .communty-regist-info{
            margin-top: 30px;
            font-size: 25px;
            margin-left: 300px;
            color: rgb(119, 94, 238);
        }

        .communty-regist-info select{
            border: 1px solid rgb(119, 94, 238);
            font-size: 20px;
        }

        .communty-regist-info td{
            padding: 10px;
            
        }
        
        .communty-regist-bar{
        width: 605px;
        text-align: left;
        margin: 0 auto;
        margin-top: 30px;
        }
        
         .communty-regist-bar input[type="button"]{
         	background-color: rgb(119, 94, 238);
            color: white;
            border-radius: 10px;
            padding: 8px;
         }


        .communty-regist-datail{
            margin-top: 20px;
            border: 2px solid rgb(119, 94, 238);
            width:600px;
            height:600px;
            overflow-y: auto; 
            outline-style: none;
            float: left; 
            margin: 0 auto;
            text-align: left;
            /* position: absolute;
            z-index:1; */
          
             
            
        }
        
        .communty-regist-datail *{
        	margin : 5px;
        	
        }


        textarea{
            display: none;
            overflow-y: auto;
            width: 600px;
            height: auto;
        }

        .communty-regist-btn{
            margin-top: 700px;
            margin-left: 630px;
            clear: both;
        }

        .communty-regist-btn input{
            background-color: rgb(119, 94, 238);
            color: white;
            border-radius: 10px;
            padding: 8px;
        }
        
        
        #imgfile{
        	display: none;
        }
        
        .communty-regist{
        	overflow: hidden;
        	text-align: center;
        	margin: 0 auto;
        	width: 605px;
        }
        
        .communty-regist-thumb{
            margin-top: 20px;
            margin-left: 30px;
            border: 2px solid rgb(119, 94, 238);
            width: 135px;
            height: auto;
            float: left;
            display: none;
            
        }
        .communty-regist-thumb img{
            margin: 5px;
            width: 120px;
            height: 120px;
            border: 1px solid black;
        }
        
         .communty-regist-thumb img:hover{
            opacity:0.6; 
            color:#ffffff;
            
        }
        
         .thum-div{
            position: relative;
            display: inline-block;
        }

        .thum-div i{
            
            position: absolute;
            right: 15px;
            top: 10px;
        }
         
        
        .detailImg-div{
            position: relative;
           display: inline-block;
        }
        
        .detailImg-div img:hover{
        	 opacity:0.6; 
            color:#ffffff;
        }

        .detailImg-div i{
            display: none;
            position: absolute;
            right: 25px;
            top: 10px;
        }
        
        #reName{
        	display: none;
        }
        
        #originName{
        	display: none;
        }
        
        #imgMenuBar{
        	border: 2px solid rgb(119, 94, 238);
        	background-color: rgb(119, 94, 238);
            display: none;
            top: 100px;
            left: 100px;
            z-index: 3;
            position: absolute;
            
        }
        
        .b1{
         	line-height: 2;
         	
         }
          .system-qnaDetail-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238);
            color: rgb(119, 94, 238);

        }

        .system-qnaDetail-form{
            
            margin-top: 30px;
            text-align: center;
        }

        .system-qnaDetail-form label{
            font-size: 25px;
            color: rgb(119, 94, 238);
            

        }

        .system-qnaDetail-form input[type="text"]{
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
    <div class="system-qnaDetail">
        <div class="system-qnaDetail-head">Q&amp;A 작성하기</div>
        <br>

        <div class="system-qnaDetail-form">
        <form action="${pageContext.request.contextPath}/admin/qna/regist" method="post">
            <label for="">Q&amp;A 제목</label><br>
            <input type="text" name="title" id="title">
            <br>
            <label for="">Q&amp;A 내용</label>
            <br>
            <textarea name="details" id="postDetail" cols="30" rows="10"></textarea>
            
			<div class="communty-regist-bar">
			<button type="button"  id="bold"><i class="xi-bold xi-2x" ></i></button>
			<button type="button"  id="italic"><i class="xi-italic xi-2x" ></i></button>
			<button type="button"  id="underline"><i class="xi-underline xi-2x" ></i></button>
			<button type="button"  id="justifyLeft"><i class="xi-align-left xi-2x" ></i></button>
			<button type="button"  id="justifyCenter"><i class="xi-align-center xi-2x" ></i></button>
			<button type="button"  id="justifyRight"><i class="xi-align-right xi-2x" ></i></button>
			
			<select id="fontSize">
				<option value="7">30px</option>		
				<option value="6">20px</option>		
				<option value="5">16px</option>		
				<option value="4">12px</option>		
				<option value="3">10px</option>		
				<option value="" selected> -- </option>		
			</select>
			
			 <i class="xi-image-o xi-2x" id="fileBtn"></i>
			
			<!-- <input type="button" id="Btn" value="이미지업로드"> -->
			</div>
			 
			<div class="communty-regist">
			
	            <div class="communty-regist-datail" id="detail" contentEditable="true" >
	               
	            </div>
	            
	            <div class="communty-regist-thumb">
	              
	            </div>
		</div>
			  

				<input type="text" name="reName" id="reName" >
				<input type="text" name="originName" id="originName" >
				<input type="file" name="imgfile" id="imgfile" multiple>
        	<br>
        	<br>
            <div class="system-qnaDetail-bottom">
                <input type="submit" id="qnaSubmit" value="작성하기">
                <input type="button" id="cancleButton" value="작성취소">
            </div>

            
        </form>
        
		       <div id="imgMenuBar">
		        <button type="button" id="imgMenuLeft"><i class="xi-align-left xi-2x" ></i></button>
		        <button type="button" id="imgMenucenter"><i class="xi-align-center xi-2x" ></i></button>
		        <button type="button" id="imgMenuRight"><i class="xi-align-right xi-2x" ></i></button>
		        <button type="button" id="imgMenu50"><b class="b1">50%</b></button>
		        <button type="button" id="imgMenu100"><b class="b1">100%</b></button>
		        <button type="button" id="imgMenuFull"><b class="b1">full</b></button>
		        <button type="button" id="imgMenuDelete"><i class="xi-trash xi-2x"></i></button>
		        <button type="button" id="imgMenuClose"><i class="xi-close xi-2x"></i></button>
		      
		    </div>
            
        </div>
        </div>
    </section>
<script>
	$("#cancleButton").click(function(){
		
		location.href = "${pageContext.request.contextPath}/admin/qna/list";
		
	});
	
    document.execCommand('defaultParagraphSeparator', false, 'p');
    	
    	
    	$(function(){
    		$("#detail").append("<p>&nbsp;</p>");
    		
    		
			$("#bold").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('bold', false, true);
        	})
        	
        	$("#italic").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('italic', false, true);
        	})
        	
        	$("#underline").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('underline', false, true);
        	})
        	
        	$("#fontSize").change(function(){
        		document.execCommand('fontSize', false, $(this).val());
        	})
        	
    		
    		$("#justifyLeft").click(function(){
        		
    			document.execCommand('justifyLeft');
        		
        	})
        	
        	$("#justifyCenter").click(function(e){
        		
        		e.stopPropagation();
        		document.execCommand('justifyCenter');
        	})
        	
        	$("#justifyRight").click(function(){
        		
        		document.execCommand('justifyRight');
        	})
    		
    	})
    	

    	$("#fileBtn").click(function(){
    		
    		$("#imgfile").click();
    	})
    	
    	
    	
    	
    	
    	$(function(){
    		
    		
    		
		  $("#imgfile").change(function(){
			  
			 var imgLangth =  $(".detailImg").length;
			
				
			var formData = new FormData();
			var inputFile = $('#imgfile');
			var files=inputFile[0].files;
			
			
			
			for(var i = 0 ; i < files.length ; i++){
				formData.append('uploadFiles', files[i]);
			}
			
			var reURL = '${ pageContext.servletContext.contextPath }/communty/imgUpload';
			
			
			$.ajax({
				contentType : false,				// 필수, application/x-www-form-urlencoded : true, multipart/form-data : false
				processData : false,				// 필수, get 방식 : true, post 방식 : false
				enctype : 'multipart/form-data',	// 필수
				data : formData,					// 필수
				url : reURL,
				type : 'POST',
				success : function(data){
					
						
						if($(".communty-regist-thumb").css("display")  == "none"){
							$(".communty-regist-thumb").css("display","inline");
						}
						
						
						var $detail = $("#detail");
						var $thumb = $(".communty-regist-thumb");
						
						
						
						
						for(var i in data){
							
							var $thumDiv  =$("<div class='thum-div'>");
							var $detailImgDiv  =$("<div class='detailImg-div'>");
							var $itag1 = $('<i class="xi-close xi-2x">').css('display',"none");
							var $itag2 = $('<i class="xi-close xi-2x">');
							var $detailImg = $('<img class="detailImg" >').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].reName).css("width","500px").css("height","500px").attr('data-filename',data[i].originFileName);
							var $thumbImg = $('<img class="thumbImg">').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].reName).css("width","120px").css("height","120px");
							
							/* $detailImgDiv.append($detailImg).append($itag1).append("<p>&nbsp;</p>"); */
							$detail.append($detailImg);
							
							$thumDiv.append($thumbImg).append($itag2);
							$thumb.append($thumDiv);
							
						} 
						
						
					}
				});
			}); 
		  
		 
		  
		});
    	
    	$("#qnaSubmit").click(function(){
       	 if($("#detail").html() == "" || $("#title").val() == ""){
       		 alert("제목 혹은 내용이 비어있습니다!");
       		 return false;
       		 
       	 }
       	 var $re =  $("#detail").html();
       	 $("#postDetail").val($re);
       	 var txt = $("#postDetail").val();
       	 
       	var reNameArr = new Array() ;
       	var originNameArr = new Array() ;
      	 $(".detailImg").filter(function(){
      		var reName = $(this).attr("src");
      		 var originName = $(this).attr("data-filename");
      		var re = reName.substring(reName.lastIndexOf("/"));
      		
      		
      		reNameArr.push(re.substring(1));         
      		 originNameArr.push(originName);    
        }) 
        
       	 
       	  $("#reName").val(reNameArr);
       	  $("#originName").val(originNameArr); 
       	 
       	  if(reNameArr.length > 0){
       		$("#communtyRegist").submit();
       	  }else{
       		  alert("사진을 등록해주세요");
       		  return false;
       	  }
       	  
       	  
       	 
       	 

        });
        
        $("#tt").click(function(){
        	
        	 /* originFileName.substring(originFileName.lastIndexOf(".")) */
        	 
        	 var arr = new Array() ;
           	 $(".detailImg").filter(function(){
           		var i = $(this).attr("src");
           		var re = i.substring(i.lastIndexOf("/"));
           		
           		arr.push(re.substring(1));         
             }) 
             
           	 
           	 $("#imgName").val(arr);
        })
        
        
        
        //썸네일 이미지 삭제
        $(document).on('click',".thum-div i" , function(){

                var reName =  $(this).parent().find("img").attr("src");
                $(this).parent().remove();
                $(".detailImg").filter(function(){
                    return $(this).attr("src") == reName;          
                 }).remove();

                 
                 
                  $.ajax({
                	 type:"GET",
              	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
              	      data: {reName:reName},
              	   success:function(data){
              		   var length =  $(".thumbImg").length;
              		    if(length == 0 ){
              		    	$(".communty-regist-thumb").css("display","none");
              		    }
              		   
              		   alert(data);
              		   
              	   },
              	   error:function(error){
              		   
              	   }
                 }) 
                 
                 

            })
            
            /* $(document).on('click','.detailImg', function() {
            	
			     alert('클릭');
			}) */
			
			
		  
		
			var arrImg1 = new Array();
    		
    		$(document).on("click", ".detailImg", function (e) {
    			
    		
				    	
				    	const $img = $(this); 
				    	const imgsrc =  $img.attr('src');
				    	
				    	
				    	arrImg1.unshift(imgsrc);
				    	
		            	 var isTrue = false;
		            	 
		            	 x = e.pageX;
		                 y = e.pageY; 
		                 
		                 $("#imgMenuBar").css('top',y).css('left',x).css('display','inline-block'); 
				             
				    });
    		
    		$('.communty-regist-datail').click(function(){
    			$("#imgMenuBar").css('top','0').css('left','0').css('display','none');
    		})
    		
    		
    		$("#imgMenuLeft").click(function(e){
       		 
				
    		 
    			  $(".detailImg").filter(function(){
                      return $(this).attr("src") == arrImg1[0];          
                   }).css('float','left');
     		
    			  arrImg1=[];
     		
     	 	}) 
     	 
     	 
     	 	$("#imgMenucenter").click(function(e){
        		 
					

  			  $(".detailImg").filter(function(){
                    return $(this).attr("src") == arrImg1[0];          
                 }).css('margin-left','auto').css('margin-right','auto');
         		
  			 	arrImg1=[];
         		
         	 }) 
         	 
         	 $("#imgMenuRight").click(function(e){
        		 

   			  $(".detailImg").filter(function(){
                     return $(this).attr("src") == arrImg1[0];          
                  }).css('float','right');
         		
   			 arrImg1=[];
         		
         	 }) 
    		
    		
    		$("#imgMenu50").click(function(e){
        		 
    			$(".detailImg").filter(function(){
                    return $(this).attr("src") == arrImg1[0];          
                 }).css('width','250px').css("height","250px");
         		
    			 arrImg1=[];
         		
         	 }) 
             
             
				$("#imgMenu100").click(function(e){
         		 
         		
         		 
					$(".detailImg").filter(function(){
	                    return $(this).attr("src") == arrImg1[0];          
	                 }).css('width','500px').css("height","500px");
					 arrImg1=[];
         		
         	 }) 
             
             
        	 $("#imgMenuFull").click(function(e){
         		 

   			  $(".detailImg").filter(function(){
                     return $(this).attr("src") == arrImg1[0];          
                  }).css('width','800px').css("height","500px");
   			 	arrImg1=[];
         		
         	 }) 

             //이미지 메뉴바 닫기
         	 $("#imgMenuClose").click(function(e){
         		 
         		 
         		 $("#imgMenuBar").css('top','0').css('left','0').css('display','none');
         		 arrImg1=[];
         		
         	 })
			
             
             //이미지 메뉴바 이미지 삭제
         	 $("#imgMenuDelete").click(function(e){  
         		 
         		 const reName =  
    			  $(".detailImg").filter(function(){
                      return $(this).attr("src") == arrImg1[0];          
                   }).attr('src');
         		 
         		 
         		 
         		  $(".detailImg").filter(function(){
                       return $(this).attr("src") == reName;          
                   }).remove();
    	             
    		       $(".thumbImg").filter(function(){
    		                return $(this).attr("src") == reName;          
    		       }).parent().remove(); 
    		        
    	            $.ajax({
    	           	 type:"GET",
    	         	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
    	         	      data: {reName:reName},
    	         	   success:function(data){
    	         		   
    	         		  var length =  $(".thumbImg").length;
    	         		  
    	        		  if(length == 0 ){
    	        		    	$(".communty-regist-thumb").css("display","none");
    	        		    }
    	         		  
    	         		   
    	         		   $("#imgMenuBar").css('top','0').css('left','0').css('display','none');
    	         		  	arrImg1=[];
    	         	   },
    	         	   error:function(error){
    	         		   
    	         	   }
    	            }) 
    	            
         	 }) 
</script>
</body>
</html>