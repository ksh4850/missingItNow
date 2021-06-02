<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <%-- <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css"> --%>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin_main.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
    <style>
   
        .system-settlement-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-settlement-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 70px;
            font-size: 20px;
           
        }

        .system-settlement-searchBar>select{
            border: 2px solid rgb(119, 94, 238);
            font-size: 18px;
        }


        .system-settlement-searchBar > input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
        }

        .system-settlement-searchBar > input[type="button"] {
            font-size: 18px;
            padding: 3px;
            background-color: rgb(119, 94, 238);
        }
       
        

        .system-settlement-info{
             margin-left: 70px;
             text-align: center; 
             line-height: 2;
        }

        

        .system-settlement-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
       }

       .system-settlement-info td{
            padding-top: 10px;
            
            
       }

        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(9) {border-radius:0 15px 15px 0;}

        input[type ="search"]{
            width: 300px;
            line-height: 2;
        }

        .system-settlement-info input[type="button"]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px ;
            color: rgb(47, 16, 201);
            padding: 3px;
        }

        .system-settlement-info input[type="checkbox"]{
           
           border: 1px solid black;
           margin-top: 6px;
       }

       .system-settlement-info label{
           color: red;
       }

        
        .system-settlement-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }

        .system-settlement-searchBar > input[type="date"]{
            border: 2px solid  rgb(119, 94, 238); 
        }
        



    </style>

</head>
<body>
    <header>

    </header>

    <aside>

    </aside>
    <section>
        <div class="system-settlement-head">정산내역</div>
        <br>
        <div class="system-settlement-searchBar">
        <form action="${ pageContext.servletContext.contextPath }/admin/settlement/breakdown" id="settlementSearchForm" method="GET">
            <input type="date" id="searchWriteDateStart" name="searchWriteDateStart" value=<c:if test="${ search.searchWriteDateStart ne null }">"${ search.searchWriteDateStart }"</c:if>> ~
            <input type="date" id="searchWriteDateEnd" name="searchWriteDateEnd" value=<c:if test="${ search.searchWriteDateEnd ne null }">"${ search.searchWriteDateEnd }"</c:if>>
            <select name="largeSearchCondition" style="margin-left: 530px;">
                <option value="all" <c:if test="${ search.largeSearchCondition eq 'all' }">selected</c:if>>전체</option>
                <option value="settlement" <c:if test="${ search.largeSearchCondition eq 'settlement' }">selected</c:if>>정산</option>
                <option value="noneSettlement" <c:if test="${ search.largeSearchCondition eq 'noneSettlement' }">selected</c:if>>미정산</option>
            </select>
            <select name="smallSearchCondition">
                <option value="id" <c:if test="${ search.smallSearchCondition eq 'id' }">selected</c:if>>아이디</option>
                <option value="name" <c:if test="${ search.smallSearchCondition eq 'name' }">selected</c:if>>기업명</option>
                <option value="contacts" <c:if test="${ search.smallSearchCondition eq 'contacts' }">selected</c:if>>주소</option>
            </select>
            <input type="search" name="searchValue" width="300px" value="${ search.searchValue }">
            <input type="button" id="searchButton" value="검색"/>
            <br>
            <br>
        </form>
            
            
        </div>
        
        <div class="system-settlement-info" >
            <table>
                <tr class="first-tr">
                    <th width=160px;>정산 신청 번호</th>
                    <th width=160px;>아이디</th>
                    <th width=160px;>기업명</th>
                    <th width=160px;>정산 신청일</th>
                    <th width=160px;>정산 만료일</th>
                    <th width=250px;>정산 금액</th>
                    <th width=160px;>수수료 비율</th>
                    <th width=80px;><input type="checkbox" id="allCheckboxController"></th>
                    <th width=80px;>상태</th>
                 </tr>
                 <c:forEach items="${ settlementList }" var="settlement">
                 	<tr>
	                    <td><c:out value="${ settlement.settlementNo }"/></td>
	                    <td><c:out value="${ settlement.corpUser.corpId }"/></td>
	                    <td><c:out value="${ settlement.corpUser.corpName }"/></td>
	                    <td><c:out value="${ settlement.settlementStartDate }"/></td>
	                    <td><c:out value="${ settlement.settlementEndDate }"/></td>
	                    <td><c:out value="${ settlement.totalSales }"/></td>
	                    <td><c:out value="${ settlement.commissionBySales }"/></td>
	                    <td>
		                    <c:if test="${ settlement.settlementChk eq 'N' }">
	                    		<input type="checkbox" name="ischecked" style="width: 20px; height: 20px;">
	                    	</c:if>
                    	</td>
	                    <td>
		                    <c:choose>
		                    	<c:when test="${ settlement.settlementChk eq 'Y' }">
		                    		정산완료
		                    	</c:when>
		                    	<c:when test="${ settlement.settlementChk eq 'N' }">
		                    		미정산
		                    		<input type="button" value="정산하기">
		                    	</c:when>
		                    </c:choose>
	                    </td>
                 	</tr>
                 </c:forEach>
            </table>
        </div>

        <br>

		<button type="button" id="settlementButton">정산하기</button>

        <div  align="center">
            <table>
                <tr class="system-settlement-page">
                    <c:forEach var="page" begin="${ search.pageInfo.startPage }" end="${ search.pageInfo.endPage }" step="1">
                    	<c:if test="${search.pageInfo.pageNo eq page }">
                    	<td>
							<button disabled>
								<c:out value="${ page }" />
							</button>
						</td>
						</c:if>
						<c:if test="${search.pageInfo.pageNo ne page }">
						<td>
							<button onclick="pageButtonAction(this.innerText);">
								<c:out value="${ page }" />
							</button>
						</td>
						</c:if>
                    </c:forEach>
                </tr>
            </table>
        </div>
    </section>
