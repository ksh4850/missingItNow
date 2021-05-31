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
		const failedCode = "${ requestScope.failedCode }";
		
		var failedMessage = "";
		var movePath = "";
		
 		switch(failedCode){
			case "insertProduct" :
				failedMessage = "상품 등록에 실패하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/prodMng/insertProduct";
				break;
				
			case "updateProduct" :
				failedMessage = "상품 수정에 실패하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/prodMng/selectProduct";
				break;	
				
			case "insertSettlement" :
				failedMessage = "정산 요청에 실패하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/settleMng/selectSettlementList"";
				break;		

		}
		
		alert(failedMessage);
		location.replace(movePath);
		
	})();
	
	</script>
</body>
</html>