<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin_main.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
    <style>
        .system-purchase-head{
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }
		
		.system-purchase-list{
		
			width: 1380px;
			margin: 0 auto;
		
		}
		
        .system-purchase-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            font-size: 20px;
           
        }

        .system-purchase-searchBar select,
		.system-purchase-searchBar input[type=search],
		.system-purchase-searchBar input[type=date]{
		
			background-color: #fff;
			border: 1px solid black;
			height: 30px;
			padding-left: 10px;
			padding-right: 10px;
		
		}
        

        .system-purchase-searchBar input[type="submit"] {
            background-color: rgb(119, 94, 238); 
			color: white;
			width: 50px;
			height: 30px;
			border-radius: 8px;
        }

        .system-purchase-info{
             text-align: center; 
             line-height: 2;
             
        }

        

        .system-purchase-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
            
            
       }

       .system-purchase-info td{
            padding-top: 10px;
            
            
       }

        .first-tr  {
            background: rgb(119, 94, 238);
            padding: 5px;
            color: white;
            
        }

        input[type ="search"]{
            width: 300px;
            line-height: 2;
        }

        .system-purchase-info input[type="button"]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px ;
            color: rgb(47, 16, 201);
            padding: 3px;
        }

		.pageButtons{
		
			background-color: #fff;
			border: 1px solid black;
			width: 30px;
			height: 40px;
		
		}
        
        .system-purchase-page{
        
            margin:0 auto;
            
        }

        .system-purchase-searchBar > input[type="date"]{
            border: 2px solid  rgb(119, 94, 238); 
        }
        


    </style>
