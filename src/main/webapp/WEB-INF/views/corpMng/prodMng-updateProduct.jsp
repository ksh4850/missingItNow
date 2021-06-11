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
        min-height: 1100px;
        /* border: 1px solid black; */
    }
    
	.updateProductDiv{
        /* border: 1px solid black; */
        position: relative;
        left: 50px;
        width: 1500px;
    }
    
    .updateProductTable {
    	/* border: 1px solid black; */
    	position: relative;
    	top: 30px;
        left: 30px;
        width: 1500px;
    }

    .updateProductTable td{
        border-bottom: 1px solid darkgray;
        height: 80px;
        font-size: 20px;
        font-family: 'SCDream-Regular';
    }
    
    .updateProductTable input{
    	font-family: 'SCDream-Regular';
    	font-size: 20px;
    	height: 40px;
    }
    
    .prodImgUploadBtn{
    	position: relative; 
    	width: 150px;
    	height: 40px;
    	font-size: 20px;
    	font-family: 'SCDream-Regular';
    	color: white;
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
    	text-align: center;
    	padding-top: 10px;
    	margin: 0;
    	margin-left: 20px;
    }
    
    .previewDiv {
    	/* border: 1px solid black; */
    	width: 1200px;
    	/* height: 500px; */
    	margin-left: 20px;
    	margin-top: 20px;
    }
    
    .previewImgDiv {
    	 display: inline-block;
    	 margin-bottom: 10px;
    	 margin-right: 10px;
    	 border: 2px solid #8877DA;
    	 border-radius: 10px;
    	 padding: 10px;
    	 width: 200px;
    	 height: 200px;
    }
    
    .previewImgs{
    	position: absolute;
    	width: 200px;
		height: 200px;
    }
    
    .delBtn{
    	width: 40px;
    	height: 40px;
        background-color: #8877DA;
        border-radius: 100%;
        font-family: 'SCDream-Medium';
        font-size: 22px;
        color: white;
        border: none;
        float: right;
        opacity: 0.7;
        position: relative;
        right: 5px;
        top: 5px;
        padding: 0;
    }
    
    .prodDetailImgBtn{
    	position: relative; 
    	width: 200px;
    	height: 40px;
    	font-size: 20px;
    	font-family: 'SCDream-Regular';
    	color: white;
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
    	text-align: center;
    	padding-top: 10px;
    	margin: 0;
    	margin-left: 20px;
    	margin-top: 20px;
    }
    
    .prodDetailPreviewDiv {
    	border: 2px solid #8877DA;
    	border-radius: 10px;
    	margin-top: 20px;
    	margin-left: 20px;
    	margin-bottom: 20px;
    	width: 500px;
    	height: 600px;
    }
    
    .prodDetailPreview{
    	border: none;
    	width: 450px;
    	height: 600px;
    	position: relative; 
    	left: 50%;
    	transform: translateX(-50%);
    }
    
    .updateProductBtn{
    	width: 200px; 
    	height: 50px; 
    	font-family: 'SCDream-Regular';
    	color: white;
    	font-size: 20px; 
    	position: relative; 
    	left: 50%;
    	transform: translateX(-50%);
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
    	text-align: center;
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
        <div class="updateProductDiv">
            <form action="${ pageContext.servletContext.contextPath }/prodMng/updateProduct" method="POST" enctype="multipart/form-data">    <!-- form action 명시 필요 -->
                <input type="hidden" name="prodNo" value="${ prodNo }">
                <table class="updateProductTable">
                	<tr>
                		<td colspan='2' style="color: red; font-size: 16px; height: 30px; text-align: right; vertical-align: bottom; border: none;">* 는 수정이 불가합니다.</td>
                	</tr>
                    <tr>
                        <td style="text-align: right; width: 200px;">카테고리 : </td>
                        <td style="width: 1200px; text-indent: 20px;">
                            <select name="prodCtgNo" style="width: 400px; font-family: 'SCDream-Regular'; height: 40px; font-size: 20px;">
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
                        <td style="text-align: right; color: red;">* 상품명 : </td>
                        <td style="text-indent: 20px;">
                            <input type="text" name="prodName" style="width: 500px;" value="${productList[0].prodName}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">상품 이미지 : <br>
                            <p style="margin: 0; font-size: 14px;">(최소 1개/최대 10개)&nbsp;</p>
                        </td>
                        <td style="min-height: 300px;">
                        	<input type="file" id="prodImg" name="prodImg" multiple required hidden>
                        	<div id="previewDiv" class="previewDiv">
                        		<div class="previewImgDiv">
	                        		<label for="prodImg" id="prodImgUploadBtnLabel"><img src="${ pageContext.servletContext.contextPath }/resources/images/insertButton.png" class="previewImgs"></label>
                        		</div>
							</div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; color: red;">* 등록 판매가 : </td>
                        <td style="text-indent: 20px;">
                            <input type="number" min="10" name="prodPrice" style="width: 200px; text-align: right;" 
                            		value="${productList[0].prodPrice}" readonly> 원
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">적용 할인율 : </td>
                        <td style="text-indent: 20px;">
                            <input type="number" name="prodDiscountRate" style="width: 200px; text-align: right;" 
                            		value="${productList[0].prodDiscountRate}"> %
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; color: red;">* 할인 적용가 : </td>
                        <td style="text-indent: 20px;">
                            <input type="number" name="prodDiscountedPrice" style="width: 200px; text-align: right;" 
                            		value="${productList[0].prodDiscountedPrice}" readonly> 원
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">할인 종료일 : </td>
                        <td style="text-indent: 20px;">
                            <input type="date" id="prodDiscountPeriod" name="prodDiscountPeriod" style="width: 200px; text-align: center;">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">상품 상세설명 : </td>
                        <td>
                            <input type="file" name="prodImg" id="prodDetailImg" required hidden>
                            <div class="prodDetailImgBtn"><label for="prodDetailImg"> 상세 이미지 선택</label></div>
                            <div class="prodDetailPreviewDiv"> <img class="prodDetailPreview" id="prodDetailPreview"> </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; color: red;">* 판매 종료일 : </td>
                        <td style="text-indent: 20px;">
                            <input type="date" name="prodTerminateDate" style="width: 200px; text-align: center;" value="${productList[0].prodTerminateDate}">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">현재 재고 수량 : </td>
                        <td style="text-indent: 20px;">
                            <input type="text" name="stockQuantity" style="width: 200px; text-align: right;"
                            		value="${productList[0].stockQuantity}"> 개
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">상품노출 여부 : </td>
                        <td style="text-indent: 20px;">
                            <select name="prodDisplayChk" style="width: 100px; font-family: 'SCDream-Regular'; height: 40px; font-size: 20px;" required>
                                <option value="Y">Y</option>
                                <option value="N">N</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <br><br>
                <button type="submit" class="updateProductBtn">상품 수정</button>
            </form>
        </div>
        <br><br><br><br>
	</div>	<!-- sectionDiv 종료 -->
	
	<br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>

	<script>
		const dateInput = document.getElementById('prodDiscountPeriod');
		dateInput.valueAsDate = new Date();
		
		$(document).on('click','#prodImg',function(){
			$("input[id='prodImg']").change(function(e){
	
		          $('#previewDiv').empty();
		    
		          var files = e.target.files;
		          var arr = Array.prototype.slice.call(files);
		          
		          preview(arr);
		          
		        });
	
				function preview(arr){
					if(arr.length <= 10){
						arr.forEach(function(f){
							//div에 이미지 추가
							var str = '<div class="previewImgDiv">';
						
							//이미지 파일 미리보기
							if(f.type.match('image.*')){
								var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
								
								reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
									str += '<img id="preview" class="previewImgs" src="'+e.target.result+'"/>';
									str += '<button type="button" class="delBtn">x</button>';
									str += '</div>';
									$(str).appendTo('#previewDiv');
									
								} 
								reader.readAsDataURL(f);
							}
						}); //arr.forEach
						
					} else {
						alert('업로드 확장자 또는 수량을 확인하여 주세요.');
					}
		      	};
		});
	  
		$(document).on('click','.delBtn',function(){
			$(this).parent().remove();
		});
		
		
		$(document).on('click','.prodDetailImgBtn',function(){
			$("input[id='prodDetailImg']").change(function(e){
			
				$('#prodDetailPreviewDiv').empty();
				var value = e.target;
				
				uploadProdDetailImg(value);
			});
			
			function uploadProdDetailImg(value){
				
				  if (value.files && value.files[0]) {
					  
		             var reader2 = new FileReader();
		             
		             reader2.onload = function (e) {
		                 $('#prodDetailPreview').attr('src', e.target.result);
		             }
		             
		             reader2.readAsDataURL(value.files[0]);
			      }
			};
		});
		
		
		
	</script>	
	
</body>
</html>














