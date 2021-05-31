<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<style>
	body{
        width: 1920px;
        min-height: 1900px;
        margin: 0 auto;
	}
	
    .section{
        position: relative;
        float: right;
        width: 1650px;
        min-height: 700px;
        /* border: 1px solid black; */
    }
    
    .prodListTable{
        border: hidden;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;
        text-align: center;
        width: 1500px;
    }

    .prodListTable td{
        border: 1px solid black;
        font-size: 20px;
        height: 50px;
    }
    
    .footer{
        width: 1920px;
        height: 100px;
        border: 1px solid black;
        text-align: center;
    }
</style>
<body>
	<!-- header jsp -->
	<jsp:include page="corpMngHeader.jsp"/>
	<!-- navi jsp -->
	<jsp:include page="corpMngNavi.jsp"/>

    <div class="section">
        <h1 style="position: relative; left: 20px;">등록 상품 조회/수정</h1>
        <hr width="1600px" align="left">
        <br><br>
        <div style="font-size: 20px;">
            <div style="position: relative; left: 100px;">
                <input type="radio" id="radioCategory" name="chooseMethod" value="radioCategory" checked><label for="radioCategory">카테고리 조회</label>
                <input type="radio" id="radioProdName" name="chooseMethod" value="radioProdName"><label for="radioProdName">상품명 조회</label>
            </div>
            <br>
            
            <form id="selectByCtgForm" action="${ pageContext.servletContext.contextPath }/prodMng/selectProductByCtg" method="POST">     <!-- form action 명시 필요 -->
                <div id="radioCategory" style="position: relative; left: 100px;">
                    <h3 style="display: inline; position: relative; vertical-align: middle;">카테고리 : </h3>
                    <select name="prodCtgNo" style="position: relative; left: 20px; vertical-align: middle; width: 400px; height: 30px; font-size: 20px;">
                        <option value="PRCT0001">거실/침실가구</option>
                        <option value="PRCT0002">학생/서재가구</option>
                        <option value="PRCT0003">테이블/의자</option>
                        <option value="PRCT0004">침구/커튼</option>
                        <option value="PRCT0005">쿠션/방석</option>
                        <option value="PRCT0006">가전</option>
                        <option value="PRCT0007">수납/정리</option>
                        <option value="PRCT0008">조명</option>
                        <option value="PRCT0009">홈데코</option>
                        <option value="PRCT0010">생활용품</option>
                    </select>
                    <button type="submit" style="width: 100px; height: 30px; font-size: 20px; position: relative; vertical-align: middle; left: 50px;">조회</button>
                </div>
            </form>	
            
            <form id="selectByProdNameForm" action="${ pageContext.servletContext.contextPath }/prodMng/selectProductByProdName" method="POST" hidden>
           		<div id="radioProdName" style="position: relative; left: 100px;">
                    <h3 style="display: inline; position: relative; vertical-align: middle;">상품명 : </h3>
                    <input type="text" name="prodName" style="position: relative; left: 20px; vertical-align: middle; width: 400px; height: 30px; font-size: 20px;">
                    <button type="submit" style="width: 100px; height: 30px; font-size: 20px; position: relative; vertical-align: middle; left: 50px;">조회</button>
                </div>
            </form>
            <br>
        </div>

        <br><br>
        <div class="prodListDiv" align="center">
            <table class="prodListTable">
                <tr>
                    <td style="width: 180px">카테고리명</td>
                    <td style="width: 180px">상품번호</td>
                    <td>상품명</td>
                    <td style="width: 150px">판매가 (원)</td>
                    <td style="width: 180px">등록일</td>
                    <td style="width: 180px">판매종료일</td>
                    <td style="width: 100px">노출여부</td>
                    <td style="width: 150px">수정</td>
                </tr>
                <c:if test="${ empty productList }">
                	<tr>
                		<td colspan="8"><h3 align="center">선택하신 조건으로 등록된 상품이 없습니다.</h3></td>
                	</tr>
                </c:if>
                
                <c:forEach var="list" items="${ productList }">
                <tr>
                    <td><c:out value="${ list.category.prodCtgName }"/></td>
                    <td><c:out value="${ list.prodNo }"/></td>
                    <td style="text-align: left; padding-left: 20px;"><c:out value="${ list.prodName }"/></td>
                    <td style="text-align: right; padding-right: 20px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ list.prodPrice }"/></td>
                    <td><c:out value="${ list.prodUploadDate }"/></td>
                    <td><c:out value="${ list.prodTerminateDate }"/></td>
                    <td><c:out value="${ list.prodDisplayChk }"/></td>
                    <td><button onclick="location.href='${ pageContext.servletContext.contextPath }/prodMng/updateProduct/${ list.prodNo }'" style="width: 100px; height: 30px; font-size: 16px;">정보수정</button></td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div> <!-- sectionDiv 종료-->
    
    <br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
	<script>
		$(function(){
			$('input:radio[name=chooseMethod]').click(function(){
				var term = $(this).val();
				if(term == 'radioCategory'){
					$('#selectByCtgForm').show();
					$('#selectByProdNameForm').hide();
				}
				else if(term == 'radioProdName'){
					$('#selectByProdNameForm').show();
					$('#selectByCtgForm').hide();
				}
			})
		});
	</script>
	
	
	
	
</body>
</html>