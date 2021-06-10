<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin_main.css">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/admin/main.css">
</head>
<body>
	<header>
		<jsp:include page="../../common/corpMngHeader.jsp"/>
    </header>

    <aside>
		<jsp:include page="../../common/corpMngNavi.jsp"/>
    </aside>
	
	<section>
	<div class="sectionBodyDiv">
		<div class="userDiv contentDiv">
            <button class="titleBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/userManage/list'"> 이용자 현황 > </button>
            <hr style="margin-top: 0px;	margin-bottom: 0px;">
           	<table class="userInfoTable infoTables">
           		<tr>
           			<!-- 현재 가입한 유저 숫자 -->
           			<td>총 이용자 : ${ datas.totalUserCount }명</td>
           			<!-- 오늘 신규 가입한 유저 숫자 -->
           			<td>금일 신규가입 이용자 : ${ datas.todayRegistUserCount }명</td>
           		</tr>
           		<tr>
           			<!-- 한번도 상품을 구매하지 않은 유저 숫자 -->
           			<td>미 구매 이용자 : ${ datas.unpurchasedUserCount }명</td>
           			<!-- 전체 구매횟수중 환불/반품 비율이 높은 유저 숫자 -->
           			<td>환불/반품 고비율 이용자 : ${ datas.highRateRefundUserCount }명</td>
           		</tr>
           		<tr>
           			<!-- 신고된 유저 숫자 -->
           			<td>신고된 이용자 : ???명</td>
           		</tr>
           	</table>
        </div>
        <div class="corpDiv contentDiv">
            <button class="titleBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/system/comInfo'"> 기업회원 현황 > </button>
            <hr style="margin-top: 0px;	margin-bottom: 0px;">
            <table class="corpInfoTable infoTables">
           		<tr>
           			<!-- 현재 가입한(가입신청 미완료 포함) 기업 숫자 -->
           			<td>총 기업회원 : ${ datas.totalCorpUserCount }명</td>
           			<!-- 현재 가입승인 대기중인 기업 숫자 -->
           			<td>가입승인 대기중 : ${ datas.unacceptedCorpUserCount }명</td>
           		</tr>
           		<tr>
           			<!-- 오늘 가입신청한 기업 숫자 -->
           			<td>금일 가입신청 기업회원 : ${ datas.todayRegistCorpUserCount }명</td>
           			<!-- 신고된 기업 숫자 -->
           			<td>신고된 기업회원 : ???명</td>
           		</tr>
           		<tr>
           			<!-- 블랙리스트에 등록된 기업 숫자 -->
           			<td>블랙리스트 기업회원 : ${ datas.blackListCorpUserCount }명</td>
           		</tr>
           	</table>
        </div>
        <div class="QNADiv contentDiv">
            <button class="titleBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/qna/manage'"> 질문 현황	 > </button>
            <hr style="margin-top: 0px;	margin-bottom: 0px;">
            <table class="QNAInfoTable infoTables">
           		<tr>
           			<!-- 전체 질문 숫자 -->
           			<td>총 질문 : ${ datas.totalQNACount }개</td>
           			<!-- 응답 완료된 질문 숫자 -->
           			<td>응답완료 질문 : ${ datas.totalAnsweredCount }개</td>
           		</tr>
           		<tr>
           			<!-- 미응답 질문 숫자 -->
           			<td>미응답 질문 : ${ datas.totalNonAnswerCount }개</td>
           			<!-- 기업회원 질문 숫자 -->
           			<td>미응답 기업회원 질문 : ${ datas.totalNonAnswerCorpUserQuestionCount }개</td>
           		</tr>
           		<tr>
           			<!-- 일반회원 질문 숫자 -->
           			<td>미응답 일반회원 질문 : ${ datas.totalNonAnswerUserQuestionCount }개</td>
           		</tr>
           	</table>
        </div>
        <div class="settlementDiv contentDiv">
            <button class="titleBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/settlement/breakdown'"> 정산 현황 > </button>
            <hr style="margin-top: 0px;	margin-bottom: 0px;">
            <table class="settlementInfoTable infoTables">
           		<tr>
           			<!-- 전체 정산신청 숫자 -->
           			<td>총 정산신청 현황 : ${ datas.totalSettlementCount }개</td>
           			<!-- 미정산 상태의 정산신청 숫자 -->
           			<td>총 미정산 현황 : ${ datas.unsettlementCount }개</td>
           		</tr>
           		<tr>
           			<!-- 일주일 미만의 짧은 기간 미정산 정산신청 숫자 -->
           			<td>단기간 정산신청 : ${ datas.shortPeriodSettlementCount }개</td>
           			<!-- 고액(1000만 이상)의 미정산 정산신청 숫자 -->
           			<td>고액 정산신청 : ${ datas.largeAmountSettlementCount }개</td>
           		</tr>
           		<tr>
           			<!-- 오늘 정산신청한 숫자 -->   
           			<td>금일 정산신청 : ${ datas.todaySettlementCount }개</td>
           		</tr>
           	</table>
        </div>
        <div class="orderDiv contentDiv">
            <button class="titleBtn" onclick="location.href=''"> 주문내역 현황 > </button>
            <hr style="margin-top: 0px;	margin-bottom: 0px;">
            <table class="orderInfoTable infoTables">
           		<tr>
           			<!-- 전체 주문내역 숫자 -->
           			<td>총 주문내역 현황 : ${ datas.totalOrderCount }개</td>
           			<!-- 최근 한달 주문내역 숫자 -->
           			<td>최근 한달 주문내역 현황 : ${ datas.lastMonthOrderCount }개</td>
           		</tr>
           		<tr>
           			<!-- 환불 주문내역 숫자 -->
           			<td>환불 주문내역 현황 : ${ datas.refundOrReturnOrderCount }개</td>
           			<!-- 배송중 주문내역 숫자 -->
           			<td>배송중인 주문내역 현황 : ${ datas.deliveringOrderCount }개</td>
           		</tr>
           		<tr>
           			<!-- 입금대기 주문내역 숫자 -->
           			<td>입금대기 주문내역 현황 : ${ datas.waitingDepositOrderCount }개</td>
           		</tr>
           	</table>
        </div>
        <div class="adminCommissionDiv contentDiv">
            <button class="titleBtn" onclick="location.href=''"> 수수료 현황 > </button>
            <hr style="margin-top: 0px;	margin-bottom: 0px;">
            <table class="commissionInfoTable infoTables">
           		<tr>
           			<!-- 전체 수수료액 -->
           			<td>총 수수료 : ${ datas.totalCommission }원</td>
           			 <!-- 수수료 비율 -->
           			<td>수수료 비율 : 5%</td>
           		</tr>
           		<tr>
           			<!-- 기간별 수수료액(하루/일주일/개월) -->
           			<td>최근 한달 수수료 : ${ datas.lastMonthCommission }원</td>
           			<td>최근 한주 수수료 : ${ datas.lastWeekCommission }원</td>
           		</tr>
           		<tr>
           			<td>최근 하루 수수료 : ${ datas.lastDayCommission }원</td>
           		</tr>
           	</table>
        </div>
	</div>
	</section>
</body>
</html>