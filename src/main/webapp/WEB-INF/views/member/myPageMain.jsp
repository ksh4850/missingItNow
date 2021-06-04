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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/missingitnow/resources/css/member/myPageMain.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<style>

#userImg{
	width:50px;
	height:66px;

}
    
</style>

<body>

    <div class="header">
	<jsp:include page="../common/header.jsp"/>
    </div>

    <div class="contentForm">
				
				<script>
					
					function goQnaPage(userNo){
						
						const f = document.qnaPaging;
						
						f.userNo.value = userNo;
						
						console.log(f.userNo);
						
						
						
						f.action = "${pageContext.servletContext.contextPath}/member/QNA";
						
						f.method = "post";
						
						f.submit();
						
					}
				
					
					
					
				</script>
				
				<form name="qnaPaging">
                     <input type="hidden" name="userNo" value="${loginMember.userNo}">				
				</form>
				
        <div class="leftDiv">
                <table class="myPageNavTable">
                    <tr>
                    <td align="center"><br>  <i id="userImg" class="fas fa-user"></i> <!--프로필 사진 영역-->
                    <br></td>
                    </tr>
                    
                    <tr>
                        <td class="welcomeTd" align="center">
                            <c:out value="${ loginMember.userName }"/>님 안녕하세요!
                        </td>
                    </tr>
					<tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="${pageContext.servletContext.contextPath}/member/myPageMain">
                        		&nbsp;프로필
                        		</a>
                        		</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;구매내역</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;취소/교환/반품내역</td>
                    </tr>
                    <tr> <td><br></td> </tr>

                    <tr>
                        <td>
                        <a href="javascript:goQnaPage('${loginMember.userNo}');">
<%--                         <a href="${pageContext.servletContext.contextPath}/member/QNA" > --%>
                        &nbsp;Q&A
                        </a>
                        </td>
                    </tr>

                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;쿠폰</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;리뷰내역</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                </table>

            
        </div>
        
        <div class="centerBlankDiv">
                

        </div>
  
        	<form action="${pageContext.servletContext.contextPath}/member/myPageMain" method="post">
            <div class="colorBox">
    
            
            
                <table class="profileTable">
                    <tr>
                        <td class="lineApply">
                            <h1><a href="${pageContext.servletContext.contextPath}/login">프로필</a></h1><br>
						<br>
                        </td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td class="lineApply">
                        <br>
                            <h3>아이디</h3> <br>
                            <input type="text" readonly name="userId" id="profileId" class="idInput" value="${loginMember.userId }"><br><br>
                          
                        </td>

                    </tr>
                    
                    
                    
                    <tr>
                        <td class="lineApply">
                        <br>
                            <h3>이름</h3> <br>
                            <input type="text" readonly class="nameInput" id="profileName" value="${loginMember.userName}" >
							<br>
							<br>
                        </td>
                    </tr>
                    <tr>
                        <td class="lineApply">
                        	<br>
                            <h3>생년월일</h3> <br>
                            <input type="text" readonly class="birthDateInput" id="profileBirthDate" value="${loginMember.userBirth}">
							<br><br>
                        </td>
                    </tr>
                    <tr>
                        <td class="lineApply">
                        <br>
                            <h3>주소</h3> <br>
                            <input type="hidden" name="userAddress">                            
                            <input type="text" name="zipCode" id="zipCode" class="zipCodeInput" readonly onchange="getUserAddress()" value=""> <button type="button" id="searchZipCode" class="mainBtn">우편번호 찾기</button>
                            <br><br>
                            <input type="text" name="userStreetAddress" id="address" class="addressInput" readonly onchange="getUserAddress()" value="">
                            <br><br>
                            <input type="text" name="userDetailAddress" id="detailAddress" class="address2Input" value="" onchange="getUserAddress()" required>
                            <br><br>
                        </td>
                    </tr>
                    <tr>
                        <td class="lineApply">
                        <br>
                            <h3>연락처</h3> <br>
							<input type="text" name="userContacts" class="phoneInput" value="${loginMember.userContacts}">
							<br><br>
                        </td>
                    </tr>
                    <tr>
                        <td class="lineApply">
                        <br>
                            <h3>이메일</h3> <br>
                            <input type="email" name="userEmail" class="emailInput" value="${loginMember.userEmail}"> 
                            
                            <br><br>
                        </td>
                    </tr>
                    <tr>
                        <td class="lineApply">
                        <br>
                            <h3>마케팅정보 동의</h3> <br>
                            <input class="marketingUseAgreeCheck" type="checkbox">
                            <br><br>
                        </td>
                    </tr>
                    <tr>
                        <td class="lineApply">
                        <br>
                            <h3>가입일</h3> <br>
                            <input type="text" readonly value="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <br>
                            <h3>프로필 이미지 등록/변경</h3> <br>

                        </td>
                    </tr>
                    <tr>
                    <td class="upload">
                      <!--이미지 등록 버튼-->                    
					        <div class="filebox">
					  <label for="ex_file" >업로드</label>
					  <input type="file" id="ex_file">
						</div>
                            <button class="subBtn">삭제하기</button><br><br>
                    </td></tr>
                    
                    <tr>
                    
                        <td align="center" ><br> <button type="submit" class="mainBtn">회원정보 수정</button> <br><br>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" > 
                        <button type="button" class="subBtn"> 비밀번호 변경 </button> &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" class="subBtn" onclick="location.href='${pageContext.servletContext.contextPath}/member/quit'">탈퇴하기</button><br>
                        </td>
                    </tr>
        


        </table>
      </div>
        </form>
    </div>
    
            
            
                
        

    
    
    
    
    
    <div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>



