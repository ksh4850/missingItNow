													
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
                    	   
    								
    								/* 우편번호 및 주소가 빈칸일 때 경고를 출력하는 함수 (가입 진행 방지)*/     
		                            
		                         $("#registBtn").click(function(){
					    		    	
			    		    		if($('input[name=zipCode]').val().length==0){
			    		    		
			    		    			alert("우편번호 찾기를 눌러 우편번호와 주소를 입력해주세요."); 
			    		    		
			    		    			$('input[name=zipCode]').focus(); 
			    		    		
			    		    			return false;
			    		    			
			    		    			}
			    		    			
			    		    		
			    		    		if($('input[name=userStreetAddress]').val().length==0){
			    		    		
			    		    			alert("우편번호 찾기를 눌러 주소를 입력해주세요.");
			    		    		 
			    		    			$('input[name=zipCode]').focus(); 
			    		    			
			    		    			return false;
			    		    			
			    		    			}
					    		    	
    									});	 
    								
    								
    								
    								
    								
	        					    /* select태그에 달아줄 option태그를 for문으로 구성하여 append하는 함수 */							
	                        	   
	                        	   
		                                var month="";
		                                for(var i=1; i<=12; i++){
		
		                                    month += "<option value="+i+">" + i+"</option>"
		                                    
		                                    //console.log(month);
		                                }
		                                $('#month').append(month)    
		                                
		                                var day="";
		                                for(var i=1; i<=31; i++){
		
		                                    day += "<option value="+i+">" + i+"</option>"
		                                    
		                                    //console.log(day);
		                                }
		                                $('#day').append(day)    
                              
                              
                             
                              
                             		 /* 동의 여부 체크의 전체 체크와 일부 체크*/
                              	
                              	
	                                   /* 전체 체크를 선택시 전부 다 체크됨*/                              	
		                              	$("#chkbox1").click(function(){
				
				
											if($("#chkbox1").is(":checked")){
												
												$(".chkbox2").prop("checked",true);
													
													/* 전체 체크 선택시 user_Mkt_Accepct_Chk값에 'Y'를 대입한다.*/
													
													const user_Mkt_Accepct_Chk = 'Y';
													
													console.log(user_Mkt_Accepct_Chk);
													
													$('input[name=user_Mkt_Accepct_Chk]').attr('value',user_Mkt_Accepct_Chk);
												
											} else {
												
												$(".chkbox2").prop("checked",false);
												
											}
											
										});
										
										
										/* 전체개수 (4개)가 선택되면 전체 체크가 체크설정됨 
										      전체 개수 이하가 선택되었을시에 전체 체크를 체크 해제함.*/
										
										$(".chkbox2").click(function(){
											
											
											if($("input[class='chkbox2']:checked").length==4){
												
												$("#chkbox1").prop("checked",true);
												
											}  									
											
				     					/* 필수항목 선택시  user_Mkt_Accepct_Chk값에 'Y'를 대입한다. */
											
	                              			if ($("input:checkbox[id='chkbox2'], [id='chkbox3'], [id='chkbox4']").is(":checked")){
												
													const user_Mkt_Accepct_Chk = 'Y';
													
													console.log(user_Mkt_Accepct_Chk);
													
													$('input[name=user_Mkt_Accepct_Chk]').attr('value',user_Mkt_Accepct_Chk);
												
										     }	
											
											else {
												
												$("#chkbox1").prop("checked",false);
												
											}
			
			
										});
                              
                              
                              
                              
                              
                              }); // document.ready함수 끝
                              
                              
                               
                          	  	
                            	
                            	  /* 생년월일의 년 월 일 값을 각각 추출하여 하나의 문자열로 조합하는 함수*/
                           
                           
                           	  function getUserBirth(){
    	   
							       const userBirthYear = $('input[name=userBirthYear]').val();
							       const userBirthMonth = $('select[name=userBirthMonth]').val();
							       const userBirthdayOfTheWeek = $('select[name=userBirthdayOfTheWeek]').val();
							       const userBirth =  userBirthYear + '-' + userBirthMonth + '-' + userBirthdayOfTheWeek;
							       
							       console.log(userBirth);    	   
						       
						       	   $('input[name=userBirth]').attr('value',userBirth);
						    	   
					    	   }
					    	
					    		
					    			/* 주소 값(우편번호, 주소, 상세주소)을 각각 추출하여 문자열로 조합하는 함수*/
					    		
					    	    function getUserAddress(){
					    			
					    		    const userZipCode = $('input[name=zipCode]').val();
					    		    
					    		    console.log(userZipCode);
					    		    
					    		    
					    		    const userStreetAddress = $('input[name=userStreetAddress]').val();
					    		    
					    		    console.log(userStreetAddress);


					    		    const userDetailAddress = $('input[name=userDetailAddress]').val();
					    		   
					    		    console.log(userDetailAddress);
					    		    
					    		  
					    		  
					    		    const userAddress = userZipCode + "-" + userStreetAddress + "-" + userDetailAddress;
					    		    
					    		    
					    		    
						       	   $('input[name=userAddress]').attr('value',userAddress);
					    		    
					    		   
					    		
					    		}
					    		
					    		
					    		$(function() {  
									
									  // Here you register for the event and do whatever you need to do.
									  $(document).on('data-attribute-changed', function() {
									    var data = $('input[name=zipCode]').val();
									    alert('Data changed to: ' + data);
  									
  										});
  									
  									});
					    		  
						       