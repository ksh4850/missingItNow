<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin/bootstrap.css">
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<style>
 	body{
        width: 1920px;
        margin: 0 auto;
    }

    .nav{
        position: relative;
        float: left;
        width: 250px;
        height: 100%;
        background-color: #775EEE;
        text-align: center;
        font-family: 'SCDream-Regular';
        border: 1px solid black;
    }

    .naviList li{
        list-style: none;
        padding-bottom: 15px;
    }
    
	.btn{
    
	    width: 248px;
	    height: 50px;
	    line-height: 50px;
	    margin-left: 0px;
	    background-color: #775EEE;
	    padding: 0px 0px 0px 0px;
	    color: #fff;
	    border-radius: 0ex;
	    vertical-align: middle;

	}
	
	.btn:hover{
    
	    background-color: #5F0080;
	    color: #fff;

	}
	
	.btn:focus{
	
		background-color: #5F0080;
	    color: #fff;
	    
	}
	
	.link-btn{
	
		width: 248px;
		height: 50px;
	    margin-left: 0px;
	    margin-top: 0px;
	    margin-bottom: 0px;
	    background-color: #fff;
	    color: black;
	    border-radius: 0ex;
	    line-height: 50px;
	
	}
	
	.link-btn:hover{
	
	    background-color: #C49BF9;
	    cursor: pointer;
	
	}
</style>
<body>
    <div class="nav">
        <ul class="asideMenu">
            <li class="menu" id="subMenu" class="collapse subMenu" data-parent=".nav">
                <div class="btn" id="main">메인</div>
            </li>
            <li class="menu" id="settlement">
                <div class="btn" data-toggle="collapse" data-target="#subMenuOne">정산관리</div>
                <div id="subMenuOne" class="collapse subMenu" data-parent=".nav">
                    <div class="link-btn" id="settlementBreakdown">정산현황</div>
                    <div class="link-btn" id="depositBtn">예치금관리</div>
                </div>
            </li>
            <li class="menu" id="member">
                <div class="btn" data-toggle="collapse" data-target="#subMenuTwo">회원관리</div>
                <div id="subMenuTwo" class="collapse subMenu" data-parent=".nav">
                    <div class="link-btn" id="userManage">일반회원</div>
                    <div class="link-btn" id="corpManage">기업회원</div>
                </div>
            </li>
              <li class="menu" id="order">
                <div class="btn" data-toggle="collapse" data-target="#subMenuFour">매출관리</div>
                <div id="subMenuFour" class="collapse subMenu" data-parent=".nav">
                    <div class="link-btn" id="SalesInfoBtn">기업매출관리</div>
                    <div class="link-btn" id="orderInfobtn">주문내역관리</div>
                </div>
            </li>
            <li class="menu" id="QNA">
                <div class="btn" data-toggle="collapse" data-target="#subMenuThree">Q&amp;A</div>
                <div id="subMenuThree" class="collapse subMenu" data-parent=".nav">
                    <div class="link-btn" id="QNAList">Q&amp;A리스트</div>
                    <div class="link-btn" id="QNAManage">Q&amp;A관리</div>
                </div>
            </li>
            <li class="menu" id="subMenuFour" class="collapse subMenu" data-parent=".nav">
                <div class="btn" id="noticeList">공지사항</div>
            </li>
        </ul>
    </div>
<script>
	$("#main").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/admin/main";
		
	});
	
	$("#settlementBreakdown").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/admin/settlement/breakdown";
		
	});
	
	$("#depositBtn").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/system/depositInfo";
		
	});
	
	$("#SalesInfoBtn").click(function(){
			
		location.href="${ pageContext.servletContext.contextPath }/system/corpSalesInfo";
			
	});
	
	$("#orderInfobtn").click(function(){
	
		location.href="${ pageContext.servletContext.contextPath }/system/orderInfo";
	
	});
	
	$("#userManage").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/admin/userManage/list";
		
	});
	
	$("#corpManage").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/system/comInfo";
		
	});
	
	$("#QNAList").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/admin/qna/list";
		
	});
	
	$("#QNAManage").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/admin/qna/manage";
		
	});
	
	$("#noticeList").click(function(){
		
		location.href="${ pageContext.servletContext.contextPath }/admin/ntc/list";
		
	});
</script>    
</body>
</html>