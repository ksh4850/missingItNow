<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
	
	input{
		-webkit-appearance: auto;
	    -moz-appearance: auto;
	}
	
	.pwdChangeForm{
	background:green;
	margin-left:800px;
	margin-top:100px;
	margin-bottom:100px;
	width:450px;
	
	}
	
	.pwdChangeFormTable{
		
		border: 1px solid black;
		background
	}
	
	.mainBtn{
        outline: 0;
        border : 0;        
        background: #775EEE;
		color:#ffff;		
		width:150px;
		height:30px;
		border-radius: 10px;
		font-size:20px;
    }
    
	.cancleBtn{
        outline: 0;
        border : 0;        
        background: #EE5E5E;
		color:#ffff;		
		width:150px;
		height:30px;
		border-radius: 10px;
		font-size:20px;
    }
	
</style>


</head>



<body>
	
	<div class="header">
	<jsp:include page="../common/header.jsp"/>
    </div>


    <div><br></div>
    <div class="pwdChangeForm">
    <form action="${pageContext.servletContext.contextPath}/member/pwdChange" method="post">
        <div class="pwdChangeTitle">
            <input type="text" readonly name="userName" value="${loginMember.userName}"/>회원님의 비밀번호를 변경합니다.
            <input type="hidden" name="userId" value="${loginMember.userId }"/>  
            <br><br>            
        </div>

        <table class="pwdChangeFormTable">
            <tr>
                <td>
                	현재 비밀번호 : <input type="password" name="currentPassword">
                </td>
            </tr>
            <tr>
                <td >
                	새 비밀번호 : <input type="password" name="newPassword">
                </td>
            </tr>
            <tr>
                <td >
                	새 비밀번호 재입력 : <input type="password" name="newPasswordRetype">
                </td>
            </tr>
           
            <tr><td><br></td></tr>
           
            <tr align="center">
                <td> <button class="mainBtn" type="submit">비밀번호 변경</button> &nbsp;&nbsp;   
                     <button class="cancleBtn" type="button">취소</button>   </td>

            </tr>
        </table>

    </form>
    </div>
	
	<div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>	
		
</body>
</html>