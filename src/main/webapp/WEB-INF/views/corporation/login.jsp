<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/corporation/member-login.css">
    <title>Document</title> 
</head>
<body>
    <section class="member-login-sec">
        <div class="member-login-box">
            <div style="text-align: center;">
                <h2 style="margin-top: 20px; margin-bottom: 20px;">로그인</h2>
            </div>
            <form id="memberLoginForm" action="${ pageContext.servletContext.contextPath }/corporation/login" method="POST">
                <div>
                    <div class="input-label">아이디 : </div>
                    <input type="text" name="corpId" placeholder="아이디를 입력해 주세요">
                </div>
                <div>
                    <div class="input-label">비밀번호 : </div>
                    <input type="password" name="corpPwd" placeholder="비밀번호를 입력해 주세요">
                </div>
				<div class="select-option-div">
					<input type="checkbox" value="saveId">
					<label>아이디 저장</label>
					<input type="radio" name="memberClass" value="member" checked>
					<label>일반회원</label>
					<input type="radio" name="memberClass" value="business">
					<label>기업회원</label>
				</div>
                <div class="btns">
                    <button type="submit" class="submit-button">로그인</button><br>
                    <a href="${ pageContext.servletContext.contextPath}/corporation/regist"><button type="button" class="regist-button">회원가입</button></a><br>
					<button type="button" class="find-button">아이디 / 비밀번호 찾기</button>
                </div>
            </form>
        </div>
    </section>
</body>
</html>