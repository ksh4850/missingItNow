<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"   %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/resetsys.css">
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   
    <style>
    	.communty-list-section{
    		  margin-top: 150px;
    	}

        .communty-list-div{
            border: 2px solid rgb(119, 94, 238); 
            width: 700px;
            margin-left: 320px;
            margin-top: 40px;
            border-radius: 10px;
        }
        
        
        hr{
        
         border-bottom: 2px solid rgb(119, 94, 238);
         margin-top : 20px
        }

        .communty-list-info{
            margin-top: 10px;
            margin-left: 20px;
            height: 60px;
          

        }
        
        .communty-info{
            width: 300px;
            display: inline-block;
            
           
        }

        .communty-info p{
            margin: 10px;
        }


        .communty-list-info > img{
            width: 60px;
            height: 60px;
            border-radius: 20px;
            /* overflow: hidden; */
            object-fit: cover;
        }
        
      

        .communty-list-imgOne>img {
            margin-top: 10px;
  			 
             width: 680;
             height: 500px;
             /* overflow: hidden; */
              object-fit: cover;
            
        }

        .communty-list-detail{
            margin-top: 10px;
            margin-left: 20px;
            margin-bottom: 10px;
            width: 650px;
            
        }

        .communty-list-imgTwo{
            /* display: inline-block; */
        }

        .communty-list-imgTwo img{
            margin-left: 10px;
            margin-top: 10px;
            width: 330px;
            height: 400px;
            /* overflow: hidden; */
            object-fit: cover;
            
        }
        .communty-list-imgThree{
            margin-top: 10px;
            display: inline-block;
        }

        .communty-list-imgThree>img:nth-child(1){
            margin-left: 10px;
            width: 680px;
            height: 300px;
            object-fit: cover;

        }

        .communty-list-imgThree>img:nth-child(2){
            width: 330px;
            height: 300px;
            margin-top: 10px;
            margin-left: 10px;
            object-fit: cover;
        }
        
        .communty-list-imgThree>img:nth-child(3){
            width: 330px;
            height: 300px;
            margin-top: 10px;
            margin-left: 10px;
            object-fit: cover;
        }
        
         .imgThree-addNum{
        	 display: inline-block;
        	 position: relative;
        }
        
        .imgThree-addNum span{
        	position: absolute;
        	background: rgba(0, 0, 0, 0.72);
        	color: white;
        	top:8px;
        	right:1px;
        	botton:0px;
        	font-size:30px;
        	/* padding-top: 135px;
        	padding-left: 165px;
        	padding-right: 150px;
        	padding-bottom: 135px; */
        	width:330px;
        	height:300px;
   			text-align: center;
   			line-height:300px;

        }
        
        .imgThree-addNum>img{
        	width: 330px;
            height: 300px;
            margin-top: 10px;
            margin-left: 10px;
            background: rgba(0, 0, 0, 0.72);
            object-fit: cover;
        }
        

        

        .communty-list-count{
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .communty-list-count div{
            width: 150px;
            display: inline-block;
            text-align: center;
            
            
        }

        .communty-list-count p {
             display: inline-block; 
           
            font-size: 20px;
            margin-top: 5px;
            margin-left: 10px;
        }

        .xi-heart-o{
            color: rgb(236, 81, 81);
            
        }

        .xi-heart{
            color: rgb(236, 81, 81);
            
        }
        
        .communty-regist-btn1{
            position: relative;
            position:  fixed;
            width: 80px;
            background-color: rgb(119, 94, 238);
            color: white;
            border-radius: 10px ;
           bottom: 80px;
            right: 400px;
            z-index : 3;
            text-align: center;
            font-size: 20px;
            padding: 8px;
        }
        
        .postNo{
        	display:none;
        		
        } 
        
        .postlist-likeStatus{
        	visibility: hidden;
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
    	<c:if test="${!empty sessionScope.loginMember }">
    		<div class="communty-regist-btn1">+글작성</div>
    	</c:if>
    	<div class="communty-list-section">
    	
    	
    	
    	<c:forEach var="post" items="${postList}">
	        <div class="communty-list-div" >
	            <div class="communty-list-info">
	                <img src="${ pageContext.servletContext.contextPath }/resources/images/profile.png" alt="">
	                <div class="communty-info">
	                	<p class="postNo">${post.postNo}</p>
	                    <p><c:out value="${post.user.userId} "></c:out></p>
	                    <p><fmt:formatDate value="${post.postDate }" pattern="yyyy-MM-dd HH:mm:ss"/></p>
	                </div>
	            </div>
	            
	            
	            <hr>
	            
	            
	            <c:if test="${fn:length(post.imgList) eq 1}">
		            <div class="communty-list-imgOne">
		                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[0].reName}" alt="">
		            </div>
		        </c:if>
		        <c:if test="${fn:length(post.imgList) eq 2}">
		           
			            <div class="communty-list-imgTwo">
			                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[0].reName}" alt="" class="">
			                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[1].reName}" alt="" class="">
			            </div>
			            
		        </c:if>
		          <c:if test="${fn:length(post.imgList) eq 3}">
		           
			            <div class="communty-list-imgThree">
			                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[0].reName}" alt="" class="">
			                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[1].reName}" alt="" class="">
			                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[2].reName}" alt="" class="">
			            </div>
			            
		        </c:if>
		        
		         <c:if test="${fn:length(post.imgList) gt 3}">
		           
			            <div class="communty-list-imgThree">
			                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[0].reName}" alt="" class="">
			                <img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[1].reName}" alt="" class="">
			                <div class="imgThree-addNum"><img src="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${post.imgList[2].reName}" alt="" class=""><span>+${fn:length(post.imgList) - 3}</span></div>
			            </div>
			            
		        </c:if>
		        
		        <hr>
		        
	            <div class="communty-list-count" align="center"> 
	            
	            <c:if test="${empty post.likeStatus }">
	                <div ><p class="postlist-likeStatus" >${post.likeStatus }</p><i class="xi-heart-o xi-2x" id="likeBtn"></i><p class="postlist-likes"> <c:out value="${post.postLikes} "></c:out> </p></div>
	             </c:if>
	             <c:if test="${post.likeStatus eq 'N' }">
	                <div ><p class="postlist-likeStatus" >${post.likeStatus }</p><i class="xi-heart-o xi-2x" id="likeBtn"></i><p class="postlist-likes"> <c:out value="${post.postLikes} "></c:out> </p></div>
	             </c:if>
	             <c:if test="${post.likeStatus eq 'Y' }">
	                <div ><p class="postlist-likeStatus" >${post.likeStatus }</p><i class="xi-heart xi-2x" id="likeBtn"></i><p class="postlist-likes"> <c:out value="${post.postLikes} "></c:out> </p></div>
	             </c:if>
	                <div><i class="xi-comment-o xi-2x"></i><p> <c:out value="${post.communtCount}"></c:out> </p></div>
	            </div>
	        </div> 
	        
	      </c:forEach>

        
        </div>
    </section>
    
    <script>
		    $(function(){
				var pageNo = 1;
				
					
				$(window).scroll(function(){   
					
					if($(window).scrollTop() >= $(document).height() - $(window).height()){

						pageNo++;	
						
		
		     			$.ajax({
		     				url : '${pageContext.servletContext.contextPath}/communty/ajaxCommuntyList',
		    		        type : 'get',  
		    		        data : { 
		    		        		pageNo: pageNo
		    		        		},
		    		        success : function(data) {
		    		        	
		    		        	/* console.log(data); */
		    		        	
		    		        	var $listsection = $(".communty-list-section");
		    		        	
		    		        	for(var i in data){
		    		        		
		    		        	
		    		        		 $listdiv = $("<div class='communty-list-div'>");
		    		        		
		    		        		 $listinfo = $("<div class='communty-list-info'>");	
		    		        		 $info = $("<div class='communty-info'>");	
		    		        		
		    		        		 $img1 =  $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/images/profile.png');
		    		        		 $postIdP = $("<p class='postNo'>").text(data[i].postNo);
		    		        		 $nameP = $("<p>").text(data[i].user.userId);
		    		        		 $dateP = $("<p>").text(data[i].postDate);
		    		        		 
		    		        		 $info.append($postIdP).append($nameP).append($dateP);
		    		        	     $listinfo.append($img1).append($info);
		    		        		 $listdiv.append($listinfo);
		    		        		 
		    		        		 $listimgOne = $("<div class='communty-list-imgOne'>");
		    		        		 $listimgTwo = $("<div class='communty-list-imgTwo'>");
		    		        		 $listimgThree = $("<div class='communty-list-imgThree'>"); 
		    		        		
		    		        		
		    		        		
		    		        		 $listcount = $("<div class='communty-list-count' align='center'> ");
		    		        		 $divC1 = $("<div>");
		    		        		 $divC2 = $("<div>");
		    		        		 
		    		        		 $iheart = "";
		    		        		 $likeStatusP = $("<p class='postlist-likeStatus'>").text(data[i].likeStatus);
		    		        		 
		    		        		 if(data[i].likeStatus == 'Y'){
		    		        			 $iheart = $("<i class='xi-heart xi-2x' id='likeBtn' >");
		    		        			
		    		        		 }else if(data[i].likeStatus == 'N'){
		    		        			 $iheart = $("<i class='xi-heart-o xi-2x' id='likeBtn'>");
		    		        		 }else{
		    		        			 $iheart = $("<i class='xi-heart-o xi-2x' id='likeBtn'>");
		    		        		 }
		    		        			
		    		        		 
		    		        		 
		    		        		 $icomment = $("<i class='xi-comment-o xi-2x'>");
		    		        		 
		    		        		 $pLike = $("<p class='postlist-likes'>").text(data[i].postLikes);
		    		        		 $pcount = $("<p>").text(data[i].communtCount);
		    		        		 
		    		        		 $divC1.append($likeStatusP).append($iheart).append($pLike);
		    		        		 $divC2.append($icomment).append($pcount);
		    		        		 
		    		        		 $listcount.append($divC1).append($divC2);
		    		        		 $listdiv.append($listinfo).append($listcount);
		    		        		
		    		        		 if(data[i].imgList.length == 1 ){
		    		        			 $Img = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[0].reName).css("width","680px").css("height","500px").css("margin-left",'10px');
		    		        			 $listimgOne.append($Img);
		    		        			 
		    		        			 $listdiv.append($listinfo).append("<hr>").append($listimgOne).append("<hr>").append($listcount);
		    		        			 
		    		        		 }else if(data[i].imgList.length == 2){
		    		        			 $Img1 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[0].reName);
		    		        			 $Img2 = $('<img >').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[1].reName);
		    		        			 $listimgTwo.append($Img1).append($Img2);
		    		        			 
		    		        			 $listdiv.append($listinfo).append("<hr>").append($listimgTwo).append("<hr>").append($listcount);
		    		        			 
		    		        		 }else if(data[i].imgList.length == 3){
		    		        			 $Img1 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[0].reName);
		    		        			 $Img2 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[1].reName);
		    		        			 $Img3 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[2].reName);
		    		        			 $listimgThree.append($Img1).append($Img2).append($Img3);
		    		        			 
		    		        			 $listdiv.append($listinfo).append("<hr>").append($listimgThree).append("<hr>").append($listcount);
		    		        			 
		    		        		 }else if(data[i].imgList.length > 3){
		    		        			 $Img1 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[0].reName);
		    		        			 $Img2 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[1].reName);
		    		        			 
		    		        			 $addNum = $("<div class='imgThree-addNum'>");
		    		        			 $Img3 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/uploadFiles/'+data[i].imgList[2].reName);
		    		        			 $span1 = $("<span>").text("+" + (data[i].imgList.length - 3));
		    		        			 
		    		        			 $addNum.append($Img3).append($span1);
		    		        			 $listimgThree.append($Img1).append($Img2).append($addNum);
		    		        			 
		    		        			 /* $listdiv.append($listinfo).append($listimgThree).append($listcount); */
		    		        			 $listdiv.append($listinfo).append("<hr>").append($listimgThree).append("<hr>").append($listcount);
		    		        		 } 
		    		        		 
		    		        		
		    		        		 
		    		        		 $listsection.append($listdiv);
		    		        		 
		    		        		
		    		        	}
		    		        		
		    		        	
		    		        },
		    		        error : function(error) {
		    		        	
		    		        }
		     			});		
					}
				})		
			});	
		    
		    
		    $(".communty-regist-btn1").click(function(){
		    	location.href="${ pageContext.servletContext.contextPath }/communty/communtyRegist";
		    })
		    
		    $(document).on('click',".communty-list-div" , function(){
		    	var postNo = $(this).find('.postNo').text();
		    	
		    	
		    	
		    	 location.href="${ pageContext.servletContext.contextPath }/communty/communtyDetail?postNo=" +postNo; 
		    })
		    
		      $(document).on('click',"#likeBtn" , function(e){
		    	  
		    	  e.stopPropagation();
		    	  
		    	  var likeStatus = $(this).parent().children('.postlist-likeStatus').text();;
		    	  var $like = $(this).parent().children('.postlist-likes');
		    	  var postNo = $(this).parents(".communty-list-div").find('.postNo').text();
		    	  var $likeItg = $(this);
		    	  
		    	  var $login = "${sessionScope.loginMember}";
		    	 
		      	   if($login != ""){
		      		
		    	  if(likeStatus == 'Y' || likeStatus == 'N'){
		    		 
		    			$.ajax({
	                 		url : '${pageContext.servletContext.contextPath}/communty/ajaxLikeModify',
	         		        type : 'get',  
	         		        data : { 
	         		        		postNo: postNo,
	         		        		likeStatus : likeStatus
	         		        		
	         		        		},
	         		        success : function(data) {
	         		        	
	         		        	if(likeStatus == 'Y'){
	         		        		 $likeItg.attr('class','xi-heart-o xi-2x');
	         		        		 $likeItg.parent().children('.postlist-likeStatus').text('N');
	         		        	}else{
	         		        		 $likeItg.attr('class','xi-heart xi-2x');
	         		        		 $likeItg.parent().children('.postlist-likeStatus').text('Y');
	         		        	}
	         		        	  
	         		        	 $like.text(data);
	         		        	 
	         		      
	         		        	
	         		        	
	         		        },
	         		        error: function(error){
	         		        	
	         		        }
	                 	}) 
		    		  
		    	  }else{
		    		 
		    		  
		    		  $.ajax({
	                 		url : '${pageContext.servletContext.contextPath}/communty/ajaxLikeinsert',
	         		        type : 'get',  
	         		        data : { 
	         		        		postNo: postNo,
	         		        		
	         		        		},
	         		        success : function(data) {
	         		        	
	         		        	 $likeItg.attr('class','xi-heart xi-2x');
	         		        	 $likeItg.parent().children('.postlist-likeStatus').text('Y');
	         		        	 $like.text(data);
	         		        	 
	         		      
	         		        	
	         		        	
	         		        },
	         		        error: function(error){
	         		        	
	         		        }
	                 	}) 
		    		  
		    		  
		    		  
		    	  }
		    	  
		      	  } 
		    })
		    
		    
    
    </script>
</body>
</html>