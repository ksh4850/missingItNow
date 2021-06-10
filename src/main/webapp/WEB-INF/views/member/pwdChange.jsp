<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>==지금, 보고 싶다 == 비밀번호 변경</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/missingitnow/resources/css/member/pwdChange.css"> 


</head>



<body>
	
	<div class="header">
	<jsp:include page="../common/header.jsp"/>
    </div>


<div>
<img class="leftBg" src="/missingitnow/resources/images/member/findLeftbg.png">
</div> 
	

    <div><br></div>
    <div class="pwdChangeForm">
    <form action="${pageContext.servletContext.contextPath}/member/pwdChange" method="post">
     <div><br><br></div>  	
       	<table class="titleTable" border="1">
		   	<tr>
		   		<td class="titleColorBox"><br><br><br><c:out value="${loginMember.userName}"/> 회원님의 </td>
		   		<td class="titleNonColor">&nbsp;&nbsp;비밀번호를 변경합니다.</td>
		   		
		   	</tr>
 
		   		<tr><td><br></td></tr>

	</table> 
       	
       	
       	
       	<div class="pwdChangeTitle">            
            <input type="hidden" name="userId" value="${loginMember.userId }"/>  
            <br><br>            
        </div>
	
	<div class="whiteForm">
		<div><br><br><br></div>
        <table class="pwdChangeFormTable">
            <tr>
                <td class="label">
                	&nbsp;&nbsp;현재 비밀번호 : </td>
                	<td>&nbsp;&nbsp; <input class="inputPassword" type="password" name="currentPassword">
                </td>
            </tr>
            
            <tr><td><br></td></tr>
            
            <tr>
                <td class="label">&nbsp;&nbsp;새 비밀번호 : </td>
                	<td>&nbsp;&nbsp;  <input class="inputPassword" type="password" name="newPassword" id="newPassword">
                </td>
            </tr>
            
            <tr><td><br></td></tr>
            
            <tr>
                <td class="label">
                	&nbsp;&nbsp;새 비밀번호 재입력 :
                	</td> <td>&nbsp;&nbsp; <input class="inputPassword" type="password" name="newPasswordRetype" id="newPasswordRetype">
                </td>
            </tr>
           
            <tr><td><br><br></td></tr>
           
            <tr align="center">
                <td colspan="4"> <button class="mainBtn" type="submit">비밀번호 변경</button> &nbsp;&nbsp;   
                     <button class="cancelBtn" type="button">취소</button>   </td>

            </tr>
        </table>
        <div><br><br></div>
	</div>
    </form>
   </div>
	
	
	
	<script>
	$(function(){

		//비밀번호 확인
			$('#newPasswordRetype').blur(function(){
			   if($('#newPassword').val() != $('#newPasswordRetype').val()){
			    	if($('#newPasswordRetype').val()!=''){
			    		console.log("비밀번호가 일치하지 않습니다.")
				    alert("비밀번호가 일치하지 않습니다.");
			    	    $('#newPasswordRetype').val('');
			          $('#newPasswordRetype').focus();
			       }
			    }
			})  	   
		});
		
	
	
	</script>
	
	
	
	
	<div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>	
		
</body>
</html>