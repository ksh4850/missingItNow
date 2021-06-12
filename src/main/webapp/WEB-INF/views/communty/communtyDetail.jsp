<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
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
        .communty-detail-div{
            width: 700px;
            /* border: 2px solid rgb(119, 94, 238); */
            margin-left: 250px;
            margin-top: 130px;
        }

        .communty-detail-header{
            margin-top: 10px;
            margin-left: 80px;
            height: 60px;
           

        }

        .communty-detail-header > img{
            width: 60px;
            height: 60px;
            border-radius: 20px;
            overflow: hidden;
        }
        
        .communty-info{
            width: 300px;
            display: inline-block;
           
        }

        .communty-info p{
            margin: 10px;
            
        }

        .communty-info2{
            border: 2px solid rgb(119, 94, 238);
            margin: 20px;
            margin-left: 20px;
            padding: 7px;
            border-radius: 10px;
        }

        .communty-info2 td{
            padding: 5px;
        }
        

         .communty-detail-detail > img{
            margin-top: 10px;
            margin-left: 10px;
        } 
        
        
        .communty-detail-detail{
			/* border: 2px solid rgb(119, 94, 238); */
            width: 800px;
            margin-top: 10px;
           
        }

        .communty-detail-contents{
            margin-top: 10px;
            width: 650px;
            margin-left: 25px;
        }

        .communty-comment-count{
            margin: 20px;
        }

        .communty-comment-count div{
            width: 80px;
            display: inline-block;
            text-align: center;
            
            
        }

        .communty-comment-count p {
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

        .communty-comment-regist input[type="text"]{
            border: 1px solid rgb(119, 94, 238);
            line-height: 2;
            margin-left: 80px;
            width: 400px;
        }


        .communty-comment-regist input[type="button"]{
            background-color:  rgb(119, 94, 238);
            line-height: 2;
            border-radius: 5px;
            color: white;
            margin-left: 10px;
            width: 80px;
        }

        .communty-comment-div{
            margin-top: 20px;
            margin-left: 20px;
        }

        .communty-comment{
            border-bottom: 2px solid rgb(119, 94, 238);
            width: 650px;

        }


        .communty-comment img{
            width: 40px;
            height: 40px;
            border-radius: 10px;
            margin: 10px;
        }

        .communty-comment p{
            display: inline-block;
            margin-top: 20px;
        }

        .comment-detail{
            margin-left: 20px;
        }

        .communty-comment input[type="button"]{
            background-color:  rgb(119, 94, 238);
            line-height: 2;
            border-radius: 5px;
            color: white;
            margin-left: 530px;
            margin-top: 10px;
            margin-bottom: 10px;
            width: 80px;

        }


        .response-regist{
            
            width: 630px;
            background-color: rgb(223, 218, 245);
             display: none; 
             padding: 10px;
        }


        .response-regist input[type="text"]{
            border: 1px solid rgb(119, 94, 238);
            line-height: 2;
            margin-top: 10px;
            width: 400px;
        }


        .response-regist input[type="button"]{
            background-color:  rgb(119, 94, 238);
            line-height: 2;
            border-radius: 5px;
            color: white;
            margin-left: 10px;
            width: 80px;
            
        }

        .response-regist i{
            margin-top: 20px;
        }


        .communty-response{
            background-color: rgb(223, 218, 245);
            padding-top: 10px;
            padding-bottom:10px ;
            width: 650px;
            

        }
        .communty-response i{
           margin-top: 20px;
        }


        .communty-response img{
            width: 40px;
            height: 40px;
            border-radius: 10px;
            margin-top: 10px;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .communty-response p{
            display: inline-block;
            margin-top: 20px;
        }

        .comment-response{
            margin-left: 20px;
        }

        .communty-response-div{
            display: none;
        }
        
         .communty-comment-div{
        	margin-bottom: 70px;
        }
        
        .modify-comment input[type="text"]{
             margin-top : 8px;
             line-height: 2;
             width:400px;
        	 border: 1px solid rgb(119, 94, 238);
        }
        
        .modify-comment input[type="button"]{
        	background-color:  rgb(119, 94, 238);
            line-height: 2;
            border-radius: 5px;
            color: white;
            margin-left: 15px;
            width: 60px;
        }
        
        .pagingArea{
         margin-left: 315px;
        }
        
          .pagingArea button{
         	border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }
        
        .postDetatil-comtNo{
        	visibility: hidden;
        	margin-left: 130px;
        }
        
        .postDetatil-reComtNo{
        	visibility: hidden;
        	margin-left: 120px;
        }
        
        .postDetail-likeStatus{
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
        <div class="communty-detail-div">
            <div class="communty-detail-header">
               	 <img src="${ pageContext.servletContext.contextPath }/resources/images/profile.png" alt="">
                <div class="communty-info">
                    <p><c:out value="${post.user.userId}"></c:out></p>
                    <p><fmt:formatDate value="${post.postDate}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
                    
                </div>
            </div>
			
			 <c:if test="${!empty post.housingType  or !empty post.acreage or !empty post.residenceType or !empty post.cost}">
	            <div class="communty-info2">
	                <table>
	                <c:if test="${!empty post.housingType  or !empty post.acreage }">
	                    <tr>
	                        <td width="100px";>기본정보</td>
	                        <td>${post.housingType } / ${post.acreage}  </td>
	                    </tr>
	                </c:if>
	                 <c:if test="${!empty post.residenceType }">
	                    <tr>
	                        <td width="100px">주거형태</td>
	                        <td><c:out value="${post.residenceType }"/></td>
	                    </tr>
	                  </c:if>
	                   <c:if test="${!empty post.cost }">   
	                    <tr>
	                        <td width="100px">가구/소품비</td>
	                        <td><c:out value="${post.cost }"/></td>
	                    </tr>
	                   </c:if>
	                </table>
	            </div>
		 	</c:if>
            <div class="communty-detail-detail">
                ${post.postDetail }

        		
            </div>
			
			<br clear="both">

            <div class="communty-comment-count" > 
            	 <c:if test="${empty post.likeStatus }">
	                <div ><i class="xi-heart-o xi-2x" id="likeBtn"></i><p class="postlist-likes"> <c:out value="${post.postLikes} "></c:out> </p><p class="postDetail-likeStatus" >${post.likeStatus }</p></div>
	             </c:if>
	             <c:if test="${post.likeStatus eq 'N' }">
	                <div ><i class="xi-heart-o xi-2x" id="likeBtn"></i><p class="postlist-likes"> <c:out value="${post.postLikes} "></c:out> </p><p class="postDetail-likeStatus" >${post.likeStatus }</p></div>
	             </c:if>
	             <c:if test="${post.likeStatus eq 'Y' }">
	                <div ><i class="xi-heart xi-2x" id="likeBtn"></i><p class="postlist-likes"> <c:out value="${post.postLikes} "></c:out> </p><p class="postDetail-likeStatus" >${post.likeStatus }</p></div>
	             </c:if>
                <div><i class="xi-comment-o xi-2x"></i><p id="communtCount"><c:out value="${post.communtCount }"/></p></div>
            </div>
			<c:if test="${!empty sessionScope.loginMember }">
             <div class="communty-comment-regist">
                <input type="text" id="commentText"><input type="button" value="등록하기" id="commentRegistBtn">
             </div>
            </c:if>
            
            <c:if test="${empty sessionScope.loginMember }">
             <div class="communty-comment-regist">
                <input type="text" value="로그인이 필요한 서비스 입니다." readonly><input type="button" value="등록하기">
             </div>
            </c:if>

             <div class="communty-comment-div">
			
			<c:forEach var="comm" items="${post.commentList}">
                <div class="communty-comment">
                    <img src="${ pageContext.servletContext.contextPath }/resources/images/profile.png" alt="">
                    <p><c:out value="${comm.user.userId }"></c:out></p>
                    <p class="postDetatil-comtNo">${comm.comtNo}</p>
                    <p><fmt:formatDate value="${comm.comtDate }" pattern="yyyy-MM-dd HH:mm:ss"/></p>
                    <c:if test="${sessionScope.loginMember.userNo eq  comm.user.userNo }">
                    <p id="commentModifyBtn">수정 / </p> <p id="commentDeleteBtn">삭제</p>
                    </c:if>
                    <div class="comment-detail1">
              			<c:out value="${comm.comtDetail }"></c:out>
                    </div>

                     <input type="button" value="답글달기" class="responseBtn">
                     

               
               
               <div class="communty-response-div" >
              
               <c:if test="${!empty comm.reCommentList }">
               
               <c:forEach var="reco" items="${comm.reCommentList}"> 
                            <div class="communty-response" >
                            
                                <i class="xi-subdirectory"></i><img src="${ pageContext.servletContext.contextPath }/resources/images/profile.png" alt="">
                                <p><c:out value="${reco.user.userId }"></c:out></p>
                                <p class="postDetatil-reComtNo"><c:out value="${reco.reComtNo }"></c:out></p>
                                <p><fmt:formatDate value="${reco.reComtDate  }" pattern="yyyy-MM-dd HH:mm:ss"/> </p>
                                 <c:if test="${sessionScope.loginMember.userNo eq  reco.user.userNo }">
	                             	<p id="responseModifyBtn">수정 / </p><p id="responseDeleteBtn">삭제</p>	
	                             </c:if>
                                <div class="comment-detail">
                                 <c:out value="${reco.reComtDetail }"></c:out>
                                </div>  
                            </div> 
                     		
                 </c:forEach>
              	</c:if>     
				
				</div>
						<c:if test="${!empty sessionScope.loginMember }">
	                        <div class="response-regist">
	                                <i class="xi-subdirectory"></i><input type="text" class="reposeRegistText"><input type="button" id="reposeRegistBtn" value="등록하기">
	                        </div>
                    	</c:if>
                    	<c:if test="${empty sessionScope.loginMember }">
	                        <div class="response-regist">
	                                <i class="xi-subdirectory"></i><input type="text" value="로그인이 필요한 서비스 입니다." readonly><input type="button" value="등록하기">
	                        </div>
                    	</c:if>
                
				
             </div>
		</c:forEach>




        </div>

     </div>     
		
		<c:if test="${!empty post.commentList}">
		<div class="pagingArea" >
			<button id="startPage"><<</button>
			
					<c:if test="${ page.pageNo == 1 }">
						<button disabled><</button>
					</c:if>
					 <c:if test="${ page.pageNo > 1 }">
						<button id="prevPage"><</button>
					</c:if>
			
					<c:forEach var="p" begin="${ page.startPage }" end="${ page.endPage }" step="1">
					<c:if test="${ page.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ page.pageNo ne p }">
						<button id="pageActionBtn"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ page.pageNo == page.maxPage }">
						<button disabled>></button>	
					</c:if>
					<c:if test="${ page.pageNo < page.maxPage }">
						<button id="nextPage">></button>
					</c:if> 
			
					<button id="maxPage">>></button>
		</div>
		</c:if>
    <br>
			
	
       
    </section>
    
    


    <script>
    
   
    var Page = 0;
    var maxPage = 0;
    	
    	
    	
    	$(document).on('click',"#startPage" , function(){
    		
    		var postNo="${post.postNo}";
    		var currentPage = 1 ;
    		var isTrue = false;

    		
    		commentListPage(currentPage);
    		
    		
    	})
    	
    	$(document).on('click',"#pageActionBtn" , function(){
    		
    		var postNo="${post.postNo}";
    		var currentPage =  $(this).text();

    		
    		commentListPage(currentPage);
    		
    	})
    	
    	$(document).on('click',"#maxPage" , function(){
    		var postNo="${post.postNo}";
    		var currentPage = maxPage;
    		
    		commentListPage(currentPage);
		
    	})
    	
    	$(document).on('click',"#prevPage" , function(){
    		var postNo="${post.postNo}";
    		var currentPage = Page - 1 ;
    		
    		commentListPage(currentPage);
		
		})
	
		$(document).on('click',"#nextPage" , function(){
			var postNo="${post.postNo}";
			var currentPage = Page + 1 ;
		
			commentListPage(currentPage);
		
		})
    	
    	
    	function commentListPage(currentPage){
    		
    		var postNo="${post.postNo}";
    		var isTrue = false;
    		
    		if(isTrue == true){ 
      			 return; 
      			 } 
      		 	isTrue = true;
    		
    		$.ajax({
          		 url:'${pageContext.servletContext.contextPath}/communty/ajaxCommentPage',
          		 type: 'get',
          		 data:{postNo:postNo,
          			currentPage:currentPage},
          		 success : function(data) {
          			    $(".communty-comment-div").html("");
          			 	comment(data.comments);
      		        	pageBtn(data.page)
      		        	
      		        	Page = data.page.pageNo;
      		        	maxPage = data.page.maxPage; 
      		        },
      		        error: function(error){
      		        	
      		        }
          	 }) 
    		
    	}
    	
    
    
    //답글창 열기 
    $(document).on('click',".responseBtn" , function(){
       

            if( $(this).parent().children(".response-regist").css("display") == "none"){
                
                $(this).parent().children(".response-regist").css("display","inline-block");
                $(this).parent().children(".communty-response-div").css("display","inline-block");
            }else{
                $(this).parent().children(".response-regist").css("display","none");
                $(this).parent().children(".communty-response-div").css("display","none");
            }
            
        })
        
        //댓글 달기
         $("#commentRegistBtn").click(function(){
        	
        	/* var postNo = $(".communty-detail-header").attr('id'); */
			var postNo = "${post.postNo}"; 
        	var commentText = $("#commentText").val();
        	
        	if(commentText){
        	$.ajax({
        		url : '${pageContext.servletContext.contextPath}/communty/ajaxcommentRegist',
		        type : 'get',  
		        data : { 
		        		postNo: postNo ,
		        		commentText:commentText
		        		},
		        success : function(data) {
		        	
		            if(data > 0){
			        	$('#commentText').val("");
			        	/* $("#commentText").text(""); */
			        	$(".communty-comment-div").html("");
			        	commentListPage(1);
			        	 commentCountAjax();  
		         	 }else{
		         		 alert("댓글 작성에 실패 하셨습니다.")
		         	 }
		        },
		        error: function(error){
		        	
		        }
        	})
        	
        	}
        	
        })  
        
        //답글달기
         $(document).on('click',"#reposeRegistBtn" , function(){
        	 
        	 
        	 var postNo = "${post.postNo}"; 
        	 var comtNo = $(this).parent().parent().children(".postDetatil-comtNo").text();
        	 var reposeRegistText =  $(this).parent().find(".reposeRegistText").val();

        	 console.log(comtNo)
        	  if(reposeRegistText){
             	$.ajax({
             		url : '${pageContext.servletContext.contextPath}/communty/ajaxresponseRegist',
     		        type : 'get',  
     		        data : { 
     		        		postNo: postNo,
     		        		comtNo : comtNo ,
     		        		reposeRegistText : reposeRegistText
     		        		},
     		        success : function(data) {
     		        	
     		        	
     		        	if(data > 0){
     		        	 $(".communty-comment-div").html("");
     		        	
     		        	commentListPage(Page);
     		        	commentCountAjax();
     		        	}else{
   		         		 alert("대댓글 작성에 실패 하셨습니다.")
   		         	 }
     		        	
     		        },
     		        error: function(error){
     		        	
     		        }
             	})
             	
             	} 
        	 
        	 
         })
         
         //댓글 삭제
          $(document).on('click',"#commentDeleteBtn" , function(e){
        	 var postNo = "${post.postNo}"; 
        	 var comtNo = $(this).parent().children(".postDetatil-comtNo").text();
        	 /* console.log(postNo);
        	 console.log(comtNo); */
        	 e.stopPropagation();
        	 
        	 
             	$.ajax({
             		url : '${pageContext.servletContext.contextPath}/communty/ajaxcommentDelete',
     		        type : 'get',  
     		        data : { 
     		        		postNo: postNo,
     		        		comtNo : comtNo 
     		        		},
     		        success : function(data) {
     		        	
     		        	if(data > 0){
        		        	 $(".communty-comment-div").html("");
        		        	 commentListPage(Page);
        		        	 commentCountAjax();
        		        }else{
      		         		 alert("댓글 삭제에 실패 하셨습니다.")
      		         	 }
     		        	
     		        	
     		        },
     		        error: function(error){
     		        	
     		        }
             	})
             	
             	
        	 
        	 
         })
         
         
         //답글삭제
          $(document).on('click',"#responseDeleteBtn" , function(e){
        	 var postNo = "${post.postNo}"; 
        	 /* var reComtNo = $(this).parents(".communty-response").attr('id'); */
        	 var reComtNo = $(this).parent().children(".postDetatil-reComtNo").text();
        	 
        	 e.stopPropagation();
        	 
        	 
             	$.ajax({
             		url : '${pageContext.servletContext.contextPath}/communty/ajaxresponseDelete',
     		        type : 'get',  
     		        data : { 
     		        		postNo: postNo,
     		        		reComtNo : reComtNo 
     		        		},
     		        success : function(data) {
     		        	
     		        	 console.log(data); 
     		        	 
     		        	if(data > 0){
	       		        	 $(".communty-comment-div").html("");
	       		        	 commentListPage(Page);
	       		        	 commentCountAjax();
       		        	}else{
     		         		 alert("대댓글 삭제에 실패 하셨습니다.")
     		         	 }
     		        	
     		        	
     		        },
     		        error: function(error){
     		        	
     		        }
             	})
             	
             	
        	 
        	 
         })
         
         //댓글 수정
           $(document).on('click',"#commentModifyBtn" , function(e){
        	 var postNo = "${post.postNo}"; 
        	 var comtNo = $(this).parents(".communty-comment").children(".postDetatil-comtNo").text();
        	 var detail = $(this).parent().find(".comment-detail1").text();
        	 var isTrue = false;
        	 
        	 e.stopPropagation();

        	 

        	 $modiv = $('<div class="modify-comment">');
        	 $motext = $('<input type="text" id="modifyCommentText" value="'+ detail.trim() +'">');
        	 $registBtn = $('<input type="button" id="modifyCommentBtn" value="수정하기">');
        	 $cancelBtn = $('<input type="button" id="modifyCancelBtn" value="수정 취소">');
        	 
        	 
        	 var $de = $(this).parent().find(".comment-detail1");
        	 $de.html("");
        	 $modiv.append($motext).append($registBtn).append($cancelBtn)
        	 $de.append($modiv);
        	 
        	
        	 
        	 $(document).on('click',"#modifyCommentBtn" , function(e){
        		 
        		 if(isTrue == true){ 
        			 return; 
        			 } 
        		 isTrue = true;

        		
        		 
        		 var commentText = $(this).parent().find("#modifyCommentText").val();
        		 
        		if(commentText){
					
        			
                  	$.ajax({
                 		url : '${pageContext.servletContext.contextPath}/communty/ajaxcommentModify',
         		        type : 'get',  
         		        data : { 
         		        		postNo: postNo,
         		        		comtNo : comtNo,
         		        		commentText : commentText
         		        		},
         		        success : function(data) {
         		        	
         		        	if(data > 0){
         		        	 $de.html("");
           		        	 $(".communty-comment-div").html("");
           		        	 commentListPage(Page);
	           		        	
           		        	}else{
         		         		 alert("댓글 수정에 실패 하셨습니다.")
         		         	 }
         		        	

         		        	
         		        	
         		        },
         		        error: function(error){
         		        	
         		        }
                 	}) 
        		}
        		
        	 })
        	 
        	  $(document).on('click',"#modifyCancelBtn" , function(e){
        		  e.stopPropagation();
        		  $de.html("");
        		  $de.text(detail);
        		 
        		 
        	 })
        	 
        	 
         })
         
         //답글 수정
          $(document).on('click',"#responseModifyBtn" , function(e){
        	 
        	 var postNo = "${post.postNo}"; 
        	 var reComtNo = $(this).parent().children(".postDetatil-reComtNo").text();
        	 var detail = $(this).parent().find(".comment-detail").text();
        	 var isTrue = false;
        	
        	 e.stopPropagation();

        	 
        	 
        	 $modiv = $('<div class="modify-comment">');
        	 $motext = $('<input type="text" id="modifyCommentText" value="'+ detail.trim() +'">');
        	 $registBtn = $('<input type="button" id="modifyResponseBtn" value="수정하기">');
        	 $cancelBtn = $('<input type="button" id="modifyCancelBtn" value="수정 취소">');
        	 
        	 
        	 var $de = $(this).parent().find(".comment-detail");
        	 $de.html("");
        	 $modiv.append($motext).append($registBtn).append($cancelBtn)
        	 $de.append($modiv);
        	 
        	
        	 
         	 $(document).on('click',"#modifyResponseBtn" , function(e){
         		 
         		if(isTrue == true){ 
       			 return; 
       			 } 
       		 	isTrue = true;
        		 
        		 e.stopPropagation();
        		 var commentText = $(this).parent().find("#modifyCommentText").val();
        		 
        		 
        		if(commentText){

                  	$.ajax({
                 		url : '${pageContext.servletContext.contextPath}/communty/ajaxresponseModify',
         		        type : 'get',  
         		        data : { 
         		        		postNo: postNo,
         		        		reComtNo : reComtNo,
         		        		commentText : commentText
         		        		},
         		        success : function(data) {
         		        	console.log(data);
         		       		if(data > 0){
          		        	 $(".communty-comment-div").html("");
          		        	  commentListPage(Page);
	           		        	
          		        	}else{
        		         		 alert("대댓글 수정에 실패 하셨습니다.")
        		         	 }
         		        	
         		        },
         		        error: function(error){
         		        	
         		        }
                 	}) 
        		}
        	 })
        	 
        	  $(document).on('click',"#modifyCancelBtn" , function(e){
        		  e.stopPropagation();
        		  $de.html("");
        		  $de.text(detail);
        		 
        		 
        	 }) 
        	 
        	 
         })
        
        // 댓글이 추가 삭제 될때 마다 댓글 수 업데이트 ajax
       function commentCountAjax(){
    	
    	var postNo ="${post.postNo}";
    		
	    	$.ajax({
	    		url:'${pageContext.servletContext.contextPath}/communty/ajaxCommentCount',
	    		type:'get',
	    		data:{postNo : postNo},
	    		success: function(data){
	    			console.log(data);
	    			$('#communtCount').text(data);
	    		},
	    		error: function(error){
	    			
	    		}
	    	})
        
    
       }
    
       function pageBtn(page){
    	  var $page = $(".pagingArea");
    	  
    	   $page.append('<button id="startPage"><<</button>');
    	   
    	   if(page.pageNo == 1){
    		   $page.append('<button disabled><</button>');
    	   }else if(page.pageNo > 0){
    		   $page.append('<button id="prevPage"><</button>');
    	   }
    	   
		  
		   for(var i = 0 ; i < page.pageNo ; i++ ){
			  
			   if( i+1 == 1 ){
				   
     				$page.append('<button disabled>1</button>');
     				   
     			}else{
     				$page.append('<button onclick="pageButtonAction(this.innerText);">'+ (i+1) +'</button>');
     			}
		   }
		   
		 
		   
		   if(page.pageNo == pageNo.maxPage){
			   $page.append('<button disabled>></button>');
		   }else if(page.pageNo < page.maxPage){
			   $page.append('<button id="nextPage">></button>');
		   }
		  
		   $page.append('<button id="maxPage">>></button>');
       } 
       
        
       // 댓글 append function
       function comment(data){
        	
        	
        	var loginUser = "${sessionScope.loginMember.userId}";
        	
        	var $div = $(".communty-comment-div");
        	
        	for(var i in data){
        	
        	var $comment = $('<div class="communty-comment" >');
        	$img = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/images/profile.png');
        	$coIdP = $("<p>").text(data[i].user.userId);
        	$comtNoP = $("<p class='postDetatil-comtNo'>").text(data[i].comtNo);
        	$coDateP = $("<p>").text(data[i].comtDate);
        	$coModifyP = $("<p id='commentModifyBtn'>").text("수정 / ");
        	$coDeleteP = $("<p id='commentDeleteBtn'>").text("삭제");
        	$coDetail = $('<div class="comment-detail1">').text(data[i].comtDetail);
        	$reponseBtn = $('<input type="button" value="답글달기" class="responseBtn">') 
        	
            
        	
        	if(data[i].user.userId == loginUser){
        		
        	  $comment.append($img).append($coIdP).append($comtNoP).append($coDateP).append($coModifyP).append($coDeleteP).append($coDetail).append($reponseBtn);
        	}else{
        	  $comment.append($img).append($coIdP).append($comtNoP).append($coDateP).append($coDetail).append($reponseBtn);
        	}
        	
        	$responseDiv = $('<div class="communty-response-div">');
        	
        	 
	        	if(data[i].reCommentList.length != 0){
	        		
	        		var reCommentList = data[i].reCommentList;

	        		for(var j in reCommentList){
	        			
		        		
		        		$communtyResponse = $('<div class="communty-response" >')
		        		$iTg = $('<i class="xi-subdirectory"></i>');
		        		$img1 = $('<img>').attr('src','${ pageContext.servletContext.contextPath }/resources/images/profile.png');
		            	$recoIdP = $("<p>").text(reCommentList[j].user.userId);
		            	$recomtNoP = $("<p class='postDetatil-reComtNo'>").text(reCommentList[j].reComtNo);
		            	$recoDateP = $("<p>").text(reCommentList[j].reComtDate);
		            	$recoModifyP = $("<p id='responseModifyBtn'>").text("수정 / ");
		            	$recoDeleteP = $("<p id='responseDeleteBtn'>").text("삭제");
		            	$recoDetail = $('<div class="comment-detail">').text(reCommentList[j].reComtDetail);
		            	
		                 
		            	if(data[i].reCommentList[j].user.userId == loginUser){
		            		
		            	  $communtyResponse.append($iTg).append($img1).append($recoIdP).append($recomtNoP).append($recoDateP).append($recoModifyP).append($recoDeleteP).append($recoDetail);
		            	  $responseDiv.append( $communtyResponse);
		            	}else{
		            	  $communtyResponse.append($iTg).append($img1).append($recoIdP).append($recomtNoP).append($recoDateP).append($recoDetail);
		            	  $responseDiv.append( $communtyResponse);
		            	}
		            	
		            	
	        	
	        		}
	        		
	        		$responseRegist = $('<div class="response-regist">')
	        		$repon = $("");
	        		if(loginUser != ""){
	        			$repon = $('<i class="xi-subdirectory"></i><input type="text" class="reposeRegistText" ><input type="button" id="reposeRegistBtn" value="등록하기">');
	        		}else{
	        			$repon = $('<i class="xi-subdirectory"></i><input type="text" value="로그인이 필요한 서비스 입니다." readonly><input type="button" value="등록하기">');
	        		}
	        		$responseRegist.append($repon);
	        		$comment.append($responseDiv).append($responseRegist);
	        		$div.append($comment);
	        		
	        	}else{ 
	        		$responseRegist = $('<div class="response-regist">')
	        		$repon = $("");
	        		if(loginUser != ""){
	        			$repon = $('<i class="xi-subdirectory"></i><input type="text" class="reposeRegistText" ><input type="button" id="reposeRegistBtn" value="등록하기">');
	        		}else{
	        			$repon = $('<i class="xi-subdirectory"></i><input type="text" value="로그인이 필요한 서비스 입니다." readonly><input type="button" value="등록하기">');
	        		}
	        		
	        		$responseRegist.append($repon);
	        		$comment.append($responseDiv).append($responseRegist);
	        		$div.append($comment);
	         	} 
	        	
	        	
        	
        	 
        	}
        } 
      
     //좋아요 ajax
	  $(document).on('click',"#likeBtn" , function(e){
	  	  
	  	  e.stopPropagation();
	  	  
	  	  var likeStatus = $(this).parent().children('.postDetail-likeStatus').text();
	  	  var $like = $(this).parent().children('.postlist-likes');
	  	  var postNo = "${post.postNo}"; 
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
		   		        		 $likeItg.parent().children('.postDetail-likeStatus').text('N');
		   		        	}else{
		   		        		 $likeItg.attr('class','xi-heart xi-2x');
		   		        		 $likeItg.parent().children('.postDetail-likeStatus').text('Y');
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
		   		        	 $likeItg.parent().children('.postDetail-likeStatus').text('Y');
		   		        	 $like.text(data);
		   		        	 
		   		      
		   		        	
		   		        	
		   		        },
		   		        error: function(error){
		   		        	
		   		        }
		           	}) 
		  		  
		  	  }
	  	  
	  	  } 
	  	 
	  	
	  })
	  
	   function commentList(){
    	 
    	  var postNo = "${post.postNo}"; 
    	  
    	 
    	 $.ajax({
    		 url:'${pageContext.servletContext.contextPath}/communty/ajaxCommentPage',
    		 type: 'get',
    		 data:{postNo:postNo},
    		 success : function(data) {
    			 	comment(data.comments);
		        	$('.pagingArea').html("");
		        	pageBtn(data.page)
		        },
		        error: function(error){
		        	
		        }
    	 })
    	 
    	 
     } 
     
     
     function pageBtn(page){
    	   $('.pagingArea').html("");
    	   $pageInfo = $('.pagingArea');

		   
		   $pageInfo.append('<button id="startPage"><<</button>');
		   
		   if(page.pageNo == 1){
			   $pageInfo.append('<button disabled><</button>');
		   }else if(page.pageNo > 1){
			   $pageInfo.append('<button id="prevPage"><</button>');
		   }
		   
			   
			   for(var i = page.startPage ; i <= page.endPage ; i++){
				   
				   if( i == 1 ){
    				   if(page.pageNo == 1){
    					   $pageInfo.append('<button disabled>1</button>');
    				   }else{
    					   $pageInfo.append('<button id="pageActionBtn">'+ i +'</button>');
    				   }
          				
          				   
          			}else{
          				$pageInfo.append('<button id="pageActionBtn">'+ i +'</button>');
          			}
				   
				   
			   }
			   
		   
		   
		   if(page.pageNo == page.maxPage ){
			   $pageInfo.append('<button disabled>></button>');
			  
		   }else if(page.pageNo < page.maxPage){
			   $pageInfo.append('<button id="nextPage">></button>');
		   }
		  	
		   
		   $pageInfo.append('<button id="maxPage">>></button>');
		   
	   
	   }
    	 
     
     
	   
	  
    
        
        
        

    </script>
</body>
</html>