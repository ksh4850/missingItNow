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
	
    .updateCorpUserTable td{
    	/* border: 1px solid black; */
        height: 60px;
        font-size: 20px;
    }
    
    .updateCorpUserTable input{
    	width: 300px; 
    	height: 30px; 
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
        <h1 style="position: relative; left: 20px;">기업회원 정보수정</h1>
        <hr width="1600px" align="left">
        

        <div class="updateCorpUserDiv">
            <form action="${ pageContext.servletContext.contextPath }/corpMng/updateCorpUserInfo" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="corpNo" value="${ corpUserInfo.corpNo }">
                <div class="insertCorpUserImgDiv">
                	<h2 align="center">프로필 이미지 등록</h2>
                	<br>
                	<img class="preview" id="preview" style="border: 1px solid black; width: 300px; height: 300px; margin: 0 auto; position: relative; left: 90px; border-radius: 100%;" 
                	src="${ pageContext.servletContext.contextPath }/resources/corpUserImages/<c:if test="${ empty corpUserInfo.corpImg.corpImgRename }">CorpUserDefaultImg.PNG</c:if>${ corpUserInfo.corpImg.corpImgRename}">
                	<br><br><br>
                	<input type="file" name="corpUserImg" id="corpUserImg" onchange="loadImg(this);" style="position: relative; left: 190px; width: 105px; font-size: 20px;">
                </div>
                
                <table class="updateCorpUserTable">
                	<tr>
                		<td colspan='2' style="color: red; font-size: 16px; padding-left: 420px; vertical-align: bottom;">* 는 수정이 불가합니다.</td>
                	</tr>
                    <tr>
                        <td style="text-align: right; width: 250px; color: red;"> * 아이디 : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpId" value="${ corpUserInfo.corpId }" readonly></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">비밀번호 수정 : </td>
                        <td style="padding-left: 20px;"><input type="password" name="corpPwd" id="corpPwd" onchange="checkPwd()" required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">비밀번호 확인 : </td>
                        <td style="padding-left: 20px;"><input type="password" name="corpPwd2" id="corpPwd2" onchange="checkPwd()" required>&nbsp;<span id="pwdChk"></span></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">대표  연락처 : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpContacts" value="${ corpUserInfo.corpContacts }" placeholder="' - '을 포함하여 작성 바랍니다." required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">이메일 : </td>
                        <td style="padding-left: 20px;"><input type="email" name="corpEmail" value="${ corpUserInfo.corpEmail }"required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; color: red;">* 회사명 : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpName" value="${ corpUserInfo.corpName }" readonly></td>
                    </tr>
                    <tr>
                        <td style="text-align: right; color: red;">* 사업자등록번호 : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpRegistrationNo" value="${ corpUserInfo.corpRegistrationNo }" readonly></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">우편번호 : </td>
                        <td style="padding-left: 20px;">
                            <input type="text" name="corpAddress" id="zipCode" readonly required>
                            <button type="button" id="searchZipCode" style="width: 100px; height: 40px; font-size: 20px; position: relative; left: 30px;">검색</button>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">주소 : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpAddress" id="address1" readonly required></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;">상세주소 : </td>
                        <td style="padding-left: 20px;"><input type="text" name="corpAddress" id="address2" placeholder="상세주소를 입력해 주세요" required></td>
                    </tr>
                </table>
                <br><br><br>
                <button type="submit" style="width: 200px; height: 50px; font-size: 20px; position: relative; left: 600px;">수정하기</button>
            </form>
        </div>	<!-- updateCorpUserDiv 종료 -->
        
    </div> <!-- sectionDiv 종료 -->

    <br clear=both>
    <div class="footer">
        <h1 align="center">footer</h1>
    </div>
	
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
	                document.getElementById('pwdChk').innerHTML = '* 비밀번호가 일치합니다.'
	                document.getElementById('pwdChk').style.color = 'blue';
	            }
	            else{
	                document.getElementById('pwdChk').innerHTML = '* 비밀번호가 일치하지 않습니다.';
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