<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
    
	.updateProductDiv{
        /* border: 1px solid black; */
        position: relative;
        left: 50px;
        width: 1500px;
    }

    .updateProductTable td{
        height: 60px;
        font-size: 20px;
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
        <h1 style="position: relative; left: 20px;">등록 상품 수정</h1>
        <hr width="1600px" align="left">
        <br><br>
        <div class="updateProductDiv">
            <form action="${ pageContext.servletContext.contextPath }/prodMng/updateProduct" method="POST" enctype="multipart/form-data">    <!-- form action 명시 필요 -->
                <input type="hidden" name="prodNo" value="${ prodNo }">
                <table class="updateProductTable">
                    <tr>
                        <td style="text-align: right; width: 200px;">* 카테고리 : </td>
                        <td style="width: 1200px; text-indent: 20px;">
                            <select name="prodCtgNo" style="width: 400px; height: 30px; font-size: 20px;">
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
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">상품명 : </td>
                        <td style="text-indent: 20px;">
                            <input type="text" name="prodName" style="width: 900px; height: 30px; font-size: 20px;" value="${productList[0].prodName}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">* 상품 이미지 : <br>
                            <p style="margin: 0; font-size: 14px;">(최소 1개/최대 10개)&nbsp;</p>
                        </td>
                        <td style="text-indent: 20px; height: 100px;">
                            <input type="file" name="prodImg" style="height: 30px; font-size: 18px;" multiple required>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">등록 판매가 : </td>
                        <td style="text-indent: 20px;">
                            <input type="number" min="10" name="prodPrice" style="width: 200px; height: 30px; font-size: 20px; text-align: right;" value="${productList[0].prodPrice}" readonly> 원
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">적용 할인율 : </td>
                        <td style="text-indent: 20px;">
                            <input type="number" name="prodDiscountRate" style="width: 200px; height: 30px; font-size: 20px; text-align: right;" value="0"> %
                        </td>
                    </tr>
                        <td style="text-align: right;">할인 종료일 : </td>
                        <td style="text-indent: 20px;">
                            <input type="date" id="prodDiscountPeriod" name="prodDiscountPeriod" style="width: 200px; height: 30px; font-size: 16px; text-align: center;">
                        </td>
                    <tr>
                        <td style="text-align: right;">* 상품 상세설명 : </td>
                        <td style="text-indent: 20px;">
                            <input type="text" name="prodDetails" style="width: 900px; height: 30px; font-size: 20px;" placeholder=" 텍스트로 할것인지 이미지로 할것인지..." required>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">* 판매 종료일 : </td>
                        <td style="text-indent: 20px;">
                            <input type="date" name="prodTerminateDate" style="width: 200px; height: 30px; font-size: 16px; text-align: center;" required>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">* 현재 재고 수량 : </td>
                        <td style="text-indent: 20px;">
                            <input type="text" name="stockQuantity" style="width: 200px; height: 30px; font-size: 20px; text-align: right;" required> 개
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">* 키워드 등록 : <br>
                            <p style="margin: 0; font-size: 14px;">(최소 1개/최대 5개)&nbsp;</p>
                        </td>
                        <td style="text-indent: 20px;">
                            <input type="text" name="keywordsSet" style="width: 200px; height: 30px; font-size: 20px;" required>
                            <input type="text" name="keywordsSet" style="width: 200px; height: 30px; font-size: 20px;">
                            <input type="text" name="keywordsSet" style="width: 200px; height: 30px; font-size: 20px;">
                            <input type="text" name="keywordsSet" style="width: 200px; height: 30px; font-size: 20px;">
                            <input type="text" name="keywordsSet" style="width: 200px; height: 30px; font-size: 20px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">* 상품노출 여부 : </td>
                        <td style="text-indent: 20px;">
                            <select name="prodDisplayChk" style="width: 100px; height: 30px; font-size: 20px;" required>
                                <option value="Y">Y</option>
                                <option value="N">N</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">연관상품 등록 : </td>
                        <td style="text-indent: 20px;">
                            <h3>그룹만들기 기능 + 기존에 등록한 상품을 조회하여 해당 상품과 연결</h3>
                            <h3>아니면...조회/수정에서 등록하는 방법</h3>
                        </td>
                    </tr>
                </table>
                <br><br>
                <button type="submit" style="width: 200px; height: 50px; font-size: 20px; position: relative; left: 600px;">상품 수정</button>
            </form>
        </div>
        
	</div>	<!-- sectionDiv 종료 -->
	
	<br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>

	<script>
		const dateInput = document.getElementById('prodDiscountPeriod');
		dateInput.valueAsDate = new Date();
	</script>	
	
</body>
</html>














