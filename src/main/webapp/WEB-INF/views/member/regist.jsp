<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>==지금, 보고 싶다 == 개인회원가입</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <script src="/missingitnow/resources/js/member/memberRegist.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/missingitnow/resources/css/member/memberRegist.css">    

</head>

<style>
	#idCheck{
		
		margint-left:300px;
		width:300px;
	}
	
	.bytes{
		color:white;
		line-height: 29px;
		text-align: left;
	}

</style>


<body>
  <jsp:include page="../common/header.jsp"/>
	

   
    <section>
		
		
 		<div class="left">
		<table border="1">
			<tr>
			<td>
			<br><br><br><br><br><br><br><br><br><br>
			</td>
			</tr>
			<tr>
			
			<td>
		<img src="/missingitnow/resources/images/member/registLeftPicture.png">
			
			</td>
			</tr>
		</table> 
		
		
		</div>
		
		
		
		
        <div>

                
                
                <div id="registFormTitle">
                
                <table class="titleTable">
                	<tr>
                		<td class="titleColorBox"><br><br>안녕하세요,</td> <td><br><br>&nbsp;회원가입을 환영합니다.</td>
                	</tr>
                </table>           
                
                  	
                </div>
                


            <article>
                <form action="${pageContext.servletContext.contextPath}/member/regist" method="post">
                    <div id="registForm">

                        <table id="registTable">

                            
                                <tr><th><br></th></tr>                                
                                <tr>
                                    <td>
                                        <label id="idLabel">ID</label> 
                                    </td>
                                </tr>
                                <tr> 
                                    <td>
                                    <input type="text" id="idInput" name="userId" placeholder="     사용할 ID를 입력해주세요" required> 
                                    
                                    
                                    
                                    
                                    </td>
                                    <td><p class="bytes">0/12</p></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                </tr>
                                    <tr><td>
                                    <!-- 중복 여부 ajax 출력해야함 -->
                                    <div id="idCheck"><br><br></div>
                                    
                                    </td></tr>
                                
                                
                                    <tr><td><br><br></td></tr>                                
                                
                                <tr>
                                    <td>
                                        <label id="passwordLabel">비밀번호</label> 
                                    </td>
                                </tr>
                                <tr> 
                                    <td><a></a>
                                        <input type="password" id="pwInput" name="userPwd" placeholder="    사용할 비밀번호를 입력해주세요" required><br>
                                    </td>                                
                                </tr>
                                <tr> 
                                    <td><a></a>
                                        <input type="password" id="pwConfirm" name="pwConfirm" placeholder="      비밀번호를 다시 입력해주세요" required>
                                        
                                        <!-- 위아래 일치여부 jquery 출력해야함 -->
                                    &nbsp;&nbsp;&nbsp;&nbsp;<div class="checkFont" id="pwdCheck"><br><br></div>
                                        
                                    </td>                                
                                </tr>
                                <tr><td><br><br></td></tr>
                                <tr>
                                    <td>
                                        <label>이름</label>
                                    </td>
                                </tr>    
                                <tr> 
                                    <td><a></a>
                                        <input type="text" id="nameInput" name="userName" placeholder="             이름을 입력해주세요" required>                                        
                                        <div class="checkFont" id="nameCheck"><br></div>
                                        
                                    </td>                                
                                </tr>
                                <tr><td><br><br></td></tr>
                                
                                <tr>
                                    <td>
                                        <label>생년월일</label>
                                    </td>
                                </tr>    
                                <tr> 
                                    <td><a></a>
                                    	<input type="hidden" name="userBirth">
                                        <input type="number" min="1910" max="2021" id="yearInput" name="userBirthYear" placeholder="선택" onchange="getUserBirth()" required>년
                                        <select id="month" name="userBirthMonth" onchange="getUserBirth()" required>
                                           <option id="monthSelect" value="">선택</option>
                                        </select>
                                        월
                                        <select id="day" name="userBirthdayOfTheWeek" onchange="getUserBirth()" required>
                                            <option id="daySelect" value="">선택</option>
                                        </select>   
                                        일 
                                    </td>                                                         
                                </tr>
       
                           
                                <tr><td><br><br></td></tr>
                                
                                <tr>
                                    <td><a></a>
                                    	<input type="hidden" name="userAddress">
                                    	<label>주소</label> <input type="text" name="zipCode" id="zipCode" placeholder="우편번호" readonly onchange="getUserAddress()" required>

                                        
                                             <button type="button" id="searchZipCode" class="btn"> 우편번호 찾기
                                        </button>
                                        	<br>
											<br>
                                              <input type="text" name="userStreetAddress" id="address" placeholder="      주소" readonly onchange="getUserAddress()" required>
                                            <br>
											<br>

                                             <input type="text" name="userDetailAddress" id="detailAddress" placeholder="      상세주소" required onchange="getUserAddress()">
											 
                                    </td>
				

                                </tr>
                                
                                <tr><td><br><br></td></tr>
                                
                                <tr>
                                	
                                	<td>
                                	<label>핸드폰</label>
                                	</td>
                                
                                </tr>
 								<tr> 
                                    <td><a></a> 
                                        <input type="tel" id="phoneInput" name="userContacts" placeholder="                    -제외 11자리" required>
                                        
                                    </td>                                
                                </tr>
                                
                                <tr><td><br><br></td></tr>
                                
                                <tr>
                                	
                                	<td>
                                	<label>이메일</label>
                                	</td>
                                
                                </tr>
 								<tr> 
                                    <td><a></a> 
                                        <input type="email" id="emailInput" name="userEmail" placeholder="                    이메일" required>
                                        
                                    </td>                                
                                </tr>
								<tr><td><br><br></td></tr>
                                <tr>
                                	
                                	<td>
                                	<label>약관동의</label>
                                	</td>
                                
                                </tr>
 								<tr> 
                                    <td> 
                                        
                                        <div class="agreeBox">
                                        	<br>
                                        	<table border="1" class="agreeTable">

	                                        	<tr>
	                                        	<td >
	                                        	<input type="hidden" name="user_Mkt_Accepct_Chk">
	                                        &nbsp;<input type="checkbox" id="chkbox1" class="chkbox1"> <label class="agree" id="allAgree">전체동의</label> <br><hr>
	                                        	<br>
	                                        	</td>
	                                        	</tr>

	                                        	<tr>
	                                        	<td >
                                        	&nbsp;<input type="checkbox" id="chkbox2" class="chkbox2" required> <label class="agree">  만 14세 이상입니다 <span class="pointColorFont"> (필수)</span></label> <br>
	                                        	<br>
	                                        	</td>
	                                        	</tr>

	                                        	<tr>
	                                        	<td >
                                        	&nbsp;<input type="checkbox" id="chkbox3" class="chkbox2" required> <label class="agree">이용약관 <span class="pointColorFont"> (필수)</span> </label> <br>
	                                        	<br>
	                                        	</td>

	                                        	</tr>

	                                        	<tr>
	                                        	<td >
                                        	&nbsp;<input type="checkbox" id="chkbox4" class="chkbox2" required> <label class="agree">개인정보 수집 및 이용동의 <span class="pointColorFont"> (필수)</span></label> <br>
	                                        	<br>
	                                        	</td>
	                                        	</tr>
	                                       
	                                        	<tr>
	                                        	<td >
                                        	&nbsp;<input type="checkbox" id="chkbox5" class="chkbox2"> <label class="agree">이벤트, 프로모션 알림 메일 및 SMS 수신 <span class="grayColorFont"> (선택)</span> </label>
	                                        	<br>
	                                        	</td>
	                                        	</tr>

                                        	</table>
                                        
                                        </div>
                                        
                                    </td>
                                                                   
                                </tr>
								<tr><td><br><br></td></tr>
                                
                                <tr>
                                	
                                	<td>
                                	<button id="registBtn" class="btn">회원가입</button>
                                	</td>
                                
                                </tr>
								<tr>
								<td>
									<div id="loginTextArea" name="loginTextArea">
									<br>	
									<span id="loginText" class="whiteColorFont">이미 가입하셨나요?</span> <span class="whiteColorFont"><a href="#">로그인</a></span>
									</div>
									
								</td> 
								</tr>
			            
        
                        </table>
                        
                        
                    </div>
            
                
                </form>

            </article>

        </div>


    </section>
	
	
	<script>
	
	$(document).ready(function(){
    	
    	
		
		
    	if ("${message}"===""){
    		
    		    		
    	} else {
    		         
    		
    		alert("${message}");
    		
    	}
    	
    	
    	
    });
	
	
	
	
	
	
	var getCheck= /^[a-zA-Z0-9]{4,12}$/;
	var getName= /^[가-힣]{2,4}$/;;


	var pwdFlag = false;
	var idFlag = false;
	var nameFlag = false;
	
	
	
	
	
	/* $("#idInput, #nameInput, #pwInput, #pwConfirm").on("propertychange change keyup paste input", function(){
	    
    	if(!(idFlag == true) || !(pwdFlag == true) || !(nameFlag == true)){
    	
	    $("#registBtn").attr("disabled", true);
	    $('#registBtn').css('background-color', 'black');
    	}
		
    	else if((idFlag == true) && (pwdFlag == true) && (nameFlag == true)){
	    	
		    $("#registBtn").attr("disabled", false);
		    $('#registBtn').css('background-color', '#775EEE');
	    	
	    }
    });  */
	    
	    
	    
		
		$("#idInput").on("propertychange change keyup paste input", function() {

			var userId = $("#idInput").val();
		    console.log(userId);
			
			/*바이트로 글자수 세기*/
			bytesHandler(this);
			
			function getTextLength(str) {
				var len = 0;

				for (var i = 0; i < str.length; i++) {
				if (escape(str.charAt(i)).length == 6) {
				len++ +'/12';
				}
				len++ +'/12';
				}
				return len +'/12';			
				}

				function bytesHandler(obj){
				var text = $(obj).val();
				$('p.bytes').text(getTextLength(text));
				}
				

			
			
			console.log(userId);
			
		// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
			$.ajax({
				url : "${pageContext.request.contextPath}/member/check/idCheck",
				type : "POST",
				data : {
					userId : userId
					
				},
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : " + data);							
					
					if (data == 1) {
							// 1 : 아이디가 중복되는 문구
							$("#idCheck").text("이미 사용중인 아이디입니다 ");
							$("#idCheck").css("color", "red");
							$("#registBtn").attr("disabled", true);
							$('#registBtn').css('background-color', 'black');
						
						} else {
							
							if(getCheck.test(userId)){
								// 0 : 아이디 길이 / 문자열 검사
								$("#idCheck").text("");
								$("#registBtn").attr("disabled", true);
								$('#registBtn').css('background-color', 'black');
								
							} else if(userId == ""){
								
								$('#idCheck').text('아이디를 입력해주세요');
								$('#idCheck').css('color', 'red');
								$("#registBtn").attr("disabled", true);				
								$('#registBtn').css('background-color', 'black');
								
							
							} else {
								
								$('#idCheck').text("아이디는 소문자와 숫자 4~12자리만 가능합니다");
								$('#idCheck').css('color', 'red');
								$("#registBtn").attr("disabled", true);
								$('#registBtn').css('background-color', 'black');
								return;
							}
							
							idFlag = true;
							
			    		    $("#registBtn").attr("disabled", false);
			    		    $('#registBtn').css('background-color', '#775EEE');
							
							
						    
						      if((idFlag == true) && (pwdFlag == true) && (nameFlag == true)){
						    	
							    $("#registBtn").attr("disabled", false);
							    $('#registBtn').css('background-color', '#775EEE');
						    	
						    }  
							
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
			});
	    
	    
	            

	    /* 비번 유효성 검사 */
	    
	    
	    $("#pwInput, #pwConfirm").on("propertychange change keyup paste input", function(){

	        
	        
	        const pw1 = $("#pwInput").val();
	        const pw2 = $("#pwConfirm").val();
	        var Id = $("#idInput").val();
	        
	        console.log("Id : " + Id);
	        
	        const pwdCheck = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}$/;
	        
	        
	        if(!(pwdCheck.test(pw1) && (pwdCheck.test(pw2)))){
	            
	            $("#pwdCheck").text("비밀번호는 최소 8 자, 최소 하나의 문자 및 하나의 숫자로 이뤄져야합니다.")
	            $('#pwdCheck').css('color', 'red');

	            $("#registBtn").attr("disabled", true);
	    	    $('#registBtn').css('background-color', 'black');
	            
	            
	        } else if (/(\w)\1\1\1/.test(pw1) || /(\w)\1\1\1/.test(pw2)){
	            
	            $("#pwdCheck").text("같은 문자를 4개이상 사용할 수 없습니다.")
	            $('#pwdCheck').css('color', 'red');

	            $("#registBtn").attr("disabled", true);
	    	    $('#registBtn').css('background-color', 'black');
	            
	        } else if(pw1.search(Id) > -1 || pw2.search(Id) > -1){
	            
	            $("#pwdCheck").text("비밀번호에 아이디가 포함되었습니다. ")
	            $('#pwdCheck').css('color', 'red');

	            $("#registBtn").attr("disabled", true);
	    	    $('#registBtn').css('background-color', 'black');
	                
	        } else if(pw2!=pw1){
	            
	            $("#pwdCheck").text("비밀번호가 일치하지 않습니다.");
	            $('#pwdCheck').css('color', 'red');
	            
	            $("#registBtn").attr("disabled", true);
	    	    $('#registBtn').css('background-color', 'black');
	            
	            
	            
	        } else {
	            
	            $("#pwdCheck").text("비밀번호가 일치합니다.")
	            $('#pwdCheck').css('color', 'blue');

	            pwdFlag = true;
	            
    		    $("#registBtn").attr("disabled", false);
    		    $('#registBtn').css('background-color', '#775EEE');
	    	    
	    	     if((idFlag == true) && (pwdFlag == true) && (nameFlag == true)){
	    	    	
	    		    $("#registBtn").attr("disabled", false);
	    		    $('#registBtn').css('background-color', '#775EEE');
	    	    	
	            return; 
	    	    } 
	            
	        }
	        
	        
	        
	        
	    });
	            
	            
	    

	/*이름 유효성 검사*/

	$("#nameInput").on("propertychange change keyup paste input", function(){

	    const nameValue = $("#nameInput").val();
	    
	    /* 빈 값 사용 금지 */
	    
	    if (nameValue == "") {
	    
	        
	        $("#nameCheck").text("이름을 입력하지 않았습니다.");
	        $('#nameCheck').css('color', 'red');
	    
	    $("#registBtn").attr("disabled", true);
	    $('#registBtn').css('background-color', 'black');
	    
	        return false;
	    
	    } else if (!getName.test(nameValue)){ 
	    
	        
	        $("#nameCheck").text("형식에 맞는 한글만 입력 가능합니다.");
	        $('#nameCheck').css('color', 'red');
	    
	        
	        $("#name").val(""); 
	        $("#name").focus(); 
	        
	    $("#registBtn").attr("disabled", true);
	    $('#registBtn').css('background-color', 'black');
	        return false; 
	        
	        
	    } else { 
	        
	        $("#nameCheck").text("사용 가능한 이름입니다.");
	        $('#nameCheck').css('color', 'blue');
	    
	            
	            
	        nameFlag = true;
	        
	        
	    }
	    
	    console.log("idFlag : " + idFlag);
	    console.log("pwdFlag : " + pwdFlag);
	    console.log("nameFlag : " + nameFlag);

	    $("#registBtn").attr("disabled", true);
	    $('#registBtn').css('background-color', 'black');
	    
	    
	     if((idFlag == true) && (pwdFlag == true) && (nameFlag == true)){
	    	
		    $("#registBtn").attr("disabled", false);
		    $('#registBtn').css('background-color', '#775EEE');
	    	
		    return;
	    }  

	    });
	   
	
	    /* if((idFlag == true) && (pwdFlag == true) && (nameFlag == true)){
	    	
		    $("#registBtn").attr("disabled", false);
		    $('#registBtn').css('background-color', '#775EEE');
	    	
	    } */
    	
		/* $("#idInput, #nameInput, #pwInput, #pwConfirm").on("propertychange change keyup paste input", function(){
		    
	    	if(!(idFlag == true) && !(pwdFlag == true) && !(nameFlag == true)){
	    	
		    $("#registBtn").attr("disabled", true);
		    $('#registBtn').css('background-color', 'black');
	    
	    	}
	    });   */ 
    	
    	
        
	    
	 
	    
	 

    


    </script>
	
	
	

        <footer id="footer">
        <jsp:include page="../common/footer.jsp"/>
            <!-- 이부분에 만들어논 footer부분을 include하면됨 -->
        </footer>
    
						
	


</body>
</html>