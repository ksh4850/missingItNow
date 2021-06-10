	$(function(){
		$("#findBtn").click(function(){
				
			
			/* 공란일 때 경고 표시하고 넘어가지 않음. */
			
			if($('input[name=id]').val().length==0){
				
				alert("id를 입력하세요."); 
				$('input[name=id]').focus(); return false; 
				
			}
			
			if($('input[name=email]').val().length==0){ 
				
				alert("이메일을 입력하세요."); $('input[name=email]').focus(); 
				return false; 
				
			}
			
			/* 변수에 id와 email, 공급자를 담고 email을 email 주소로 조합함 */
			
			const Id = $('input[name=id]').val();
			const EmailId = $('input[name=email]').val();
					
			const Provider = $("select[name=provider]").val();
			
			const Email = EmailId +'@'+ Provider;
			
			
			/* ajax로 id email을 넘겨주고 임시 번호로 이메일을 발송-> 로그인 페이지로 이동함. */
			
			$.ajax({
				url : "/missingitnow/member/pwdFind",
				type : "POST",
				data : {
					id : Id,
					email : Email
				},
				success : function(result) {
					
					
					alert(result);
					location.href = "/missingitnow/corporation/loginPage";
				},
			})
		});
	})