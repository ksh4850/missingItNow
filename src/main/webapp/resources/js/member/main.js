	/*cart페이지로 넘어가면서 userNo값을 넘김(세션 회원의 작성글만 보기 위함)*/			

	
	function goCartPaging(userNo){
				
				const f = document.cartPaging;
				
				f.userNo.value = userNo;
				
				console.log(f.userNo);
				
				
				
				f.action = "/missingitnow/member/myPageCart";
				
				f.method = "post";
				
				f.submit();
				
			}
    
