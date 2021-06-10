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
        .system-user-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238);
            color: rgb(119, 94, 238);

        }

        .system-user-searchBar{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left:  250px;
            font-size: 20px;
           
        }

        .system-user-searchBar>select{
            font-size: 18px;
        }


        .system-user-searchBar > input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
            width: 400px;
            line-height: 2;
        }

        .system-user-searchBar > input[type="button"] {
            font-size: 18px;
            padding: 3px;
            background-color: rgb(119, 94, 238);
        }
       
        

        .system-user-info{
             margin-left: 180px;
             text-align: center; 
             line-height: 2;
        }

        

        .system-user-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
            
            
       }

       .system-user-info td{
            padding-top: 10px;
            
            
       }

        .first-tr {
            background: rgb(119, 94, 238);
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(10) {border-radius:0 15px 15px 0;}

        input[type ="search"]{
            width: 300px;
            line-height: 2;
        }

        .system-user-info input[type="button"]{
           
            border: 1px solid rgb(119, 94, 238);
            border-radius: 5px ;
            color: rgb(47, 16, 201);
            padding: 3px;
        }

        
        .system-user-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }
        


    </style>
</head>
<body>
    <header>
		<jsp:include page="../../common/corpMngHeader.jsp"/>
    </header>

    <aside>
		<jsp:include page="../../common/corpMngNavi.jsp"/>
    </aside>
    <section>
        <div class="system-user-head">회원정보</div>
        <br>
        <div class="system-user-searchBar" >
        	<form action="${ pageContext.servletContext.contextPath }/admin/userManage/list" id="userSearchForm" method="GET">
        	<input type="date" id="searchWriteDateStart" name="searchWriteDateStart" value=<c:if test="${ search.searchWriteDateStart ne null }">"${ search.searchWriteDateStart }"</c:if>> ~
            <input type="date" id="searchWriteDateEnd" name="searchWriteDateEnd" value=<c:if test="${ search.searchWriteDateEnd ne null }">"${ search.searchWriteDateEnd }"</c:if>>
            <select name="largeSearchCondition">
                <option value="all" <c:if test="${ search.largeSearchCondition eq 'all' }">selected</c:if>>전체</option>
                <option value="active" <c:if test="${ search.largeSearchCondition eq 'active' }">selected</c:if>>일반회원</option>
                <option value="leave" <c:if test="${ search.largeSearchCondition eq 'leave' }">selected</c:if>>탈퇴회원</option>
            </select>
            <select name="smallSearchCondition" width="50px">
                <option value="all" <c:if test="${ search.smallSearchCondition eq 'all' }">selected</c:if>>전체</option>
                <option value="id" <c:if test="${ search.smallSearchCondition eq 'id' }">selected</c:if>>아이디</option>
                <option value="name" <c:if test="${ search.smallSearchCondition eq 'name' }">selected</c:if>>이름</option>
                <option value="address" <c:if test="${ search.smallSearchCondition eq 'address' }">selected</c:if>>주소</option>
                <option value="contacts" <c:if test="${ search.smallSearchCondition eq 'contacts' }">selected</c:if>>전화번호</option>
            </select>
            <input type="search" name="searchValue" value="${ search.searchValue }">
            <input type="submit" id="searchButton" value="검색"/>
            </form>
        </div>
    
        <br>
    
        <div class="system-user-info" >
            <table>
                <tr class="first-tr">
                    <th width=80px;>회원번호</th>
                    <th width=80px;>아이디</th>
                    <th width=80px;>이름</th>
                    <th width=80px;>생년월일</th>
                    <th width=160px;>주소</th>
                    <th width=160px;>전화번호</th>
                    <th width=160px;>이메일</th>
                    <th width=80px;>가입일</th>
                    <th width=80px;>회원상태</th>
                    <th width=80px;>관리</th>
                 </tr>
                 <c:forEach items="${ userList }" var="user">
                 <tr>
                     <td><c:out value="${ user.no }"/></td>
                     <td><c:out value="${ user.id }"/></td>
                     <td><c:out value="${ user.name }"/></td>
                     <td><c:out value="${ user.birth }"/></td>
                     <td><c:out value="${ user.address }"/></td>
                     <td><c:out value="${ user.contacts }"/></td>
                     <td><c:out value="${ user.email }"/></td>
                     <td><c:out value="${ user.registDate }"/></td>
                     <td><c:if test="${ user.leaveChk eq 'N' }">활동중</c:if><c:if test="${ user.leaveChk eq 'Y' }">탈퇴</c:if></td>
                     <td><input type="button" class="purchaseListButton" value="구매내역"><input type="button" class="userDataUpdateButton" value="회원정보 수정"></td>
                 </tr>
                 </c:forEach>
            </table>
        </div>

        <br>

        <div  align="center">
            <table>
                <tr class="system-user-page">
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
	+ "&searchCondition=" + document.getElementsByName("searchCondition")[0].value
	+ "&searchValue=" + document.getElementsByName("searchValue")[0].value;
};

$(".purchaseListButton").click(function(){
	
	var no = this.parentNode.parentNode.children[0].innerText;
	
	location.href = "${ pageContext.servletContext.contextPath }/admin/userManage/purchase/list?no=" + no; 
			
});

$(".userDataUpdateButton").click(function(){
	
	
	
});
</script>
</body>
</html>