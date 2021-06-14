<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/resetsys.css">
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <title>Document</title>

    <style>
        .system-communtyRegist-head{
            font-size: 35px;
            margin-left: 300px;
            width: 800px;
            margin-top: 150px;
            border-bottom: 1px solid rgb(119, 94, 238);
            color: rgb(119, 94, 238);
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
        margin-top: 30px;
        margin-left: 300px;
        }
        
         .communty-regist-bar input[type="button"]{
         	background-color: rgb(119, 94, 238);
            color: white;
            border-radius: 10px;
            padding: 8px;
         }


        .communty-regist-datail{
            margin-top: 20px;
            margin-left: 300px;
            border: 2px solid rgb(119, 94, 238);
            width:800px;
            height:600px;
            overflow-y: auto; 
            outline-style: none;
            float: left; 
            /* position: absolute;
            z-index:1; */
          
             
            
        }
        
        .communty-regist-datail *{
        	margin : 5px;
        	
        }


        textarea{
            display: none;
            overflow-y: auto;
            width: 800px;
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
            float: left;
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

        
 

    </style>
</head>
<body>
    <header>
	<jsp:include page="../common/header.jsp"/>

    </header>

    <aside>

    </aside>
    <section>
   
        <div class="system-communtyRegist-head">커뮤니티 등록</div>

        <form action="${ pageContext.servletContext.contextPath }/communty/communtyRegist" method="post" id="communtyRegist">
            <div class="communty-regist-info">
                <table>
                    <tr>
                        <td>주거형태</td>
                        <td>
                            <select name="housingType" id="housingType">
                                <option value="" selected>주거형태</option>
                                <option value="아파트">아파트</option>
                                <option value="주택">주택</option>
                                <option value="빌라">빌라</option>
                                <option value="오피스텔">오피스텔</option>
                                <option value="원룸">원룸</option>
                                <option value="투룸">투룸</option>
                                <option value="옥탑방">옥탑방</option>
                                <option value="이색공간">이색공간</option>
                                <option value="상업공간">상업공간</option>
                                <option value="기타">기타</option>
                            </select>
                        
                            <select name="acreage" id="acreage">
                                <option value="" selected>평수</option>
                                <option value="10평대">10평대</option>
                                <option value="20평태">20평대</option>
                                <option value="30평대">30평대</option>
                                <option value="40평대">40평대</option>
                                <option value="50평대">50평 이상</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>거주형태</td>
                        <td>
                            <select name="residenceType" id="residenceType">
                                <option value=""> 거주형태</option>
                                <option value="혼자사는집">혼자사는집</option>
                                <option value="신혼집">신혼집</option>
                                <option value="반려동물과 함께 사는 집">반려동물과 함께 사는 집</option>
                                <option value="룸메이트와 함꼐 사는 집">룸메이트와 함꼐 사는 집</option>
                                <option value="기타">기타</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>인테리어 비용</td>
                        <td>
                            <select name="cost" id="cost">
                                <option value="">가구/소품비용</option>
                                <option value="50만원 미만">50만원 미만</option>
                                <option value="100만원 미만">100만원 미만</option>
                                <option value="150만원 미만">150만원 미만</option>
                                <option value="300만원 미만">300만원 미만</option>
                                <option value="500만원 미만">500만원 이상</option>
                               
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            
            <textarea name="postDetail" id="postDetail" cols="30" rows="10"></textarea>
            
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
			  

            <div class="communty-regist-btn">
                <input type="button" name="" id="postCan" value="등록취소">
                <input type="button" name="" id="postSubmit" value="등록하기">
            </div>

				<input type="text" name="reName" id="reName" >
				<input type="text" name="originName" id="originName" >
				<input type="file" name="imgfile" id="imgfile" multiple>
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
     
    </section>
    
    
    <script >
    
    	
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
    	
    	
    	
    	$("#postSubmit").click(function(){
       	 
       	 var $re =  $("#detail").html();
       	 $("#postDetail").val($re); 
       	 var txt = $("#postDetail").val();
       	 
       	var reNameArr = new Array() ;
       	var originNameArr = new Array() ;
      	 $(".detailImg").filter(function(){
      		var reName = $(this).attr("src");
      		 var originName = $(this).attr("data-filename"); 
      		var re = reName.substring(reName.lastIndexOf("/"));
      		
      		
/*       		reNameArr.push(re.substring(1));         
      		 originNameArr.push(originName);     */
        	}) 
        
/* 	     	console.log(reNameArr);
	     	 console.log(originNameArr);  */
       	 
       	  $("#reName").val(reNameArr);
       	  $("#originName").val(originNameArr); 
       	 
       	  if(reNameArr.length > 0){
       		$("#communtyRegist").submit();
       	  }else{
       		  alert("사진을 등록해주세요");
       	  }
       	  
       	 
       	 

        })
        
        $("#postCan").click(function(){
        	
        	 var thumbImgArr = new Array();         	         			
			 var thumbImgLength =  $(".thumbImg").length;
			 
			 console.log(thumbImgLength)
			 
			 
			 for(var i = 0 ; i < thumbImgLength ; i++){
				 thumbImgArr.push( $('.thumbImg').eq(i).attr('src') );
  			}
			 
			  for(i = 0 ; i < thumbImgLength ; i++){
				 keyImgDelete(thumbImgArr[i]);
			 } 
				
				
			location.href="${ pageContext.servletContext.contextPath}/communty/communtyList";	
        	
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
				    	
				    	/* console.log(imgsrc); */
				    	
				    	arrImg1.unshift(imgsrc);
				    	
				    	/* console.log(arrImg1); */
				    	
				    	
				    		
				    	
		            	 var isTrue = false;
		            	 
		            	 x = e.pageX;
		                 y = e.pageY; 
		                 
		                 
		                 $("#imgMenuBar").css('top',y).css('left',x).css('display','inline-block'); 
		                 
 						
				    	
				             
				    });
    		
    		
    		
    		//이미지 매뉴바 다른대 누르면 닫기
    		$('.communty-regist-datail').click(function(){
    			$("#imgMenuBar").css('top','0').css('left','0').css('display','none');
    		})
    		
    		//이미지 매뉴바 왼쪽정렬
    		$("#imgMenuLeft").click(function(e){
       		 
				
    		 
    			  $(".detailImg").filter(function(){
                      return $(this).attr("src") == arrImg1[0];          
                   }).css('float','left');
     		
    			  arrImg1=[];
     		
     	 	}) 
     	 
     	 	//이미지 메뉴바 센터
     	 	$("#imgMenucenter").click(function(e){
        		 
  			  $(".detailImg").filter(function(){
                    return $(this).attr("src") == arrImg1[0];          
                 }).css('margin-left','auto').css('margin-right','auto');
         		
  			 	arrImg1=[];
         		
         	 }) 
         	 
         	 $("#imgMenuRight").click(function(e){
        		 
         		//이미지 매뉴바 이미지 왼쪼 정렬
   			  $(".detailImg").filter(function(){
                     return $(this).attr("src") == arrImg1[0];          
                  }).css('float','right');
         		
   			 arrImg1=[];
         		
         	 }) 
    		
    		//이미지 매뉴바 50%
    		$("#imgMenu50").click(function(e){
        		 
    			$(".detailImg").filter(function(){
                    return $(this).attr("src") == arrImg1[0];          
                 }).css('width','250px').css("height","250px");
         		
    			 arrImg1=[];
         		
         	 }) 
             
            //이미지 매뉴바 원본 크기 
			$("#imgMenu100").click(function(e){
         		 
         		
         		 
					$(".detailImg").filter(function(){
	                    return $(this).attr("src") == arrImg1[0];          
	                 }).css('width','500px').css("height","500px");
					 arrImg1=[];
         		
         	 }) 
             
             //이미지 매뉴바 풀크기
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
    		        
    	    		/*  console.log(reName); */
    	            $.ajax({
    	           	 type:"GET",
    	         	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
    	         	      data: {reName:reName},
    	         	   success:function(data){
    	         		   
    	         		   console.log(data);
    	         		   
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
       
			
    	 //키업 이미지 관련
	 	 $(".communty-regist-datail").keyup(function(e){
	 		 
	 		 
	            var detailImgLength = $('.detailImg').length;
				 /* var detailImgArr = new Array();    */      			
				 var thumbImgArr = new Array();         			
				 var thumbImgLength =  $(".thumbImg").length;
	     		 
				 	//딜리트 키로 이미지 지울때
	     		 if(e.keyCode == 46){
	     	
	     			 if(detailImgLength != thumbImgLength && thumbImgLength > 0){
	     				 
	     				for(var i = 0 ; i < thumbImgLength ; i++){
	     					thumbImgArr.push( $('.thumbImg').eq(i).attr('src') );
	         				 
	         			}
	     				
	     				for(var i = 0; i < detailImgLength ; i++ ){
	     					var img = thumbImgArr.indexOf($('.detailImg').eq(i).attr('src'));
	     					thumbImgArr.splice(img,1);
	     				}
	     				
	     				keyImgDelete(thumbImgArr[0]);
	     				 
	     			 }
	         			
	     			 
	     			
	     			 
	     			
	     		 }
	     	    //백스페이스로 이미지 지울때
	     		if(e.keyCode == 8){
	     			 
	     			 if(detailImgLength != thumbImgLength && thumbImgLength > 0){
	     				 
	         				for(var i = 0 ; i < thumbImgLength ; i++){
	         					thumbImgArr.push( $('.thumbImg').eq(i).attr('src') );
		         				 
		         			}
	         				
	         				for(var i = 0; i < detailImgLength ; i++ ){
	         					var img = thumbImgArr.indexOf($('.detailImg').eq(i).attr('src'));
	         					thumbImgArr.splice(img,1);
	         				}
	         				
	         				keyImgDelete(thumbImgArr[0]);
	         				 
	         			 }
	     			 
	     		 }
	 	 })
	 	 
	 	 
	 	 // 키이벤트 img삭제
	 	 function keyImgDelete(re){
			
			
			   var reName =  re;
			
	    	   $(".thumbImg").filter(function(){
		                return $(this).attr("src") == reName;          
		       }).parent().remove(); 
		        
	    		 
	            $.ajax({
	           	 type:"GET",
	         	   	  url: "${ pageContext.servletContext.contextPath}/communty/ajaxDelete",
	         	      data: {reName:reName},
	         	   success:function(data){
	         		   
	         		   console.log(data);
	         		   
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
		}
    	

        
        
    </script>
</body>
</html>