</head>
<body>
    <header>
		<jsp:include page="../../common/corpMngHeader.jsp"/>
    </header>
	<div style="overflow:hidden; display: flex;">
    <aside>
		<jsp:include page="../../common/corpMngNavi.jsp"/>
    </aside>
    <section>
    <div class="system-purchase-list">
        <div class="system-purchase-head">구매내역</div>
        <br>
        <div class="system-purchase-searchBar">
            <form action="${ pageContext.servletContext.contextPath }/admin/userManage/purchase/list" id="purchaseSearchForm" method="GET">
            <input type="hidden" id="userNo" name="no" value="${ orderSearch.no }">
        	<input type="date" id="searchWriteDateStart" name="searchWriteDateStart" value=<c:if test="${ orderSearch.search.searchWriteDateStart ne null }">"${ orderSearch.search.searchWriteDateStart }"</c:if>> ~
            <input type="date" id="searchWriteDateEnd" name="searchWriteDateEnd" value=<c:if test="${ orderSearch.search.searchWriteDateEnd ne null }">"${ orderSearch.search.searchWriteDateEnd }"</c:if>>
            <select name="largeSearchCondition" style="margin-left: 415px;">
                <option value="all" <c:if test="${ orderSearch.search.largeSearchCondition eq 'all' }">selected</c:if>>전체</option>
                <option value="PRCT0001" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0001' }">selected</c:if>>거실/침실가구</option>
                <option value="PRCT0002" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0002' }">selected</c:if>>학생/서재가구</option>
                <option value="PRCT0003" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0003' }">selected</c:if>>테이블/의자</option>
                <option value="PRCT0004" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0004' }">selected</c:if>>침구/커튼</option>
                <option value="PRCT0005" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0005' }">selected</c:if>>쿠션/방석</option>
                <option value="PRCT0006" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0006' }">selected</c:if>>가전</option>
                <option value="PRCT0007" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0007' }">selected</c:if>>수납/정리</option>
                <option value="PRCT0008" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0008' }">selected</c:if>>조명</option>
                <option value="PRCT0009" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0009' }">selected</c:if>>홈데코</option>
                <option value="PRCT0010" <c:if test="${ orderSearch.search.largeSearchCondition eq 'PRCT0010' }">selected</c:if>>생활용품</option>
            </select>
            <select name="smallSearchCondition">
                <option value="all" <c:if test="${ orderSearch.search.smallSearchCondition eq 'all' }">selected</c:if>>전체</option>
                <option value="prodName" <c:if test="${ orderSearch.search.smallSearchCondition eq 'prodName' }">selected</c:if>>상품이름</option>
                <option value="prodNo" <c:if test="${ orderSearch.search.smallSearchCondition eq 'prodNo' }">selected</c:if>>상품번호</option>
                <option value="orderNo" <c:if test="${ orderSearch.search.smallSearchCondition eq 'orderNo' }">selected</c:if>>주문번호</option>
                <option value="corpId" <c:if test="${ orderSearch.search.smallSearchCondition eq 'corpId' }">selected</c:if>>판매기업ID</option>
                <option value="corpName" <c:if test="${ orderSearch.search.smallSearchCondition eq 'corpName' }">selected</c:if>>판매기업명</option>
            </select>
            <input type="search" name="searchValue" value="${ orderSearch.search.searchValue }">
            <input type="submit" id="searchButton" value="검색"/>
            </form>
        </div>
    
        <br>
    
        <div class="system-purchase-info" >
            <table>
                <tr class="first-tr">
                    <th width=160px;>주문번호</th>
                    <th width=300px;>상품이름</th>
                    <th width=160px;>상품카테고리</th>
                    <th width=200px;>판매자ID</th>
                    <th width=100px;>판매자</th>
                    <th width=200px;>결제금액</th>
                    <th width=160px;>판매일시</th>
                    <th width=100px;>결제상태</th>
                 </tr>
                 <c:forEach items="${ orderList }" var="order">
                 	<tr>
	                    <td><c:out value="${ order.no }"/></td>
	                    <td><c:out value="${ order.product.prodName }"/></td>
	                    <td><c:out value="${ order.product.category.prodCtgName }"/></td>
	                    <td><c:out value="${ order.corpUser.corpId }"/></td>
	                    <td><c:out value="${ order.corpUser.corpName }"/></td>
	                    <td><c:out value="${ order.price }원"/></td>
	                    <td><c:out value="${ order.date }"/></td>
	                    <td>
	                    	<c:choose>
	                    		<c:when test="${ order.dealingStatus eq '입금대기' }">
	                    			미결제
	                    		</c:when>
	                    		<c:otherwise>
	                    			결제완료
	                    		</c:otherwise>
	                    	</c:choose>
	                    </td>
                 	</tr>
                 </c:forEach>
            </table>
        </div>

        <br>

        <div>	
            <table class="system-purchase-page">
                <tr>
                    <c:forEach var="page" begin="${ orderSearch.search.pageInfo.startPage }" end="${ orderSearch.search.pageInfo.endPage }" step="1">
                    	<c:if test="${orderSearch.search.pageInfo.pageNo eq page }">
                    	<td>
							<button class="pageButtons" disabled>
								<c:out value="${ page }" />
							</button>
						</td>
						</c:if>
						<c:if test="${orderSearch.search.pageInfo.pageNo ne page }">
						<td>
							<button class="pageButtons" onclick="pageButtonAction(this.innerText);">
								<c:out value="${ page }"/>
							</button>
						</td>
						</c:if>
                    </c:forEach>
                </tr>
            </table>
        </div>
        </div>
    </section>
    </div>
    <footer>
		<jsp:include page="../../common/footer.jsp"/>
	</footer>
<script>

var no = $("#userNo").val();
var link = "${ pageContext.servletContext.contextPath }/admin/userManage/purchase/list?no=" + no;

function pageButtonAction(text){
	location.href = link + "&currentPage=" + text + "&searchWriteDateStart="
	+ document.getElementsByName("searchWriteDateStart")[0].value
	+ "&searchWriteDateEnd=" + document.getElementsByName("searchWriteDateEnd")[0].value
	+ "&largeSearchCondition=" + document.getElementsByName("largeSearchCondition")[0].value
	+ "&smallSearchCondition=" + document.getElementsByName("smallSearchCondition")[0].value
	+ "&searchValue=" + document.getElementsByName("searchValue")[0].value;
};
</script>
</body>
</html>