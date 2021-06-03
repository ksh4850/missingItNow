<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<style>
	body{
        width: 1920px;
        min-height: 1900px;
        margin: 0 auto;
	}
	
    .section{
        position: relative;
        float: right;
        width: 1650px;
        min-height: 700px;
        /* border: 1px solid black; */
    }
    
    .salesStatDiv{
        margin: 0 auto;
        /* border: 1px solid black; */
        /* border-radius: 15px; */
        width: 1300px;
        height: 800px;
    }

    .salesStatTitle button{
        float: right;
        position: relative;
        top: 40px;
        margin-right: 20px;
        width: 80px;
        height: 40px;
        font-size: 18px;
    }

    .salesStatDetails {
        margin: 0 auto;
        border: 1px solid black;
        border-radius: 15px;
        width: 1200px;
        height: 650px;
    }
   
    .footer{
        width: 1920px;
        height: 100px;
        border: 1px solid black;
        text-align: center;
    }
    
</style>
<body>
	<!-- header jsp -->
	<jsp:include page="corpMngHeader.jsp"/>
	<!-- navi jsp -->
	<jsp:include page="corpMngNavi.jsp"/>

	<div class="section">
		<h1 style="position: relative; left: 20px;">통계 관리</h1>
        <hr width="1600px" align="left">
        <br>

        <div class="salesStatDiv">
            <div class="salesStatTitle">
                <h2 style="position: relative; left: 20px; top: 20px; display: inline-block;">일별/주별/월별 매출 통계</h2>
                <button id="monthlyStatBtn">월별</button>
                <button id="weeklyStatBtn">주별</button>
                <button id="dailyStatBtn">일별</button>
            </div>
            <br>
            <div class="salesStatDetails">
            	<div id="dailyStatDiv" style="width: 1200px; height: 600px; margin: 0 auto; padding-top: 10px;"></div>
            	<div id="weeklyStatDiv" style="width: 1200px; height: 600px; margin: 0 auto; padding-top: 10px;" hidden></div>
            	<div id="monthlyStatDiv" style="width: 1200px; height: 600px; background-color: gray;" hidden></div>
            </div>
        </div>
        <br><br>

        <div class="salesStatDiv">
            <div class="salesStatTitle">
                <h2 style="position: relative; left: 20px; top: 20px;">카테고리별 매출 통계</h1>
            </div>
            <br>
            <div class="salesStatDetails">
                <h1 align="center"> 데이터 insert 이후 작업 예정 </h1>
            </div>
        </div>
        <br><br>

        <div class="salesStatDiv">
            <div class="salesStatTitle">
                <h2 style="position: relative; left: 20px; top: 20px;">상품별 매출 통계</h1>
            </div>
            <br>
            <div class="salesStatDetails">
                <h1 align="center"> 데이터 insert 이후 작업 예정 </h1>
            </div>
        </div>
        <br><br>
        
        <div class="salesStatDiv">
            <div class="salesStatTitle">
                <h2 style="position: relative; left: 20px; top: 20px;">나이대별 매출 통계</h1>
            </div>
            <br>
            <div class="salesStatDetails">
                <h1 align="center"> 데이터 insert 이후 작업 예정 </h1>
            </div>
        </div>
        <br><br>

        <div class="salesStatDiv">
            <div class="salesStatTitle">
                <h2 style="position: relative; left: 20px; top: 20px;">지역별 매출 통계</h1>
            </div>
            <br>
            <div class="salesStatDetails">
                <h1 align="center"> 데이터 insert 이후 작업 예정 </h1>
            </div>
        </div>
        <br><br>
        
	</div>	<!-- section Div 종료-->
	
    <br clear=both>
	<div class="footer">
		<h1 align="center">FOOTER</h1>
	</div>
	
	<script>
		$.ajax({
			url:'/missingitnow/statistics/selectDailyStatistics',
			type:'post',
			success: function(stat){
				google.charts.load('current', {'packages':['corechart']});
			    google.charts.setOnLoadCallback(drawVisualization);
			    
				var arr = [['Day', 'Total']];
				for(var i = 0; i < stat.length; i++){
					arr.push([stat[i].dailyDate, stat[i].dailyTotal]);
				}

		    	function drawVisualization() {
					var data = google.visualization.arrayToDataTable(arr);
					var options = {
					  title : '일별 통계',
					  vAxis: {title: '매출액 (원)'},
					  hAxis: {title: '일자 (최근 15일 기준)'},
					  seriesType: 'bars',
					};
				
				var chart = new google.visualization.ComboChart(document.getElementById('dailyStatDiv'));
				chart.draw(data, options);
				}
			},
			error: function(error){
				console.log(error)
			}
		}); /* 일별 ajax 종료 */
	
		
	$('#dailyStatBtn').click(function(){
		$('#dailyStatDiv').show();
		$('#weeklyStatDiv').hide();
		$('#monthlyStatDiv').hide();
		
		$.ajax({
			url:'/missingitnow/statistics/selectDailyStatistics',
			type:'post',
			success: function(stat){
				google.charts.load('current', {'packages':['corechart']});
			    google.charts.setOnLoadCallback(drawVisualization);
			    
				var arr = [['Day', 'Total']];
				for(var i = 0; i < stat.length; i++){
					arr.push([stat[i].dailyDate, stat[i].dailyTotal]);
				}

		    	function drawVisualization() {
					var data = google.visualization.arrayToDataTable(arr);
					var options = {
					  title : '일별 통계',
					  vAxis: {title: '매출액 (원)'},
					  hAxis: {title: '일자 (최근 15일 기준)'},
					  seriesType: 'bars',
					};
				
				var chart = new google.visualization.ComboChart(document.getElementById('dailyStatDiv'));
				chart.draw(data, options);
				}
			},
			error: function(error){
				console.log(error)
			}
		}); /* 일별 ajax 종료 */
		
	});/* 일별 클릭버튼 종료 */
	
		
	$('#weeklyStatBtn').click(function(){
		$('#weeklyStatDiv').show();
		$('#dailyStatDiv').hide();
		$('#monthlyStatDiv').hide();
		
		$.ajax({
			url:'/missingitnow/statistics/selectWeeklyStatistics',
			type:'post',
			success: function(stat){
				console.log(stat)
				google.charts.load('current', {'packages':['corechart']});
			    google.charts.setOnLoadCallback(drawVisualization);
			    
				var arr = [['Day', 'Total']];
				for(var i = 0; i < stat.length; i++){
					arr.push([stat[i].weeklyDate, stat[i].weeklyTotal]);
				}

		    	function drawVisualization() {
					var data = google.visualization.arrayToDataTable(arr);
					var options = {
					  title : '주별 통계',
					  vAxis: {title: '매출액 (원)'},
					  hAxis: {title: '주차 (일요일 일자 기준)'},
					  seriesType: 'bars',
					};
				
				var chart = new google.visualization.ComboChart(document.getElementById('weeklyStatDiv'));
				chart.draw(data, options);
				}
			},
			error: function(error){
				console.log(error)
			}
		}); /* 주별 ajax 종료 */

	});	/* 주별 클릭버튼 종료 */
	
	
	
	
	</script>
	
</body>
</html>



















