<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <title>Document</title>
    <link rel="stylesheet" href="/missingitnow/resources/css/common/reset.css">
    <link rel="stylesheet" href="/missingitnow/resources/css/member/login.css">    
    
</head>

<div class="header">
<jsp:include page="../common/header.jsp"/>
</div>


<body>
    <section class="loginForm">
        <form action="${pageContext.servletContext.contextPath}/login/memlogin" method="post">
            <div class="titleArea">로그인</div>
            <div class="input_size">
                <input class="input_bar" type="text" name="userId" id="idInput" placeholder="       아이디">
            </div>
            <div class="input_size">
                <input class="input_bar" type="password" name="userPwd" id="pwdInput" placeholder="       비밀번호">
            </div>
            <br>
            <br>
            <div class="checkArea">
                <input type="checkbox" class="checkbox" style=""> 아이디 저장 &nbsp;&nbsp;

                <input type="radio" name="MemberRadio" class="radio" checked> 일반회원 &nbsp;&nbsp;
                <input type="radio" name="MemberRadio" class="radio"> 기업회원 

            </div>
            <br>
            <button type="submit" class="login">로그인</button>
        </form>
        <div class="find"><a href="#">아이디 찾기</a></div>
        <div class="find"><a href="#">비밀번호 찾기</a></div>
        <br><br>
        <div class="registText"><a href="${pageContext.servletContext.contextPath}/member/registBranch">회원가입</a></div>
    </section>
</body>

<div class="footer">
<jsp:include page="../common/footer.jsp"/>
</div>

</html>

