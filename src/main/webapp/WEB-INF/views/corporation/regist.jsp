<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/corporation/business-member-regist.css">
    <title>Document</title> 
</head>
<body>
<section>
	<form action="${ pageContext.servletContext.contextPath }/corporation/regist" method="post" enctype="multipart/form-data">
        <div class="main-Title">기업 회원가입</div>
        <div class="input-many">
            <div class="input-label">아이디 : </div> <input class="aa" type="text" name="corpId" placeholder="아이디를 입력해 주세요" required>
        </div>
        <div class="input-many">
            <div class="input-label">비밀번호 : </div><input type="password" name="corpPwd" placeholder="비밀번호를 입력해 주세요" required>
        </div>
        <div class="input-many">
            <div class="input-label">비밀번호 확인: </div><input type="password" name="corpPwd2" placeholder="비밀번호를 입력해 주세요" required>
        </div>
        <div class="input-many">
            <div class="input-label">회사명 : </div> <input type="text" name="corpName" placeholder="회사명을 입력해 주세요" required>
        </div>
        <div class="input-many">
            <div class="input-label">이메일 : </div><input type="email" name="corpEmail" placeholder="이메일을 입력해 주세요" required>
        </div>
        <div class="input-many">
            <div class="input-label">대표 번호 : </div><input type="text" name="corpContacts" placeholder="'-'를 포함하여 입력해 주세요" required>
        </div>
        <div class="input-many">
            <div class="input-label">사업자 등록번호 : </div><input name="corpRegistrationNo" type="text" placeholder="사업자 등록번호를 '-'없이 입력해 주세요" required>
        </div>
            <div class="input-many">
                <div class="input-label">우편번호 : </div><input type="text" name="corpAddress" id="zipCode" required>
                <button type="button" id="searchZipCode">검색</button>
            </div>
            <div class="input-many">
                <div class="input-label" id="aa">주소 : </div><input type="text" name="corpAddress" id="address1" required>
                </div>
            <div class="input-many">
            <div class="input-label" id="bb">상세주소 : </div>
				<input type="text" name="corpAddress" id="address2" placeholder="상세주소를 입력해 주세요" required>
			</div>
            
            <div class="input-many">
                <input name="termsChecked" type="checkbox" value="checked">
                <div class="input-label2">개인정보처리방침 동의
                <span style="color: gray;">(선택)</span>
                <a href="#">약관동의></a></div>
            </div>
            <div class="btns">
                <button type="submit" class="submit-button">회원가입</button><br>
                <button type="button" class="cancle-button">취소</button>
            </div>
	</form>
</section>


    <!-- 다음 우편번호 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		const $goMain = document.getElementById("goMain");
		
		$searchZipCode.onclick = function(){
			
			new daum.Postcode({
				oncomplete : function(data){
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();

		}
		
		$goMain.onclick=function(){
			location.href = "${ pageContext.servletContext.contextPath}";
		}
	</script>

</body>
</html>