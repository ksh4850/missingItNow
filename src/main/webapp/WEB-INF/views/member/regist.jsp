<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>지금, 보고 싶다 == 회원가입</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <script src="/missingitnow/resources/js/member/memberRegist.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/missingitnow/resources/css/member/memberRegist.css">    

</head>

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
		<img src="/missingitnow/resources/img/member/registLeftPicture.png">
			
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
                                    
                                    <!-- 중복 여부 ajax 출력해야함 -->
                                    
                                    </td>
                                </tr>
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
                                        
                                        <!-- 위아래 일치여부 ajax 출력해야함 -->
                                        
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
	
	
	
	
        


    </script>
	
	
	

        <footer id="footer">
        <jsp:include page="../common/footer.jsp"/>
            <!-- 이부분에 만들어논 footer부분을 include하면됨 -->
        </footer>
    
						
	


</body>
</html>