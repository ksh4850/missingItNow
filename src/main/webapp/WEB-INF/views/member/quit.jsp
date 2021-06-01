<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        
        #idFindTitle{
            margin-top: 100px;
            margin-left: 100px;
        }
        #idFindForm{      
            margin-top:700px; 
            margin-left:700px; 
            background-color: rgba(119, 94, 238, 0.33);
            width:700px;
            height:700px;
        }
        #idFindFormTable{
            margin-top:100px;
            margin-left:100px;
        }

        .hide{
            display: none;

        }


   


    </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
    <div><br></div>
    <div id="idFindForm">
    <form action="${pageContext.servletContext.contextPath}/member/quit" method="post">
        <div id="idFindTitle">
            <input type="text" readonly name="userId" value="${loginMember.userName }"/> 회원님, 정말 탈퇴하실껀가요?  ㅠㅠ
            <br>
            <!--가입일로부터 계산-->일 동안 감사했습니다.
        </div>

        <table border="1" id="idFindFormTable">
            <tr>
                <td><p>개인정보는 수집 및 이용 목적이 달성되면 지체없이 파기하며
                    암호화된 이메일 주소, 서비스 부정이용 기록은 
                    1년간 보관후 파기합니다.
                    자세한 사항은 아래 링크를 확인해주시기 바랍니다.</p></td>
            </tr>
            <tr>
                <td align="center"><button id="privacyPolicy" type="button">개인정보 처리방침</button></td>
            </tr>

            <tr class="hide">
            <td >개인정보 처리방침 내용</td>
            </tr>

            <tbody>

            </tbody>

            <tr align="center">
                <td> <button type="submit">탈퇴하기</button> &nbsp;&nbsp;   
                    <button type="button">취소하기</button>   </td>

            </tr>
        </table>

    </form>
    </div>

    <script>

        $("#privacyPolicy").click(function(){

            var submenu = $(".hide");
 
            
            if( submenu.is(":visible") ){
                submenu.slideUp(50);
            }else{
                submenu.slideDown(50);
            }


        });

    </script>

    


</body>
</html>