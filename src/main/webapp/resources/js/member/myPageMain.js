

		/*qna페이지로 넘어가면서 userNo값을 넘김(세션 회원의 작성글만 보기 위함)*/			
			
			function goQnaPage(userNo){
						
						const f = document.qnaPaging;
						
						f.userNo.value = userNo;
						
						console.log(f.userNo);
						
						
						
						f.action = "/missingitnow/member/QNA";
						
						f.method = "post";
						
						f.submit();
						
					}
		
		
					
		/* 우편번호 및 주소 찾기(다음 API) 함수*/
		
					
		$(document).ready(function(){

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

