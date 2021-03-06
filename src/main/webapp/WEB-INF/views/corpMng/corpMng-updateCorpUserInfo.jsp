<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<style>
	body{
        width: 1920px;
        /* min-height: 1900px; */
        margin: 0 auto;
	}
	
    .section{
        position: relative;
        float: right;
        width: 1650px;
        min-height: 1100px;
        /* border: 1px solid black; */
    }
    
	.updateCorpUserDiv{
        /* border: 1px solid black; */
        position: relative;
        left: 150px;
        width: 1400px;
    }
    
    .insertCorpUserImgDiv{
    	width: 500px;
    	height: 650px;
    	/* border: 1px solid black; */
    	float: left;
    	margin-top: 50px;
    }
    
    #corpUserImgBtn{
    	display: block;
    	position: relative; 
    	left: 50%;
    	transform: translateX(-50%); 
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
    }
    
    .updateCorpUserTable {
    	/* border: 1px solid black; */
    	position: relative;
    	left: 50px;
    	margin: 0;
    	width: 900px;
    }
	
    .updateCorpUserTable td{
    	/* border: 1px solid black; */
    	border-bottom: 1px solid darkgray;
    	font-family: 'SCDream-Regular';
        height: 80px;
        font-size: 20px;
    }
    
    .updateCorpUserTable input{
    	font-family: 'SCDream-Regular';
    	width: 300px; 
    	height: 40px;
    	font-size: 20px;
    }
    
    #searchZipCode{
    	position: relative; 
    	width: 100px;
    	height: 40px;
    	font-family: 'SCDream-Regular';
    	font-size: 20px; 
    	color: white;
    	left: 30px;
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
    }
    
    #CorpUserInfoUpdateBtn {
    	position: relative; 
    	width: 200px; 
    	height: 50px; 
    	font-size: 20px; 
    	color: white;
    	font-family: 'SCDream-Regular';
    	background-color: #8877DA;
    	border: none;
    	border-radius: 10px;
    	left: 50%;
    	transform: translateX(-50%);
    	margin-top: 50px;
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
        <h1 style="position: relative; left: 20px;">???????????? ????????????</h1>
        <hr width="1600px" align="left">
        

        <div class="updateCorpUserDiv">
            <form action="${ pageContext.servletContext.contextPath }/corpMng/updateCorpUserInfo" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="corpNo" value="${ corpUserInfo.corpNo }">
                <div class="insertCorpUserImgDiv">
                	<h2 style="font-family: 'SCDream-Regular';" align="center">????????? ????????? ??????</h2>
                	<br>
                	<img class="preview" id="preview" style="border: 1px solid #8877DA; width: 300px; height: 300px; margin: 0 auto; position: relative; left: 90px; border-radius: 100%;" 
                		src="${ pageContext.servletContext.contextPath }/resources/corpUserImages/<c:if test="${ empty corpUserInfo.corpImg.corpImgRename }">CorpUserDefaultImg.png</c:if>${ corpUserInfo.corpImg.corpImgRename}">
                	<br><br><br>
                	<input type="file" name="corpUserImg" id="corpUserImg" onchange="loadImg(this);" hidden><label for="corpUserImg" id="corpUserImgBtn">????????? ??????</label>
                </div>
                
                <table class="updateCorpUserTable">
                	<tr>
                		<td colspan='2' style="color: red; font-size: 16px; padding-left: 420px; vertical-align: bottom; border: none;">* ??? ????????? ???????????????.</td>
                	</tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px; width: 230px; color: red;"> * ????????? : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpId" value="${ corpUserInfo.corpId }" readonly></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">???????????? ?????? : </td>
                        <td style="padding-left: 20px;"><input type="password" name="corpPwd" id="corpPwd" onchange="checkPwd()" required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">???????????? ?????? : </td>
                        <td style="padding-left: 20px;"><input type="password" name="corpPwd2" id="corpPwd2" onchange="checkPwd()" required><span id="pwdChk" style="margin-left: 20px;"></span></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">??????  ????????? : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpContacts" value="${ corpUserInfo.corpContacts }" placeholder="' - '??? ???????????? ?????? ????????????." required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">????????? : </td>
                        <td style="padding-left: 20px;"><input type="email" name="corpEmail" value="${ corpUserInfo.corpEmail }"required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; color: red; padding-right: 20px;">* ????????? : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpName" value="${ corpUserInfo.corpName }" readonly></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; color: red; padding-right: 20px;">* ????????????????????? : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpRegistrationNo" value="${ corpUserInfo.corpRegistrationNo }" readonly></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">???????????? : </td>
                        <td style="padding-left: 20px;">
                            <input type="text" name="corpAddress" id="zipCode" readonly required>
                            <button type="button" id="searchZipCode">??????</button>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">?????? : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpAddress" id="address1" readonly required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; padding-right: 20px;">???????????? : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpAddress" id="address2" placeholder="??????????????? ????????? ?????????" required></td>
                    </tr>
                </table>
                <br><br><br>
                <button type="submit" id="CorpUserInfoUpdateBtn">????????????</button>
            </form>
        </div>	<!-- updateCorpUserDiv ?????? -->
        <br><br><br><br>
    </div> <!-- sectionDiv ?????? -->

    <br clear=both>
    <!-- <div class="footer">
        <h1 align="center">footer</h1>
    </div> -->
	
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
		$searchZipCode.onclick = function(){
			new daum.Postcode({
				oncomplete : function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
		
		function checkPwd(){
			if(document.getElementById('corpPwd').value !='' && document.getElementById('corpPwd2').value!=''){
	            if(document.getElementById('corpPwd').value == document.getElementById('corpPwd2').value){
	                document.getElementById('pwdChk').innerHTML = '* ??????????????? ???????????????.'
	                document.getElementById('pwdChk').style.color = 'blue';
	            }
	            else{
	                document.getElementById('pwdChk').innerHTML = '* ??????????????? ???????????? ????????????.';
	                document.getElementById('pwdChk').style.color = 'red';
	            }
	        }
		}
		
		function loadImg(value){
			
			if (value.files && value.files[0]) {
				
                var reader = new FileReader();
                
                reader.onload = function (e) {
                    $('#preview').attr('src', e.target.result);  
                }
                
                reader.readAsDataURL(value.files[0]);
        	}
		}
		
		
	</script>
	
	
	
	
</body>
</html>