<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        .system-comp-head{
            margin-left: 5px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ; 
            color: rgb(119, 94, 238);

        }

        .system-comp-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left:  130px ;
            font-size: 20px;
           
        }

        .system-comp-searchBar>select{
            font-size: 18px;
            border: 2px solid rgb(119, 94, 238);
        }


        .system-comp-searchBar > input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
        }

        .system-comp-searchBar > input[type="button"] {
            font-size: 18px;
            padding: 3px;
            background-color: rgb(119, 94, 238);
            color: white;
        }
       
        

        .system-comp-info{
             margin-left:  130px ;
             text-align: center; 
             line-height: 2;
             
        }

        

        .system-comp-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
            
            
       }

       .system-comp-info td{
            padding-top: 10px;
            
            
       }

        .first-tr {
            background: rgb(119, 94, 238);
            padding: 3px;
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(12) {border-radius:0 15px 15px 0;}

        input[type ="search"]{
            width: 300px;
            line-height: 2;
        }

        .system-comp-info input[type="button"]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px ;
            color: rgb(47, 16, 201);
            padding: 3px;
        }


        .pagingArea button{
         	border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            margin-bottom : 50px;
        }
        


    </style>
</head>
<body>
    <header>
		<jsp:include page="../common/corpMngHeader.jsp"/>
    </header>
	<div style="overflow:hidden; display: flex;">	
    <aside>
		<%-- <jsp:include page="../common/systemNavi.jsp"></jsp:include> --%>
		<jsp:include page="../common/corpMngNavi.jsp"/>
    </aside>
    <section>
        <div class="system-comp-head">기업 회원정보</div>
        <br>
        <div class="system-comp-searchBar" >
            <select name="corpLv" id="corpLv" >
                <option value="" <c:if test="${empty requestScope.corpPage.corpLv}">selected</c:if>>전체</option>
                <option value="VVIP" <c:if test="${requestScope.corpPage.corpLv eq 'VVIP'}">selected</c:if> >VVIP</option>
                <option value="VIP" <c:if test="${requestScope.corpPage.corpLv eq 'VIP'}">selected</c:if>>VIP</option>
                <option value="GOLD" <c:if test="${requestScope.corpPage.corpLv eq 'GOLD'}">selected</c:if>>GOLD</option>
                <option value="SILVER" <c:if test="${requestScope.corpPage.corpLv eq 'SILVER'}">selected</c:if>>SILVER</option>
                <option value="BLACKCORP" <c:if test="${requestScope.corpPage.corpLv eq 'BLACKCORP'}">selected</c:if>>BLACKCORP</option>
                <option value="Y" <c:if test="${requestScope.corpPage.corpLv eq 'Y'}">selected</c:if>>승인</option>
                <option value="N" <c:if test="${requestScope.corpPage.corpLv eq 'N'}">selected</c:if>>미승인</option>
            </select>
            <select name="corpCondition" id="corpCondition" width="50px">
                <option value="id" <c:if test="${requestScope.corpPage.corpCondition eq 'id'}"> selected </c:if>>아이디</option>
                <option value="name" <c:if test="${requestScope.corpPage.corpCondition eq 'name'}">selected</c:if>>기업명</option>
                <option value="address" <c:if test="${requestScope.corpPage.corpCondition eq 'address'}">selected</c:if>>주소</option> 
                <option value="contacts" <c:if test="${requestScope.corpPage.corpCondition eq 'contacts'}">selected</c:if>>전화번호</option>
                <option value=""  <c:if test="${empty requestScope.corpPage.corpCondition}">selected</c:if> >전체</option>
            </select>
            <c:if test="${empty requestScope.corpPage.corpSearchText}">
            	<input type="search" id="corpSearchText" width="300px" >
            </c:if>
            <c:if test="${!empty requestScope.corpPage.corpSearchText}">
            	<input type="search" id="corpSearchText" width="300px" value="${requestScope.corpPage.corpSearchText}">
            </c:if>
            <input type="button" id="corpSearchBtn" value="검색"/>
            
        </div>
    
        <br>
    
        <div class="system-comp-info" >
            <table>
            <thead>
                <tr class="first-tr">
                    <th width=80px;>회원번호</th>
                    <th width=80px;>아이디</th>
                    <th width=80px;>기업명</th>
                    <th width=160px;>주소</th>
                    <th width=160px;>전환번호</th>
                    <th width=160px;>이메일</th>
                    <th width=160px;>예치금</th>
                    <th width=80px;>수수료 비율</th>
                    <th width=80px;>가입일</th>
                    <th width=50px;>등급</th>
                    <th width=80px;>판매 승인</th>
                    <th width=200px;>관리</th>
                 </tr>
              </thead> 
              <tbody>
                 <c:forEach var="corp" items="${requestScope.corpList}">
                 <tr>
                     <td ><c:out value="${corp.corpNo }"/></td>
                     <td ><c:out value="${corp.corpId }"/></td>
                     <td ><c:out value="${corp.corpName }"/></td>
                     <td ><c:out value="${corp.corpContacts }"/></td>
                     <td ><c:out value="${corp.corpAddress }"/></td>
                     <td ><c:out value="${corp.corpEmail }"/></td>
                     <td ><c:out value="${corp.depositAtm }"/></td>
                     <td ><c:out value="${corp.corpCommission }"/></td>
                     <td ><c:out value="${corp.corpRegstDate }"/></td>
                     <td ><c:out value="${corp.corpLv.corpLvName }"/></td>
                     <c:if test="${corp.corpRegstAccpeted eq 'Y' }">
                     	<td ><c:out value="승인완료"/></td>
                   	</c:if>
                   	<c:if test="${corp.corpRegstAccpeted eq 'N' }">
                     	<td><input type="button" class="RegstAccpet" value="승인하기"></td>
                   	</c:if>
                     <td><input type="button" class="corpSalesInfoBtn" value="기업 매출 정보">
                        <input type="button" class="corpOrderInfo" value="주문내역">
                        <input type="button" class="corpSettlement" value="정산내역">
                        <input type="button" class="corpDepositInfo" value="예치금내역">
                    </td>
                    
                 </tr>
                </c:forEach>
                 </tbody>
            </table>
        </div>

        <br>

        <div class="pagingArea" align="center">
			
					<button id="startPage"><<</button>
			
					<c:if test="${ requestScope.corpPage.pageInfo.pageNo == 1 }">
						<button disabled><</button>
					</c:if>
					 <c:if test="${ requestScope.corpPage.pageInfo.pageNo > 1 }">
						<button id="prevPage"><</button>
					</c:if>
			
					<c:forEach var="p" begin="${ requestScope.corpPage.pageInfo.startPage }" end="${ requestScope.corpPage.pageInfo.endPage }" step="1">
					<c:if test="${ requestScope.corpPage.pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ requestScope.corpPage.pageInfo.pageNo ne p }">
						<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ requestScope.corpPage.pageInfo.pageNo == requestScope.corpPage.pageInfo.maxPage }">
						<button disabled>></button>	
					</c:if>
					<c:if test="${ requestScope.corpPage.pageInfo.pageNo < requestScope.corpPage.pageInfo.maxPage }">
						<button id="nextPage">></button>
					</c:if> 
			
					<button id="maxPage">>></button>
		</div><!-- pagingArea end -->
        			
        
    </section>
    </div>
    <footer>
		<jsp:include page="../common/footer.jsp"/>
	</footer>  
    
    
    <script>
    
	const link = "${ pageContext.servletContext.contextPath }/system/comInfo";
	
		
	/* 원하는 페이지 클릭시 실행되는 콜백 함수 */
	function pageButtonAction(text) {
		location.href = link + "?currentPage=" + text + "&corpLv=${requestScope.corpPage.corpLv}&corpCondition=${requestScope.corpPage.corpCondition }&corpSearchText=${requestScope.corpPage.corpSearchText}";
	}
	

	$(document).on('click',"#corpSearchBtn" ,function(){
		
		var corpLv = $("#corpLv").val();
		var corpCondition = $("#corpCondition").val();
		var corpSearchText = $("#corpSearchText").val(); 
		
		console.log(corpLv); 
	 	console.log(corpCondition);
		console.log(corpSearchText); 
	 location.href = link + "?currentPage=1&corpLv=" + corpLv +  "&corpCondition=" + corpCondition + "&corpSearchText=" + corpSearchText ;
	})
	
	$(document).on('click',"#startPage" , function(){
		location.href = link + "?currentPage=1&corpLv=${requestScope.corpPage.corpLv}&corpCondition=${requestScope.corpPage.corpCondition }&corpSearchText=${requestScope.corpPage.corpSearchText}";
	})
	
	$(document).on('click',"#maxPage" , function(){
		location.href = link + "?currentPage=${ requestScope.corpPage.pageInfo.maxPage }&corpLv=${requestScope.corpPage.corpLv}&corpCondition=${requestScope.corpPage.corpCondition }&corpSearchText=${requestScope.corpPage.corpSearchText}";
	})
	
	$(document).on('click',"#prevPage" , function(){
		location.href = link + "?currentPage=${ requestScope.corpPage.pageInfo.pageNo - 1 }&corpLv=${requestScope.corpPage.corpLv}&corpCondition=${requestScope.corpPage.corpCondition }&corpSearchText=${requestScope.corpPage.corpSearchText}";
	})
	
	$(document).on('click',"#nextPage" , function(){
		location.href = link + "?currentPage=${ requestScope.corpPage.pageInfo.pageNo + 1 }&corpLv=${requestScope.corpPage.corpLv}&corpCondition=${requestScope.corpPage.corpCondition }";
	})
	
	
	$(document).on('click',".corpDepositInfo" , function(){
		
		var corpNo = $(this).parent().parent().children().eq(0).text();
		
		location.href = "${ pageContext.servletContext.contextPath }/system/depositInfo?depositCondition=no&depositSearchText=" + corpNo;
	})
	
	$(document).on('click',".corpOrderInfo" , function(){
		
		var corpId = $(this).parent().parent().children().eq(1).text();
		
		location.href = "${ pageContext.servletContext.contextPath }/system/orderInfo?condition=corpId&orderInfoText=" + corpId;
	})
	
	$(document).on('click',".corpSalesInfoBtn" , function(){
		
		var corpNo = $(this).parent().parent().children().eq(0).text();
		
		location.href = "${ pageContext.servletContext.contextPath }/system/corpSalesInfo?condition=corpNo&corpSellText=" + corpNo;
	})
	
	
	$(document).on('click',".RegstAccpet" , function(){
                var corpLv = $("#corpLv").val();
                var corpCondition = $("#corpCondition").val();
       			var corpSearchText = $("#corpSearchText").val();
       			var corpNo = $(this).parent().parent().children().eq(0).text();
       			var corpName = $(this).parent().parent().children().eq(2).text();
       			console.log(corpNo);
       			
               
               $.ajax({
            	   type:"GET",
            	   url: "${ pageContext.servletContext.contextPath}/system/regstAccpet",
            	   data: {corpLv:corpLv ,
            		   	  corpCondition:corpCondition , 
            		      corpSearchText:corpSearchText , 
            		      corpNo:corpNo
            		     },
            	   success:function(data){
            		   
            		   const $table = $(".system-comp-info tbody");
            		   const $page = $(".pagingArea");
            		   
            		   
            		   
            		   if(data == null){
            			   alert("가입승인에 실패 하셧습니다.");
            		   }else{
            			   
            			   alert(corpName +"님의 가입승인을 완료했습니다.");
            			   
            			   $table.html("");
                		   $page.html("");
                		   
                		   console.table(data);
            		   
            		   for(var i in data){
            			   
            			   
            			   if(i < 10){
            				   $tr = $("<tr>");
            				   $noTd = $("<td>").text(data[i].corpNo);
            				   $idTd = $("<td>").text(data[i].corpId);
            				   $nameTd = $("<td>").text(data[i].corpName);
            				   $contactsTd = $("<td>").text(data[i].corpContacts);
            				   $addressTd = $("<td>").text(data[i].corpAddress);
            				   $emailTd = $("<td>").text(data[i].corpEmail);
            				   $dopositTd = $("<td>").text(data[i].depositAtm);
            				   $commissionTd = $("<td>").text(data[i].corpCommission);
            				   $dateTd = $("<td>").text(data[i].corpRegstDate);
            				   $laeveTd = $("<td>").text(data[i].corpLv.corpLvName);
            				
            				   
            				   if(data[i].corpRegstAccpeted == 'Y'){
            					   $accpetTd = $("<td>").text("승인완료");
            				   }else{
            					   
            					   $accpetTd = $("<td>").append('<input type="button" class="RegstAccpet" value="승인하기"></td>')
            				   }
            				   $adtd = $("<td>");
            				   $adtd.append('<input type="button" class="corpModify" value="회원정보 수정">');
            				   $adtd.append('<input type="button" class="corpsellInfo" value="판매내역">');
            				   $adtd.append('<input type="button" class="corpSettlement" value="정산내역">');
            				   $adtd.append('<input type="button" class="corpDepositInfo" value="예치금내역">');
            				   
            				   $tr.append($noTd);
            				   $tr.append($idTd);
            				   $tr.append($nameTd);
            				   $tr.append($contactsTd);
            				   $tr.append($addressTd);
            				   $tr.append($emailTd);
            				   $tr.append($dopositTd);
            				   $tr.append($commissionTd);
            				   $tr.append($dateTd);
            				   $tr.append($laeveTd);
            				   $tr.append($accpetTd);
            				   $tr.append($adtd);
            				   
            				   $table.append($tr);  
            				   
            			   }
            			   
            		   }
            			   
            			   var pageNo = Math.ceil(data.length / 10) ; 
            			   
            			   console.log(pageNo);
            			   
            			   $page.append('<button id="startPage"><<</button>');
            			   $page.append('<button disabled><</button>');
            			   
            			   if( pageNo <= 10){
            				   
            				   for(var i = 0 ; i < pageNo ; i++){
            					   
            					   if( i+1 == 1 ){
                    				   
                          				$page.append('<button disabled>1</button>');
                          				   
                          			}else{
                          				$page.append('<button onclick="pageButtonAction(this.innerText);">'+ (i+1) +'</button>');
                          			}
            					   
            					   
            				   }
            				   
            			   }else{
								for(var i = 0 ; i < 10 ; i++){
            					   
            					   if( i+1 == 1 ){
                    				   
                          				$page.append('<button disabled>1</button>');
                          				   
                          			}else{
                          				$page.append('<button onclick="PageButtonAction(this.innerText);">'+ i+1 +'</button>');
                          			}
            					   
            					   
            				   }
            			   }
            			   
            			   
            			   $page.append('<button id="nextPage">></button>');
            			   $page.append('<button id="maxPage">>></button>');
            			   
 
            			   
            		   
            		   }
            	   },
            	   error:function(error){
            		   console.log(error)
            	   }
               })
            	   
               
               
            })
	 

	
	
	
	
</script>

    
</body>
</html>