<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="/missingitnow/resources/css/member/myPageCart.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
        <script src="/missingitnow/resources/js/member/myPageNav.js"></script>

    
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
	

	
</style>

<body>
	
	
 	<div class="header">
	<jsp:include page="../common/header.jsp"/>
	
	</div> 
	
	
    <div id="registFormTitle">
   
	   <table class="titleTable">
		   	<tr>
		   		<td class="titleColorBox">xx회원님의 장바구니입니다.</td> 
		   		<td class="titleNonColor">어떤 물건을 구매하실껀가요?</td>
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
                        <th>상품명</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>
                        
                        	<button type="button" class="selectDeleteBtn">선택 삭제<i class="far fa-trash-alt"></i></button>
                        
                        </th>

                    </tr>
                    
                    <!-- DB와 트랜젝션 완성후 foreach 구문으로 바꿀 것 -->
                    <c:set var = "total" value="0"/>
                    <c:forEach items="${cartList}" var="cart">
                    	<tr>
                    	<td align="center"><input type=checkbox class="chk"></td>
                    	<td><c:out value="${cart.productDTO.prodName}"/></td>
                    	<td><c:out value="${cart.productDTO.prodPrice}"/></td>
                    	<td><c:out value="${cart.prodAmount}"/> </td>
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



    <script>
		
    
    
    	
        /* 체크박스 전체선택 & 해제 */
    	
    
        $("#chk_all").click(function () {

            if ($("#chk_all").is(":checked")) {

                $(".chk").prop("checked", true);

            } else {

                $(".chk").prop("checked", false);
            }
        });

        $(".chk").click(function () {
            if ($("input[class='chk']:checked").length == "${fn:length(cartList)}") {

                $("#chk_all").prop("checked", true);


            } else {
                $("#chk_all").prop("checked", false);
            }

        });


    	/* 휴지통 아이콘 선택시 장바구니에서 삭제*/
    	
    	 $(".selectDeleteBtn").click(function(){
    		 
    		  var confirm_val = confirm("정말 삭제하시겠습니까?");
    		  
    		  if(confirm_val) {
    		 
    		  
    			 var cnt = $("input[class='chk']:checked").length;
    			 var arr = new Array();
    			 
    			 $("input[class='chk']:checked").each(function(){
    				 
    				arr.push($(this).attr("data-cartNum")); 
    				 
    			 });
    			 
    			 if(cnt == 0 ){
    				 
    				 alert("선택된 항목이 없습니다.");
    			 
    			 } else {
    				 
    				$.ajax = {
    						
    						type : "POST",
    						url : "${pageContext.servletContext.contextPath}/member/deleteCart",
    						data: {chk : arr},
    						dataType:"json",
    						success:function(result){
    							if(result==1){
    								
    							location.href= "${pageContext.servletContext.contextPath}/member/myPageCart";
    							} else {
    								
    								alert("삭제실패");
    							}
    							
    						},
    						error: function(){alert("서버통신 오류");}
    						
    				};	 
    				 
    				 
    			 }
    			 
    		  }
    		 
    		 
    		 
    	 });
		



    </script>


</body>

</html>