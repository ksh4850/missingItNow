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
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <script src="/missingitnow/resources/js/member/myPageMain.js"></script>
    <script src="/missingitnow/resources/js/member/myPageNav.js"></script>
    <link rel="stylesheet" type="text/css" href="/missingitnow/resources/css/member/myPageMain.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
</head>

<style>

	#userImg{
	width:50px;
	height:66px;

	}
    
   .pointTd{
   		background: #B1A7E4;
   } 
   
   .leftBg{
		position:relative;
		margin-top:400px;
		margin-left:0px;
		margin-bottom:50px;
		}
    
</style>

<body>

    <div class="header">
	<jsp:include page="../common/header.jsp"/>
    </div>
<div>
<img class="leftBg" src="/missingitnow/resources/images/member/myPageLeft.png">
</div> 
    <div class="contentForm">
				
				<form name="Paging">
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
                        <td class="pointTd">
                        <a href="${pageContext.servletContext.contextPath}/member/myPageMain">
                        		&nbsp;프로필
                        		</a>
                        		</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="javascript:goPurchaseListPage('${loginMember.userNo}');">
                        &nbsp;구매내역
                        </a>
                        </td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>
						<a href="javascript:goCancelExchangeRefundPage('${loginMember.userNo}');">
                        &nbsp;취소/교환/반품내역
                        </a>
                        </td>
                    </tr>
                    <tr> <td><br></td> </tr>

                    <tr>
                        <td>
                        <a href="javascript:goQnaPage('${loginMember.userNo}');">
                        &nbsp;Q&A
                        </a>
                        </td>
                    </tr>

                    <tr> <td><br></td> </tr>
                    <!-- <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr> <td><br></td> </tr> -->
                    <tr>
                        <td>
                        <a href="javascript:goReviewPage('${loginMember.userNo}');">
                        &nbsp;리뷰내역
                        </a>
                        </td>
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
                            <input type="text" readonly value="${loginMember.user_Regst_Date }">
                        </td>
                    </tr>
<!--                     <tr>
                        <td>
                        <br>
                            <h3>프로필 이미지 등록/변경</h3> <br>

                        </td>
                    </tr>
                    <tr>
                    <td class="upload">
                      이미지 등록 버튼                    
					        <div class="filebox">
					  <label for="ex_file" >업로드</label>
					  <input type="file" id="ex_file">
						</div>
                            <button class="subBtn">삭제하기</button><br><br>
                    </td></tr> -->
                    
                    <tr>
                    
                        <td align="center" ><br> <button type="submit" class="mainBtn">회원정보 수정</button> <br><br>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" > 
                        
                        <button type="button" class="subBtn" 
                        onclick="location.href='${pageContext.servletContext.contextPath}/member/pwdChange'">비밀번호 변경 </button> &nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <button type="button" class="subBtn" 
                        onclick="location.href='${pageContext.servletContext.contextPath}/member/quit'">탈퇴하기</button><br>
                        
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

	/* 결합된 주소값을 칸에 맞게 잘라서 넣는 스크립트*/
	$(function(){
	const userAddress = "${loginMember.userAddress}";
	
	const addressSplit = userAddress.split("-");
	
	const zipCode = addressSplit[0];
	const address = addressSplit[1];
	const detailAddress = addressSplit[2];
	
	$('.zipCodeInput').val(zipCode);
	$('.addressInput').val(address);
	$('.address2Input').val(detailAddress);
	
	});

	
	/* 시간을 제외한 순수 생년월일을 칸에 넣는 스크립트 */
	
	const userBirth = "${loginMember.userBirth }";
	
	const onlyBirthDate = userBirth.substr(0,10);
	
	//console.log(onlyBirthDate);
	$('.birthDateInput').val(onlyBirthDate);

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