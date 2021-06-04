<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="/missingitnow/resources/css/member/registBranch.css">
<style>

</style>

<body>

<div class="header">
<jsp:include page="../common/header.jsp"/>
</div>


<div class="contentForm">
    
	<div class="backGround">
		<img src="/missingitnow/resources/images/registBranchBackGround.png">
	</div>

	
	
	<div class="selectRegistTypeForm">
		
		<div class="title">
		<table class="titleTable">
                	<tr>
                		<td class="titleColorBox">회원가입 유형</td> <td class="normalColorTitle">을 선택해주세요.</td>
                	</tr>
	    </table>  
	    
	    </div>
		
		
		
		<table class="selectRegistTypeTable">
		<tr>		
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td class="privateTd">
		<a class="selectPrivate" href="${pageContext.servletContext.contextPath}/member/regist">&nbsp;<i class="fas fa-user"></i>&nbsp;&nbsp;개인</a>
			</td>
		
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td class="corpTd">
		<a class="selectCorp" href="${pageContext.servletContext.contextPath}/corporation/regist">&nbsp;<i class="fas fa-building"></i>&nbsp;&nbsp;기업</a>
			</td>
			<td>&nbsp;&nbsp;&nbsp;</td>
		</tr>
		
		</table>
		
	
	</div>

</div>


<div class="footer">
<jsp:include page="../common/footer.jsp"/>
</div>




</body>
</html>