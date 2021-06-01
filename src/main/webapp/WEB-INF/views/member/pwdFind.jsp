<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
            
        #pwdFindTitle{
            margin-top: 100px;
            margin-left: 100px;
        }
        #pwdFindForm{      
            margin-top:700px; 
            margin-left:700px; 
            background-color: purple; 
            width:700px;
            height:700px;
        }
        #pwdFindFormTable{
            margin-top:100px;
            margin-left:100px;
        }
    
        
    
    
    </style>
</head>

<body>
    <div><br></div>
<div id="pwdFindForm">
    <div id="pwdFindTitle">
        회원님, 비밀번호를 분실하셨군요! 
        <br>
        임시번호를 가입시 입력하신 메일로 발송해드립니다.
    </div>

<form action="" method="">
    <table border="1" id="pwdFindFormTable">
        <tr>
            <td>아이디 : <input type="text"> </td>
        </tr>
        <tr>
            <td>이메일 : <input type="text"> 
                @
                <select>
                    <option value="naver.com">naver.com</option>
                    <option value="gmail.com">gmail.com</option>
        
        
                </select></td>
        </tr>
        
        <tr align="center">
            <td> <button type="submit">임시 비밀번호 전송하기</button> &nbsp;&nbsp;   
                <button type="button">취소하기</button>   </td>

        </tr>
    </table>

</div>
</form>
</body>
</html>

