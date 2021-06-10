<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>==지금, 보고 싶다 == 비밀번호 찾기</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/missingitnow/resources/js/member/pwdFind.js"></script>
    <link rel="stylesheet" type="text/css" href="/missingitnow/resources/css/member/pwdFind.css">   
</head>
<body>
	

 	<div class="header">
	<jsp:include page="../common/header.jsp"/>
    </div> 


   
    
<div>
<img class="leftBg" src="/missingitnow/resources/images/member/findLeftbg.png">
</div>     
    
<div class="pwdFindForm">
    
    <div><br><br><br></div>
	
<table class="titleTable" border="1">
		   	<tr>
		   		<td class="titleColorBox"><br><br><br>회원님의 메일로</td>
		   		<td class="titleNonColor">&nbsp;&nbsp;임시번호를 발송해드립니다.</td>
		   		
		   	</tr>
 
		   		<tr><td><br></td></tr>

		   	<tr> 
		   		<td>&nbsp;</td>
		   		<td class="titleNonColor">&nbsp;&nbsp;아이디와 가입시 입력하신 메일을 입력해주세요</td>
		   		
		   	</tr>
	</table> 
		   
	<div class="whiteForm">
    <table border="1" class="pwdFindFormTable">
        
        
        <tr>
        
            <td class="idLabel">ID :</td> <td>&nbsp;&nbsp;<input class="findFormInput" type="text" name="id" 
            placeholder="      Id를 입력해주세요" required> </td>
        
        </tr>
        
        <tr><td><br></td></tr>
        <tr>
            
            <td class="emailLabel">E-mail :</td>
            
            <td>&nbsp;&nbsp;<input class="findFormInput" type="text" name="email" 
            placeholder="      E-mail을 입력해주세요" required></td> 
            
                <td class="atLabel">&nbsp;@&nbsp;</td>
            	<td>
                <select class="selectProvider" name="provider">
                    <option value="naver.com">naver.com</option>
                    <option value="gmail.com">gmail.com</option>        
                </select></td>
        </tr>
        <tr><td><br><br></td></tr>
        
        
        <tr align="center">
        
            <td colspan="4"> <button id="findBtn" type="button" class="mainBtn">임시 비밀번호 전송하기</button>    
                &nbsp;&nbsp;&nbsp;&nbsp;
                
                <button type="button" class="cancelBtn" 
                onclick="location.href='${pageContext.servletContext.contextPath}/corporation/loginPage'">취소하기</button>  
                
            </td>
                
                
                
                
        </tr>
        <tr><td><br><br></td></tr>
    </table>
	</div>

</div>


	<div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>	 



<script>

</script>
	
</body>
</html>