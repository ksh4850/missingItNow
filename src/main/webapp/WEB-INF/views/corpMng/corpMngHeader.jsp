<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    @font-face { 
		font-family: 'SCDream-Regular'; 
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
		font-weight: 400; 
	}

	@font-face { 
		font-family: 'SCDream-Medium'; 
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-5Medium.woff') format('woff');
		font-weight: 500; 
	}
	
	@font-face { 
		font-family: 'SCDream-Bold'; 
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); 
		font-weight: 600; 
	}

    body{
        width: 1920px;
        min-height: 1900px;
        margin: 0 auto;
    }

    .header{
        width: 1920px;
        height: 100px;
        /* border: 1px solid black; */
        background-color: #775EEE;
    }

    .headerTitle{
        margin: 0; 
        float: left; 
        position: relative; 
        color: white; 
        font-size: 40px;
        font-family: 'SCDream-Medium'; 
        left: 50px; 
        top: 25px;  
        text-shadow: 4px 2px 2px darkslategray;
    }
    
    .updateCorpUserInfoBtn{
        margin: 0;
        float: right;
        position: relative; 
        font-size: 20px;
        font-family: 'SCDream-Regular'; 
        font-weight: bold;
        color: white;
        right: 80px;
        top: 50px;
        background: transparent;
        border: none;
    }

    .headerLogoutBtn{
        margin: 0;
        float: right;
        position: relative; 
        font-size: 20px;
        font-family: 'SCDream-Regular'; 
        font-weight: bold;
        color: white;
        right: 60px;
        top: 50px;
        background: transparent;
        border: none;
    }
</style>
<body>
	<div class="header">
        <img src="${pageContext.servletContext.contextPath }/resources/images/corpMngHeaderLogo.png" 
        		onclick="location.href='${pageContext.servletContext.contextPath }/main'" 
        		style="position: relative; left: 20px; top: 5px; float: left;">
        <p class="headerTitle">기업회원 관리자 센터</p>
		<button class="headerLogoutBtn" id="headerLogoutBtn">로그아웃</button>
		<button class="updateCorpUserInfoBtn" id="updateCorpUserInfoBtn">정보수정</button>
    </div>
    
	<script>
		$("#headerLogoutBtn").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/corporation/logout";
		})
		
		$("#updateCorpUserInfoBtn").click(function(){
			location.href="${ pageContext.servletContext.contextPath }/corpMng/updateCorpUserInfo";
		})
	</script>
</body>
</html>