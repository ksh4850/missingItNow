<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/missingitnow/resources/js/member/myPageNav.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<style>
			#totalForm {
        margin: 100px auto;
        display: flex;
        justify-content: center;
        /* align-items: center; */
    }
	
	.leftDiv {
    	background-color : rgba(119, 94, 238, 0.75);
    	margin-top:150px;
        margin-bottom:10px;
        border-radius: 15px;
        width:430px;
        height:490px;
    }
	
	.myPageNavTable{		
		margin-left:0;
		margin-top:-30px;		
		text-align: left;
		font-size:30px;
		width: 430px;
		height: 450px;
	}


	.titleTable{
		margin-left:800px;		
		text-align: center;
		vertical-align: bottom;	
	}
	
	.titleColorBox{	
		background-color: rgba(119, 94, 238, 0.7);
		color:#fff;
		font-size:30px;
		vertical-align: bottom;	
	}
	
	.titleNonColor{
		font-size:30px;
		vertical-align: bottom;
	}
	
	.welcomeTd{

	font-size:20px;
	color:#ffff;
	}
	
	#colorBox{
        position: relative;      
        background-color: rgba(119, 94, 238, 0.33);
        width:900px;
        height: 900px;
    }
    
    #rightDiv {
        position: absolute;
    	width:800px;
    	heignt:1200px;
    	background: #FBF9F9;
		border: 0.2px solid #000000;
		box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
		border-radius: 10px;
    	margin-left:630px;
        margin-top:50px;
    }
	
	
	.centerBlank{
		width:200px;
			
	}
	
	section{
	
		height:750px;
	}
	
	.cartTable{
		margin-left:50px;
	}
	
	.emptyTable{
		margin-left:140px;
	
	}
	
	.goShoppingBtn{	
		color:#ffff;
		background:rgba(119, 94, 238);
		width:150px;
		height:60px;
		border-radius: 10px;
		font-size:20px;
	}
	
	.emptyMessage{
		font-size:30px;
	
	}
	
	.purchaseListTable{
		margin-top:50px;
		margin-left:100px;
		width:600px;
	    height:150px;
	    text-align:center;
	    vertical-align:bottom;
	    border-radius: 30px;
        border-collapse: collapse;
        font-family: Roboto;
	}
	
	.bottomLineTr{
		border-bottom: 2px solid #775EEE;
		line-height: 60px;	
	}
	
	.pointTd{
   		background: #B1A7E4;
   } 
	   .leftBg{
		position:relative;
		margin-top:200px;
		margin-left:-100px;
		margin-bottom:50px;
	}
		
	#contentForm{
		margin: 90px auto;
        margin-left: 490px;
        margin-top:-1600px;
        margin-bottom:10px;
        position:absolute;
	}	
</style>

</head>
<body>
			
 	<div class="header">
	<jsp:include page="../common/header.jsp"/>
	
	</div>  
<div>
<img class="leftBg" src="/missingitnow/resources/images/member/purchaseListLeft.png">
</div> 	
<div id="contentForm">	
    <div id="registFormTitle">
   
   
   		<div></div>
	   <table class="titleTable">
	   
	   		
		   	<tr>
		   		<td class="titleColorBox"><br><br><br><br><c:out value="${loginMember.userName }" />&nbsp;????????????&nbsp; </td> 
		   		<td class="titleNonColor">???????????????????????????.</td>
		   	</tr>
	   </table>           
   
     	
   </div>

    <div id="totalForm">
        
             	<form name="Paging">
                     <input type="hidden" name="userNo" value="${loginMember.userNo}">				
				</form>
    	
    
    		<div class="leftDiv">
    		
    		
                <table class="myPageNavTable">
                    <tr>
                    <td align="center"><br>  <i id="userImg" class="fas fa-user"></i> <!--????????? ?????? ??????-->
                    <br></td>
                    </tr>
                    
                    <tr>
                        <td class="welcomeTd" align="center">
                            <c:out value="${ loginMember.userName }"/>??? ???????????????!
                        </td>
                    </tr>
					<tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="${pageContext.servletContext.contextPath}/member/myPageMain">
                        		&nbsp;?????????
                        		</a>
                        		</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="javascript:goPurchaseListPage('${loginMember.userNo}');">
                        &nbsp;????????????
                        </a>
                        </td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
						 <td class="pointTd">
						<a href="javascript:goCancelExchangeRefundPage('${loginMember.userNo}');">
                        &nbsp;??????/??????/????????????
                        </a>
                        </td>
                    </tr>
                    <tr> <td><br></td> </tr>

                    <tr>
                        <td>
                        <a href="javascript:goQnaPage('${loginMember.userNo}');">
                        &nbsp;Q&A
                        </a>
                        </td>
                    </tr>

                    <tr> <td><br></td> </tr>
<!--                     <tr>
                        <td>&nbsp;??????</td>
                    </tr>
                    <tr> <td><br></td> </tr> -->
                    <tr>
                        <td>
                        <a href="javascript:goReviewPage('${loginMember.userNo}');">
                        &nbsp;????????????
                        </a>
                        </td>
                    </tr>
                    <tr> <td><br></td> </tr>
                </table>

            
        </div>
        
        <div class="centerBlank"><br></div>
        
        
        <div id="colorBox">
    
        </div>
		
	
		
		
        <div id="rightDiv">

            <section>
                    
                    <!-- DB??? ???????????? ????????? foreach ???????????? ?????? ??? -->
                    
                     <c:if test="${!empty cancelExchangeRefundList }">
                <table class="purchaseListTable" border="1">
					<tr><td><br></td></tr>
                    <tr class="bottomLineTr">                        
                        <th>??????/????????????</th>
                        <th>???????????? ???</th>
                        <th>??????/????????????</th>
                        <th>???????????????</th>
                        <th>????????????</th>
                    </tr>
                    <c:forEach items="${cancelExchangeRefundList}" var="cancelExchangeRefund">
                    	<tr class="bottomLineTr" align="center">                    	
                    	<td><c:out value="${cancelExchangeRefund.exchangeNo}"/></td>
                    	<td><c:out value="${cancelExchangeRefund.privateMemberDTO.userName}"/></td>            							
                    	<td><c:out value="${cancelExchangeRefund.exchangeDate}"/></td>
                    	<td><c:out value="${cancelExchangeRefund.productDTO.prodName}"/></td>
                    	<td><c:out value="${cancelExchangeRefund.orderDTO.orderPrice}"/></td>
                     	<td><c:out value="${cancelExchangeRefund.returnNo}"/></td>            							
                    	<td><c:out value="${cancelExchangeRefund.returnDate}"/></td>             
                    	</tr>        	
                    	
                    </c:forEach>                    
			     </table>
                    
               </c:if> 
                    
               <c:if test="${empty cancelExchangeRefundList}"> 
               		
               		<table class="emptyTable">
			         	<tr><td><br><br></td></tr>
			         	<tr>
			         		<td class="emptyMessage" align="center">&nbsp;?????? ???????????? ????????? ????????????.</td>
			         	</tr>
			         	
			         	<tr><td><br><br><br></td></tr>
			         	
			         	<tr>
			         		<td>
			        			<img class="emptyBox" src="/missingitnow/resources/images/member/box.png">
					        </td>
			         	</tr>
			         	<tr><td><br><br></td></tr>

			         	
			         </table>
               
               </c:if>    
                    
				

        
        
        
        </section>
        </div>
    </div>
</div>	
	
	

     <div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div> 
	
	
	

    <div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>
		
</body>
</html>