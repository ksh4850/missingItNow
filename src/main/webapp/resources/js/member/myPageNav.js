	/*qna페이지로 넘어가면서 userNo값을 넘김(세션 회원의 작성글만 보기 위함)*/			
			
			function goQnaPage(userNo){
						
						const f = document.Paging;
						
						f.userNo.value = userNo;
						
						console.log(f.userNo);
						
						
						
						f.action = "/missingitnow/member/QNA";
						
						f.method = "post";
						
						f.submit();
						
					}
					
		/*리뷰페이지로 넘어가면서 userNo값을 넘김(세션 회원의 작성글만 보기 위함)*/			
			
			function goReviewPage(userNo){
						
						const f = document.Paging;
						
						f.userNo.value = userNo;
						
						console.log(f.userNo);
						
						
						
						f.action = "/missingitnow/member/review";
						
						f.method = "post";
						
						f.submit();
						
					}
					
		/*구매내역페이지로 넘어가면서 userNo값을 넘김(세션 회원의 작성글만 보기 위함)*/			
			
			function goPurchaseListPage(userNo){
						
						const f = document.Paging;
						
						f.userNo.value = userNo;
						
						console.log(f.userNo);
						
						
						
						f.action = "/missingitnow/member/purchaseList";
						
						f.method = "post";
						
						f.submit();
						
					}
		
		/*취소 교환 반품 페이지로 넘어가면서 userNo값을 넘김(세션 회원의 작성글만 보기 위함)*/			
			
			function goCancelExchangeRefundPage(userNo){
						
						const f = document.Paging;
						
						f.userNo.value = userNo;
						
						console.log(f.userNo);
						
						
						
						f.action = "/missingitnow/member/cancelExchangeRefund";
						
						f.method = "post";
						
						f.submit();
						
					}