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
	
	
	/******************************************/
	
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
		margin-left:1000px;
		height:100px;
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
        margin-top:100px;
    }
	
	
	.centerBlank{
		width:200px;
			
	}
	
	section{
	
		height:750px;
	}
	
	
	/******************************************/
	
</style>


</head>


<body>
	
		 	<div class="header">
	<jsp:include page="../common/header.jsp"/>
	
	</div> 
	
	
    <div id="registFormTitle">
   
	   <table class="titleTable">
		   	<tr>
		   		<td class="titleColorBox">xx회원님의 구매내역입니다.</td> 
		   		<td class="titleNonColor">ㅇㅇㅇ</td>
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
                    <td align="center"><br>  <i id="userImg" class="fas fa-user"></i> <!--프로필 사진 영역-->
                    <br></td>
                    </tr>
                    
                    <tr>
                        <td class="welcomeTd" align="center">
                            <c:out value="${ loginMember.userName }"/>님 안녕하세요!
                        </td>
                    </tr>
					<tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="${pageContext.servletContext.contextPath}/member/myPageMain">
                        		&nbsp;프로필
                        		</a>
                        		</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="javascript:goPurchaseListPage('${loginMember.userNo}');">
                        &nbsp;구매내역
                        </a>
                        </td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
						 <td>
						<a href="javascript:goCancelExchangeRefundPage('${loginMember.userNo}');">
                        &nbsp;취소/교환/반품내역
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
                    <tr>
                        <td>&nbsp;쿠폰</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="javascript:goReviewPage('${loginMember.userNo}');">
                        &nbsp;리뷰내역
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
                <table class="cartTable" border="1">
					<tr><td><br></td></tr>
                    <tr>
                        <th><input type="checkbox" class="chk_all" id="chk_all"></th>
                        <th>구매일시</th>
                        <th>구매번호</th>
                        <th>주문자</th>
                        <th>주문상품명</th>
                        <th>주문금액</th>

                    </tr>
                    
                    <!-- DB와 트랜젝션 완성후 foreach 구문으로 바꿀 것 -->
                    
                    <c:forEach items="${purchaseList}" var="purchase">
                    	<tr>
                    	<td align="center"><input type=checkbox class="chk"></td>
                    	<td><c:out value="${purchase.purchasedDate}"/></td>
                    	<td><c:out value="${purchase.purchaseNo}"/></td>            							
                    	<td><c:out value="${purchase.privateMemberDTO.userName}"/></td>
                    	<td><c:out value="${purchase.productDTO.prodName}"/></td>
                    	<td><c:out value="${purchase.orderDTO.orderPrice}"/></td>
                    	<td>
                    	<button type="button" class="deleteBtn" data-cartNum="${cart.wishListNo}"></button>
                    	</td>
                    	</tr>
                    	
                    	<c:set var="total" value="${total + cart.productDTO.prodPrice}"/>
                    	
                    </c:forEach>                    
					
					
                    


        </table>
        
        
        
        </section>
        </div>
    </div>
	
	
	

    <div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>
</body>
</html>