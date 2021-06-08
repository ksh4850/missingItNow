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
</head>




<body>
		 	<div class="header">
	<jsp:include page="../common/header.jsp"/>
	
	</div> 
	
	
    <div id="registFormTitle">
   
	   <table class="titleTable">
		   	<tr>
		   		<td class="titleColorBox">xx회원님의 </td> 
		   		<td class="titleNonColor">리뷰내역입니다</td>
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
    
    
        <div id="colorBox">
    
        </div>

        <div id="rightDiv">

            <section>
                <table class="cartTable" border="1">
					<tr><td><br></td></tr>
                    <tr>
                        <th><input type="checkbox" class="chk_all" id="chk_all"></th>
                        <th>주문일시</th>
                        <th>상품명</th>
                        <th>상품가격</th>
                        <th>주문수량</th>
                        <th>총 가격</th>

                    </tr>
                    
                    <!-- DB와 트랜젝션 완성후 foreach 구문으로 바꿀 것 -->
                    <c:set var = "total" value="0"/>
                    <c:forEach items="${reviewList}" var="review">
                    	<tr>
                    	<td align="center"><input type=checkbox class="chk"></td>
                    	<td><c:out value="${review.orderDTO.orderDate}"/></td>
                    	<td><c:out value="${review.productDTO.prodName}"/></td>
                    	<td><c:out value="${review.productDTO.prodPrice}"/></td>
                    	<td><c:out value="${review.orderDTO.orderQuantity}"/></td>
                    	<td><c:out value="${review.orderDTO.orderPrice}"/></td>
                    	<td><c:out value="${review.reviewDetails}"/> </td>
                    	<td>
                    	<button type="button" class="deleteBtn" data-cartNum="${cart.wishListNo}"><i class="far fa-trash-alt"></i></button>
                    	</td>
                    	</tr>
                    	
                    	<c:set var="total" value="${total + cart.productDTO.prodPrice}"/>
                    	
                    </c:forEach>                    
					
					<tr><td><br></td></tr>
					
                    <tr>
                    	<td></td>
                        <td colspan="4" class="calculateTd">총계 : <c:out value="${total}"/>원 </td>

                    </tr>
                    <tr>
						<td></td>
                        <td colspan="4" class="calculateTd">할인 금액 : <a class="pointColorFont"> xxxx원</a></td>

                    </tr>
                    <tr>
						<td></td>
                        <td colspan="4" class="calculateTd">최종 결제 금액 : <a class="redColorFont">xxxx원</a></td>
                    </tr>
					
					<tr><td class="upperPaymentTd">&nbsp;</td></tr>
					
					<tr>
					<td></td>
					<td colspan="4" class="paymentTd">
						
						<button class="paymentBtn" type="submit">결제하기 </button> 
					
					
					</td>
					</tr>
                    


        </table>
        
        
        
        </section>
        </div>
    </div>
	
	
	

    <div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>
</body>
</html>