<script>

	console.log("${loginMember.userNo}")

/* 결합된 주소값을 칸에 맞게 잘라서 넣는 스크립트*/

const userAddress = "${loginMember.userAddress}";

const addressSplit = userAddress.split("-");

const zipCode = addressSplit[0];
const address = addressSplit[1];
const detailAddress = addressSplit[2];

$('.zipCodeInput').val(zipCode);
$('.addressInput').val(address);
$('.address2Input').val(detailAddress);


/*기존에 들어있던 주소를 hidden태그에 선행해서 넣어줌.*/
$(function(){
	
    const userZipCode = $('input[name=zipCode]').val();
    const userStreetAddress = $('input[name=userStreetAddress]').val();
    const userDetailAddress = $('input[name=userDetailAddress]').val();
    const userAddress = userZipCode + "-" + userStreetAddress + "-" + userDetailAddress;

	 
	
	   $('input[name=userAddress]').attr('value',userAddress);
});

/* 주소가 변동될 경우 주소 값(우편번호, 주소, 상세주소)을 각각 추출하여 문자열로 '다시'결합하는 함수*/

function getUserAddress(){
	
    const userZipCode = $('input[name=zipCode]').val();
    
    
    
    const userStreetAddress = $('input[name=userStreetAddress]').val();
    


    const userDetailAddress = $('input[name=userDetailAddress]').val();
   
    
  
  
    const userAddress = userZipCode + "-" + userStreetAddress + "-" + userDetailAddress;
    
    
    
	   $('input[name=userAddress]').attr('value',userAddress);
    
   

}








/* 시간을 제외한 순수 생년월일을 칸에 넣는 스크립트 */

const userBirth = "${loginMember.userBirth }";

const onlyBirthDate = userBirth.substr(0,10);

//console.log(onlyBirthDate);
$('.birthDateInput').val(onlyBirthDate);


</script>


<script>
	
	function NavMenuProfile(){
		/* console.log("클릭"); */
		
		
		
	}
		
		
	


</script>


<script>
$(document).ready(function(){
    
	   /* 우편번호 및 주소 찾기(다음 API) 함수*/
	
		const $searchZipCode = document.getElementById("searchZipCode");
     $searchZipCode.onclick = function(){

         new daum.Postcode({
             oncomplete : function(data){
                 document.getElementById("zipCode").value = data.zonecode;
                 document.getElementById("address").value = data.address;
                 document.getElementById("detailAddress").focus();
             }
         }).open();
         		                            
     	}	
     
});

</script>


<script>
	// You can modify the upload files to pdf's, docs etc
	//Currently it will upload only images
	
	$(document).ready(function($) {
	
	// Upload btn on change call function
	$(".uploadlogo").change(function() {
	  var filename = readURL(this);
	  $(this).parent().children('span').html(filename);
	});
	
	// Read File and return value  
	function readURL(input) {
	  var url = input.value;
	  var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
	  if (input.files && input.files[0] && (
	    ext == "png" || ext == "jpeg" || ext == "jpg" || ext == "gif" 
	    )) {
	    var path = $(input).val();
	    var filename = path.replace(/^.*\\/, "");
	    // $('.fileUpload span').html('Uploaded Proof : ' + filename);
	    return "Uploaded file : "+filename;
	  } else {
	    $(input).val("");
	    return "Only image(png, jpeg, jpg, gif) formats are allowed!";
	  }
	}
	// Upload btn end
	
	});


</script>




</body>

</html>