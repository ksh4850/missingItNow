<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="/missingitnow/resources/css/member/myPageCart.css"> 
    
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
        <div id="colorBox">
    
        </div>

        <div id="rightDiv">

            <section>
                <table class="cartTable">
					<tr><td><br></td></tr>
                    <tr>
                        <th><input type="checkbox" class="chk_all" id="chk_all"></th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>수량/삭제</th>

                    </tr>
                    
                    
                    
                    <!-- DB와 트랜젝션 완성후 foreach 구문으로 바꿀 것 -->
                    
                    <tr>
                        <td align="center"><input type=checkbox class="chk"> </td>
                        <td>상품명</td>
                        <td>상품가격 : <br> 배송비 : </td>
                        <td><select name="" id="" class="selectAmount">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><input type=checkbox class="chk"> </td>
                        <td>상품명</td>
                        <td>상품가격 : <br> 배송비 : </td>
                        <td><select name="" id="" class="selectAmount">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </td>
                    </tr>
					
					<tr><td><br></td></tr>
					
                    <tr>
                        <td colspan="4" class="calculateTd">총계 : xxxx원 </td>

                    </tr>
                    <tr>

                        <td colspan="4" class="calculateTd">할인 금액 : <a class="pointColorFont"> xxxx원</a></td>

                    </tr>
                    <tr>

                        <td colspan="4" class="calculateTd">최종 결제 금액 : <a class="redColorFont">xxxx원</a></td>
                    </tr>
					
					<tr><td class="upperPaymentTd">&nbsp;</td></tr>
					<tr>
					
					<td colspan="4" class="paymentTd">
						
						<button class="paymentBtn" type="submit">결제하기 </button> 
					
					
					</td></tr>
                    


        </table>
        
        
        
        </section>
        </div>
    </div>
	
	
	

    <div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>



    <script>

        $("#chk_all").click(function () {

            if ($("#chk_all").is(":checked")) {

                $(".chk").prop("checked", true);

            } else {

                $(".chk").prop("checked", false);
            }
        });

        $(".chk").click(function () {
            if ($("input[class='chk']:checked").length == 3) {

                $("#chk_all").prop("checked", true);


            } else {
                $("#chk_all").prop("checked", false);
            }

        });






    </script>


</body>

</html>