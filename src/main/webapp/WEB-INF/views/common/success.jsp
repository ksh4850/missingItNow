<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	(function(){
		const successCode = "${ requestScope.successCode }";
		
		var successMessage = "";
		var movePath = "";
		
 		switch(successCode){
			case "insertProduct" :
				successMessage = "상품 등록에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/prodMng/insertProduct";
				break;
				
			case "updateProduct" :
				successMessage = "상품 수정에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/prodMng/selectProduct";
				break;	
				
			case "insertSettlement" :
				successMessage = "정산 요청이 완료되었습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/settleMng/selectSettlementList";
				break;	
			
			case "updateCorpUserInfo" :
				successMessage = "회원정보 수정이 완료되었습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/corpMng/main";
				break;
				
		}
		
		alert(successMessage);
		location.replace(movePath);
		
	})();
	
	</script>
</body>
</html>