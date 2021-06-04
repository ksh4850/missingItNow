<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
					
<body>
	
	<!-- 헤더 시작 -->
	
	<div class="header">
	
	<jsp:include page="../common/header.jsp"/>
    
    </div>
    
    
    <!-- 헤더 끝 -->
    
    
        <div class="contentForm">
				
        <div class="leftDiv">
                <table class="myPageNavTable">
                    <tr>
                    <td align="center"><br>  <i id="userImg" class="fas fa-user"></i> <!--프로필 사진 영역-->
                    <br></td>
                    </tr>
                    
                    <tr>
                        <td class="welcomeTd" align="center">
                            <c:out value="${ loginMember.userName }"/>님 안녕하세요!
                        </td>
                    </tr>
					<tr> <td><br></td> </tr>
                    <tr>
                        <td>
                        <a href="${pageContext.servletContext.contextPath}/member/myPageMain" onclick="NavMenuProfile()">
                        		&nbsp;프로필</a></td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;구매내역</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;취소/교환/반품내역</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;Q&A</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;쿠폰</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                    <tr>
                        <td>&nbsp;리뷰내역</td>
                    </tr>
                    <tr> <td><br></td> </tr>
                </table>

            
        </div>
        
        <div class="centerBlankDiv">
                

        </div>
  	
    	<table>
    		
    		
    		
     			<c:forEach items="${boardList}" var="board">
    			<tr>
	    		<th>
    				<c:out value="${board.qnaNo}"/>
    				<c:out value="${board.userNo}"/>
    				<c:out value="${board.qnaTitle}"/>
    				<c:out value="${board.qnaDetails}"/>
    				<c:out value="${board.qnaDate}"/>
    				<c:out value="${board.qnaStatus}"/>
    				<c:out value="${board.qnaHits}"/>    				
    			</th>
    			</tr>
    			</c:forEach> 
    		
    		
    	
    	</table>
    
    </div>
    <!-- 푸터 시작 -->
    
    <div class="footer">
    
    <jsp:include page="../common/footer.jsp"/>
    
	</div>
	
	<!-- 푸터 끝 -->
</body>
</html>



