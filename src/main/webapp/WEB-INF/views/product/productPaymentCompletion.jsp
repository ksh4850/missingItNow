<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    
</head>

<body>
<jsp:include page="../common/header.jsp"/>
    <section>
    	결재 완료 홈으로 돌아가기
    	<table class="product-table">
                    <tr>
                        <td class="product-table-row-1"><img src="${ pageContext.servletContext.contextPath }/resources/images/uploadFiles/1.jpg" alt="" width="130px"></td>
                        <td class="product-table-row-2"><c:out value="${ productList[0].prodName }" /></td>
                        <td class="product-table-row-3">1개</td>
                        <td class="product-table-row-4">8,000원<br><span class="product-price"><del><c:out value="${ productList[0].prodPrice }" />원</del></span>
                        </td>
                        <td class="product-table-row-5">무료배송</td>
                    </tr>
        </table>
        <a href="${ pageContext.servletContext.contextPath }/main/main"><img class="logo-png" src="${ pageContext.servletContext.contextPath }/resources/images/logo.png" class="icons_img" alt="" width="80px"></a>
    </section>
    <jsp:include page="../common/footer.jsp"/>
</body>

</html>