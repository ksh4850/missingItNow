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

	    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <style>
   
        .system-deposit-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-deposit-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 100px;
            font-size: 20px;
           
        }

        .system-deposit-searchBar select{
            border: 2px solid rgb(119, 94, 238);
            font-size: 18px;
        }


        .system-deposit-searchBar input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
        }

        .system-deposit-searchBar input[type="submit"] {
            font-size: 18px;
            padding: 3px;
            background-color: rgb(119, 94, 238);
        }
       
        

        .system-deposit-info{
             margin-left: 100px;
             text-align: center; 
             line-height: 2;
        }

        

        .system-deposit-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
            
            
       }

       .system-deposit-info td{
            padding-top: 10px;
            
            
       }

        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(7) {border-radius:0 15px 15px 0;}

        input[type ="search"]{
            width: 300px;
            line-height: 2;
        }

        .system-deposit-info input[type="button"]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px ;
            color: rgb(47, 16, 201);
            padding: 3px;
        }



        .system-deposit-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }

        .system-deposit-searchBar  input[type="date"]{
            border: 2px solid  rgb(119, 94, 238); 
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
        <div class="system-deposit-head">예치금 내역</div>
        <br>
        <div class="system-deposit-searchBar" >
       
            <input type="date" name="startDate" id="startDate" <c:if test="${!empty requestScope.depositPage.startDate}">value="${requestScope.depositPage.startDate }"</c:if> > ~
            <input type="date" name="endDate" id="endDate" <c:if test="${!empty requestScope.depositPage.endDate}">value="${requestScope.depositPage.endDate }"</c:if> >
            <select name="depositSort" id="depositSort" style="margin-left: 380px;">
                <option value="" <c:if test="${empty requestScope.depositPage.depositSort}">selected</c:if>>전체</option>
                <option value="충전"<c:if test="${ requestScope.depositPage.depositSort eq '충전'}">selected</c:if>>충전</option>
                <option value="인출"<c:if test="${ requestScope.depositPage.depositSort eq '인출'}">selected</c:if>>인출</option>
                <option value="사용"<c:if test="${ requestScope.depositPage.depositSort eq '사용'}">selected</c:if>>사용</option>
            </select>
            <select name="depositCondition" id="depositCondition" >
                <option value="" <c:if test="${empty requestScope.depositPage.depositCondition}">selected</c:if>>전체</option>
                <option value="id" <c:if test="${ requestScope.depositPage.depositCondition eq 'id'}">selected</c:if>>아이디</option>
                <option value="name" <c:if test="${ requestScope.depositPage.depositCondition eq 'name'}">selected</c:if>>기업이름</option>
                <option value="no" <c:if test="${ requestScope.depositPage.depositCondition eq 'no'}">selected</c:if>>기업회원 번호</option>
                <option value="detatil" <c:if test="${ requestScope.depositPage.depositCondition eq 'detatil'}">selected</c:if>>내용</option>
            </select>
            <input type="search" width="300px" name="depositSearchText" id="depositSearchText" <c:if test="${!empty requestScope.depositPage.depositSearchText}">value="${requestScope.depositPage.depositSearchText }"</c:if>  >
            <input type="submit" value="검색"  id="depositSearchBtn"/>
  
        </div>
        <br>
        
        <div class="system-deposit-info" >
            <table>
                <tr class="first-tr">
                    <th width=160px;>기업 회원번호</th>
                    <th width=160px;>아이디</th>
                    <th width=160px;>기업명</th>
                    <th width=160px;>입금/출금</th>
                    <th width=250px;>정산 금액</th>
                    <th width=160px;>내용</th>
                    <th width=160px;>일시</th>
                 </tr>
                    <c:forEach var="deposit" items="${requestScope.depositList}">
                 <tr>
                     <td ><c:out value="${deposit.depositNo }"/></td>
                     <td ><c:out value="${deposit.corp.corpId }"/></td>
                     <td ><c:out value="${deposit.corp.corpName }"/></td>
                     <td ><c:out value="${deposit.depositSort }"/></td>
                     <td ><fmt:formatNumber value="${deposit.amount }" pattern="\#,###"/></td>
                     <td ><c:out value="${deposit.depositDetails }"/></td>
                     <td ><c:out value="${deposit.depositDate }"/></td>
                   </tr>
                	</c:forEach>

            </table>
        </div>

        <br>
		
          <div class="pagingArea" align="center">
          
          			<c:if test="${empty depositList }">
          				<h3 >조회된 내역이 없습니다.</h3>
          			</c:if>
					<c:if test="${!empty depositList }">
					<button id="startPage"><<</button>
						
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo == 1 }">
						<button disabled><</button>
					</c:if>
					 <c:if test="${ requestScope.depositPage.pageInfo.pageNo > 1 }">
						<button id="prevPage"><</button>
					</c:if>
					
					<c:forEach var="p" begin="${ requestScope.depositPage.pageInfo.startPage }" end="${ requestScope.depositPage.pageInfo.endPage }" step="1">
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo eq p }">
						<button disabled><c:out value="${ p }"/></button>
					</c:if>
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo ne p }">
						<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
					</c:if>
					</c:forEach>
			
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo == requestScope.depositPage.pageInfo.maxPage }">
						<button disabled>></button>	
					</c:if>
					<c:if test="${ requestScope.depositPage.pageInfo.pageNo < requestScope.depositPage.pageInfo.maxPage }">
						<button id="nextPage">></button>
					</c:if> 
			
					<button id="maxPage">>></button>
					</c:if>
		</div><!-- pagingArea end -->
		
    </section>
    </div>
     <footer>
		<jsp:include page="../common/footer.jsp"/>
	</footer> 
    
    <script >
    const link = "${ pageContext.servletContext.contextPath }/system/depositInfo";
	
	
	/* 원하는 페이지 클릭시 실행되는 콜백 함수 */
	function pageButtonAction(text) {
		location.href = link + "?currentPage=" + text + "&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
	}
	
	$(document).on('click',"#depositSearchBtn" ,function(){
		
		var startDate = $("#startDate").val();
		var endDate = $("#endDate").val();
		var depositSort = $("#depositSort").val(); 
		var depositCondition = $("#depositCondition").val(); 
		var depositSearchText = $("#depositSearchText").val(); 

	 location.href = link + "?currentPage=1&startDate=" + startDate +  "&endDate=" + endDate + "&depositSort=" + depositSort + "&depositCondition=" +depositCondition + "&depositSearchText=" + depositSearchText;
	})
	
	
	$(document).on('click',"#startPage" , function(){
		location.href = link + "?currentPage=1&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
	})
	
	$(document).on('click',"#maxPage" , function(){
		location.href = link + "?currentPage=${ requestScope.depositPage.pageInfo.maxPage }&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
	})
	
	$(document).on('click',"#prevPage" , function(){
		location.href = link + "?currentPage=${ requestScope.depositPage.pageInfo.pageNo - 1 }&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
	})
	
	$(document).on('click',"#nextPage" , function(){
		location.href = link + "?currentPage=${ requestScope.depositPage.pageInfo.pageNo + 1 }&startDate=${requestScope.depositPage.startDate}&endDate=${requestScope.depositPage.endDate }&depositSort=${requestScope.depositPage.depositSort}&depositCondition=${requestScope.depositPage.depositCondition}&depositSearchText=${requestScope.depositPage.depositSearchText}";
	})
	
	 $(function(){
		var date = new Date();
		
		var sysDate = dateformat(date);
		var agoDate = dateformat(new Date(date.setDate(date.getDate() - 14)));
		
		console.log($("#startDate").val() == "")
		
		if($("#startDate").val() == ""){
			$("#startDate").val(agoDate);
		}
		
		if($("#endDate").val() == ""){
			$("#endDate").val(sysDate);
		}
		
		
		
	})
	
	function dateformat(date){
		var year = date.getFullYear();

	    var month = date.getMonth() + 1;

	    if(month<10){
	    	month = '0' + month;
	    }

	    var day = date.getDate();

	    if(day<10){
	    	day = '0' + day;
	    }

		return sysDate = year + "-" + month + "-" + day;
	} 
	
	
	$("#startDate").change(function(){
		
		
		
		var startDate = new Date($(this).val());
		var sysdate = new Date();
		
		if(startDate > sysdate){
			alert("현재 날짜보다 높게  조회할 수 없습니다.");
			var changdate =  dateformat(sysdate);
			$("#startDate").val(changdate);
		}

		
	})
	
	$("#endDate").change(function(){
		
		var startdate = new Date($(this).parent().find("#startDate").val());
		var endDate = new Date($(this).val());
		
		if(startdate > endDate){
			alert("시작 날짜보다 낮게 조회할 수 없습니다.");
			var changdate =  dateformat(new Date());
			$("#endDate").val(changdate);
		}
		
		
		
	})
	
    
    </script>
</body>
</html>