<script>
function pageButtonAction(text){
	location.href = link + "?currentPage=" + text + "&searchWriteDateStart="
	+ document.getElementsByName("searchWriteDateStart")[0].value
	+ "&searchWriteDateEnd=" + document.getElementsByName("searchWriteDateEnd")[0].value
	+ "&largeSearchCondition=" + document.getElementsByName("largeSearchCondition")[0].value
	+ "&smallSearchCondition=" + document.getElementsByName("smallSearchCondition")[0].value
	+ "&searchValue=" + document.getElementsByName("searchValue")[0].value;
};

$("#settlementButton").click(function(){
	
	var settlementNo = [];
	var checkboxs = document.getElementsByName("ischecked");
	for(var i = 0 ; i < checkboxs.length ; i++){
		
		if($(checkboxs[i]).prop("checked")){
			
			settlementNo[settlementNo.length] = checkboxs[i].parentNode.parentNode.children[0].innerText;
			
		}
		
	}
	
	if(settlementNo.length != 0){
		
		var newForm = $('<form></form>'); 
		
		newForm.attr("name","newForm");
		newForm.attr("method","post"); 
		newForm.attr("action","${ pageContext.servletContext.contextPath }/admin/settlement/progress"); 
		
		for(var i = 0 ; i < settlementNo.length ; i++){
			
			newForm.append($('<input/>', {type: 'hidden', name: 'data', value:settlementNo[i] })); 
			
		}
		
		newForm.appendTo('body'); 
		
		newForm.submit();

	}
	
});

$("#allCheckboxController").change(function(){
	
	var checkboxs = document.getElementsByName("ischecked");
	if($("#allCheckboxController").prop("checked")){
		
		for(var i = 0 ; i < checkboxs.length ; i++){
			
			$(checkboxs[i]).prop("checked", true);
			
		}
		
	} else {
		
		for(var i = 0 ; i < checkboxs.length ; i++){
			
			$(checkboxs[i]).prop("checked", false);
			
		}
		
	}
	
});

$("#searchButton").click(function(){
	
	$("#settlementSearchForm").submit();
	
});
</script>
</body>
</html>