<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
	<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/corporation/member-login.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
    <title>Document</title> 
</head>
<body>
<jsp:include page="../common/header.jsp"/>
    <section class="member-login-sec">
        <div class="member-login-box">
            <div style="text-align: center;">
                <h2 style="margin-top: 20px; margin-bottom: 20px;">로그인</h2>
            </div>
            <form id="memberLoginForm" action="${ pageContext.servletContext.contextPath }/login/memlogin" method="POST">
                <div>
                    <div class="input-label">아이디 : </div>
                    <input type="text" name="userId" id="Id" placeholder="아이디를 입력해 주세요">
                </div>
                <div>
                    <div class="input-label">비밀번호 : </div>
                    <input type="password" name="userPwd" id="Pwd" placeholder="비밀번호를 입력해 주세요">
                </div>
				<div class="select-option-div">
					<input type="checkbox" value="saveId" id="idMember"><label for="idMember"><span></span>아이디저장</label>
					<input type="radio" id="member" name="memberClass" checked="checked"  onclick="checkedMember()" />
                    <label for="member"><span></span>일반회원</label>
                    <input type="radio" id="business" name="memberClass" onclick="checkedBusiness()"/>
                    <label for="business"><span></span>기업회원</label>

				</div>
                <div class="btns">
                    <button type="submit" class="submit-button">로그인</button><br>
                    <a id="regist" href="${pageContext.servletContext.contextPath}/member/registBranch"><button type="button" class="regist-button">회원가입</button></a><br>
					<button type="button" class="find-button" 
					onclick="location.href='${pageContext.servletContext.contextPath}/member/pwdFind'">아이디 / 비밀번호 찾기</button>
                </div>
            </form>
        </div>
    </section>
    <jsp:include page="../common/footer.jsp"/>
    <script>
    function checkedMember() {
    	document.getElementById("memberLoginForm").action = "${ pageContext.servletContext.contextPath }/login/memlogin";
    	document.getElementById("Id").name = "userId";
    	document.getElementById("Pwd").name = "userPwd";
    	document.getElementById("regist").href = "${pageContext.servletContext.contextPath}/member/registBranch";
    }
    function checkedBusiness() {
    	document.getElementById("memberLoginForm").action = "${ pageContext.servletContext.contextPath }/corporation/login";
    	document.getElementById("Id").name = "corpId";
    	document.getElementById("Pwd").name = "corpPwd";
    	document.getElementById("regist").href = "${ pageContext.servletContext.contextPath}/corporation/regist";
	}
    </script>
    
        <script>
    	

	    $("#Id").val(Cookies.get('key'));      
	        if($("#userId").val() != ""){
	            $("#idMember").attr("checked", true);
	        }
	        
	    $("#idMember").change(function(){
	        if($("#idMember").is(":checked")){
	            Cookies.set('key', $("#Id").val(), { expires: 7 });
	        }else{
	              Cookies.remove('key');
	        }
	    });
	         
	    $("#Id").keyup(function(){
	        if($("#idMember").is(":checked")){
	            Cookies.set('key', $("#Id").val(), { expires: 7 });
	        }
	    });
    
    
    </script>
    
    
</body>
</html>