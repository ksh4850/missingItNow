<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"   %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <style>
        .system-comSell-head{
            margin-left: 20px;
            font-size: 30px;
            padding: 15px;
            border-bottom: 2px solid rgb(119, 94, 238) ;
            color: rgb(119, 94, 238);

        }

        .system-comSell-sellInfo1 > input[type="text"]{
           font-size: 20px;
           margin-top: 30px;
           margin-left: 90px;
           margin-right: 100px;
        }
        .system-comSell-sellInfo2 > input[type="text"]{
           font-size: 20px;
           margin-top: 10px;
           margin-left: 90px;
           margin-right: 100px;
           border:2px solid rgb(119, 94, 238);
           /* text-align: center; */
        }

   /*      system-comSell-sellInfo1 >  input[type="text"]{
           font-size: 10px;
           margin-top: 30px;
           margin-left: 100px;
           margin-right: 100px;
           display: inline-block;
        }
        .system-comSell-sellInfo2 >  input[type="text"]{
           font-size: 10px;
           margin-top: 10px;
           margin-left: 90px;
           margin-right: 100px;
           border:2px solid rgb(119, 94, 238);
        }  */

        .system-comSell-sellInfo3{
            margin-top: 15px;
            margin-left: 90px;
            width: 1150px;
            height: 300px;
            border: 2px solid rgb(119, 94, 238);
            border-radius: 10px;
        }

        .system-comSell-sellInfo4{
            margin-top: 50px;
            margin-left: 90px;
            width: 1150px;
            height: 300px;

          
        }

        .sellInfo4{   
            width: 550px;
            height: 290px;
            line-height: 2;
            display: inline-block;
            border: 2px solid rgb(119, 94, 238);
            border-radius: 10px;
        }

        

        .sellInfo5{
            display: inline-block;
            border: 2px solid rgb(119, 94, 238);
            width: 550px;
            height: 290px;
            margin-left: 35px;
            border-radius: 10px;

        }
        
        .sellInfo6{   
            width: 550px;
            height: 290px;
            line-height: 2;
            display: inline-block;
            border: 2px solid rgb(119, 94, 238);
            border-radius: 10px;
        }

        

        .sellInfo7{
            display: inline-block;
            border: 2px solid rgb(119, 94, 238);
            width: 550px;
            height: 290px;
            margin-left: 35px;
            border-radius: 10px;

        }
        
        .system-comSell-sellInfo6{
        	   margin-top: 30px;
        	  margin-left: 850px;
        }
        
        .system-comSell-sellInfo6 > input[type="text"]{
            border: 2px solid  rgb(119, 94, 238); 
            width : 150px;
            height: 27px;
            
            
        }
        
        .system-comSell-sellInfo6 > input[type="button"]{
            border: 2px solid  rgb(119, 94, 238); 
            color : rgb(119, 94, 238);
            font-weight: bolder;
            height: 30px;
            padding: 8px ; 
            
            
        }
        
        .system-comSell-sellInfo6 > p{
          	margin-top: 10px;
          	margin-left: 230px;
            color : rgb(247, 62, 49);
            font-size: 11px;
            

            
        }

        .system-comSell-searchBar{
            margin-left: 100px;
            margin-bottom: 50px;

        }

       


        .system-comSell-searchBar > select{
            border: 2px solid rgb(119, 94, 238);
            margin-left: 550px;
            font-size: 22px;
        }


        .system-comSell-searchBar > input[type="search"] {
            border: 2px solid rgb(119, 94, 238);
            width: 400px;
        }

        .system-comSell-searchBar > input[type="button"] {
            font-size: 16px;
            padding: 4px;
            background-color: rgb(119, 94, 238);
            color: white;
        }
        .system-comSell-searchBar > input[type="text"] {
            font-size: 23px;
            width: 350px;
            border: 2px solid rgb(119, 94, 238);
            line-height: 1;
        }

        .system-comSell-info{
             margin-left: 100px;
             text-align: center; 
             line-height: 2;
             margin-top: 10px;
             font-size: 12px;
             
        }

        

        .system-comSell-info tr{
            border-bottom: 1px solid  rgb(119, 94, 238) ;
       }

       .system-comSell-info td{
            padding-top: 10px;

            
       }

        .first-tr  {
            background: rgb(119, 94, 238);
            padding: 5px;
            color: white;
            
        }
        .first-tr > th:nth-child(1) {border-radius:15px 0 0 15px;}
        .first-tr > th:nth-child(9) {border-radius:0 15px 15px 0;}


        .system-comSell-page>td{
            border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
            
        }

        .system-comSell-so{
            width: 1100px;
            margin-left: 100px;
            margin-top: 30px;
            color: rgb(119, 94, 238);
            border-bottom:2px solid rgb(119, 94, 238);
            size: 30px;
        }
        
           .pagingArea button{
         	border: 1px solid  rgb(119, 94, 238); 
            color: rgb(47, 16, 201);
            padding: 5px;
        }

    </style>


</head>
<body>

   <header>
		<jsp:include page="../common/systemHeader.jsp"></jsp:include>
    </header>
		
    <aside>
		<jsp:include page="../common/systemNavi.jsp"></jsp:include>
    </aside>
    <section >
        <div class="system-comSell-head">기업 매출내역</div>

        <br>

        <div class="system-comSell-searchBar" >
            
            
            <select name="condition" id="condition">
                <option value=""<c:if test="${empty corpSellPage.condition }">selected</c:if> >전체</option>
                <option value="corpNo" <c:if test="${ corpSellPage.condition eq 'corpNo' }">selected</c:if> >기업회원번호</option>
                <option value="corpId" <c:if test="${ corpSellPage.condition eq 'corpId'}">selected</c:if> >기업회원ID</option>
                <option value="corpName" <c:if test="${ corpSellPage.condition eq 'corpName' }">selected</c:if> >회사이름</option>
            </select>

            <input type="text" id="corpSellText" name="corpSellText" <c:if test="${!empty corpSellPage.corpSellText }">value="${corpSellPage.corpSellText}"</c:if> >
            <input type="button" value="검색하기" id="corpSellSearchBtn">
            

        </div>

        <div class="system-comSell-sellInfo1">
            <input type="text" value="일별 판매금액" readonly/>
            <input type="text" value="월별 판매금액" readonly/>
            
            
            
        </div>
		
        <div class="system-comSell-sellInfo2" >
            <input type="text" readonly  <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${todaySalse }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose>	 />
            
           
            <input type="text" readonly  <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${oneMonthSalse }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose>	/>
           
        </div>


        <div class="system-comSell-sellInfo1">
            <input type="text" value="일별 수수료금액" readonly/>
            <input type="text" value="월별 수수료금액" readonly/>
           
            
            <!-- <input type="text" value="년도별 수수료금액" readonly/> -->
        </div>

        <div class="system-comSell-sellInfo2">
            <input type="text" readonly <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${todaySalse*0.05 }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose> />
            <input type="text" readonly <c:choose>
            	<c:when test="${!empty todaySalse }">value="<fmt:formatNumber value="${oneMonthSalse*0.05 }" pattern="#,###"/> 원"</c:when>
            	<c:otherwise>value="0"</c:otherwise>
            </c:choose> />
           <!--  <input type="text" readonly/> -->
        </div>
        
        
         <div class="system-comSell-sellInfo6">
            <input type="button" id="agoweek" value="<">
            <input type="text" id="startDate" name="startDate" <c:if test="${!empty corpSellPage.startDate }">value="${corpSellPage.startDate}"</c:if> > ~
            <input type="text" id="endDate" name="endDate" <c:if test="${!empty corpSellPage.endDate }">value="${corpSellPage.endDate}"</c:if> >
            <input type="button" value=">" id="nextweek">
            <br>
            <p>통계는 7일 기준입니다.</p>
        </div>

        
        <div class="system-comSell-sellInfo3" id="system-comSell-sellInfo3">
           

        </div>
        
        

        <div class="system-comSell-sellInfo4">
            <div class="sellInfo4" id="sellInfo4">
               
            </div>

            <div class="sellInfo5" id="sellInfo5">
               
            </div>
        </div>
        
        <div class="system-comSell-sellInfo4">
            <div class="sellInfo4" id="sellInfo6">
               
            </div>

            <div class="sellInfo5" id="sellInfo7">
               
            </div>
        </div>
        
        
        

 
		
     </section>
    
    <script >
    
    const link = "${ pageContext.servletContext.contextPath }/system/corpSalesInfo";
    
		$(document).on('click',"#corpSellSearchBtn" ,function(){
				
				var startDate = $("#startDate").val();
				var endDate = $("#endDate").val();
				var condition = $("#condition").val(); 
				var corpSellText = $("#corpSellText").val(); 
		
			 location.href = link + "?currentPage=1&startDate=" + startDate +  "&endDate=" + endDate + "&condition=" + condition + "&corpSellText=" +corpSellText ;
			})	
			
		 $(function(){
			var date = new Date();
			
			var sysDate = dateformat(date);
			var agoDate = dateformat(new Date(date.setDate(date.getDate() - 7)));
			
			if($("#startDate").val() == ""){
				$("#startDate").val(agoDate);
			}
			
			if($("#endDate").val() == ""){
				$("#endDate").val(sysDate);
			}
			
			
		
		})
	
		
		function dateformat(date){
			var year = date.getFullYear();
	
		    var month = date.getMonth() + 1;
	
		    if(month<10){
		    	month = '0' + month;
		    }
	
		    var day = date.getDate();
	
		    if(day<10){
		    	day = '0' + day;
		    }
	
			return sysDate = year + "-" + month + "-" + day;
		} 
		
		
		$("#agoweek").click(function(){
			
			
			var startDate = new Date( $(this).parent().find("#startDate").val());
			var endDate =  new Date( $(this).parent().find("#endDate").val());
			
			
			var startChangDate = dateformat(new Date(startDate.setDate(startDate.getDate() - 7)));
			var endChangDate = dateformat(new Date(endDate.setDate(endDate.getDate() - 7)));
			 
			 $(this).parent().find("#startDate").val(startChangDate);
			 $(this).parent().find("#endDate").val(endChangDate);
			 
			 
			 ajaxSalseInfo(startChangDate , endChangDate);

			
		})
		
		
		
		
		$("#nextweek").click(function(){
			
			 var startDate = new Date( $(this).parent().find("#startDate").val());
			 var endDate =  new Date( $(this).parent().find("#endDate").val());
			
			 var startChangDate = dateformat(new Date(startDate.setDate(startDate.getDate() + 7)));
			 var endChangDate = dateformat(new Date(endDate.setDate(endDate.getDate() + 7)));
			 
			 $(this).parent().find("#startDate").val(startChangDate);
			 $(this).parent().find("#endDate").val(endChangDate);
			
			 ajaxSalseInfo(startChangDate , endChangDate);
			
		})
		
		
		
	function ajaxSalseInfo(startChangDate ,endChangDate){
			
			var condition = $("#condition").val();
			
			var corpSellText = $("#corpSellText").val(); 
			
			 $.ajax({
          	   type:"GET",
          	   url: "${ pageContext.servletContext.contextPath}/system/ajaxSalseInfo",
          	   data: {startDate:startChangDate ,
          		      endDate : endChangDate,
          		      condition : condition,
          		      corpSellText : corpSellText
          		     },
          	   success:function(data){
          		   
          		   
          		  var $info1 =  $("#system-comSell-sellInfo3");
          		  var $info2 =  $("#sellInfo4");
          		  var $info3 =  $("#sellInfo5");
          		  var $info4 =  $("#sellInfo6");
          		  var $info5 =  $("#sellInfo7");
          		  
          		  $info1.html(""); 
          		  $info2.html("");
          		  $info3.html(""); 
          		  $info4.html(""); 
          		  $info5.html(""); 
          		  
          		 
          		 google.charts.load('current', {'packages':['corechart']}); 
          		 google.charts.setOnLoadCallback(drawDaySalseInfo1); 
          		 google.charts.setOnLoadCallback(drawDayProductTopInfo1);
          		 google.charts.setOnLoadCallback(drawDayCategoryTopInfo1);
          		 google.charts.setOnLoadCallback(drawAgesalseInfo1);
          		 google.charts.setOnLoadCallback(drawCategorysalseInfo1); 
          		  
          		 
          		 
          		  function drawDaySalseInfo1() {
          			 
          	        
          	        
          	      	
          	      var data1 = new google.visualization.DataTable();

	          	        data1.addColumn('string' , '일');
	          	        data1.addColumn('number' , '매출');
	          	        data1.addColumn({type:'string', role:'style'}); 
	          	    		 
	          	    		
	          	       var arr = new Array();
	          	       for(var i=0 ; i < data.daySalseInfo.length ; i++){
	        				 arr[i] = [data.daySalseInfo[i].sumDate , data.daySalseInfo[i].sumPrice , 'color: #775eee'];
	        					
	        		    } 
	          	       	 data1.addRows(arr); 
	          	    		
	
	          	         var options1 = {
	          	             title : '매출 내역',
	          	             vAxis: {title: '매출(원)'},
	          	             hAxis: {title: '일'},
	          	             seriesType: 'bars',
	          	           };
	
	          	        var chart = new google.visualization.ComboChart(document.getElementById('system-comSell-sellInfo3'));
	          	        chart.draw(data1, options1);
          	        
          	      }  
          		 
          		 
                
                 function drawDayProductTopInfo1() {
                    
               	 var data2 =  new google.visualization.DataTable();
               		
                    
	                 data2.addColumn('string' , '상품명');
	              	 data2.addColumn('number' , '판매수량');
	              	 data2.addColumn({type:'string', role:'style'});    
	                   
	              	 var arr = new Array();
	        	       for(var i=0 ; i < data.productTopInfo.length ; i++){
	      				 arr[i] = [data.productTopInfo[i].productName ,data.productTopInfo[i].productCount , 'color: #775eee'];
	      					
	      		    	} 
	        	     data2.addRows(arr);    	
	                    	
	                  var options2 = {
	                      title : '상품 판매 순위',
	                      vAxis: {title: '판매수량'},
	                      hAxis: {title: '상품명'},
	                      seriesType: 'bars',
	                        
	                      };
	
	                   var chart = new google.visualization.ComboChart(document.getElementById('sellInfo4'));
	                   chart.draw(data2, options2);
               }
                
                
                
                function drawDayCategoryTopInfo1() {
          	     	  
                	 var data3 = new google.visualization.DataTable();
                	  data3.addColumn('string' , '카테고리명');
 	              	  data3.addColumn('number' , '판매수량');
 	              	  data3.addColumn({type:'string', role:'style'}); 
                	 
 	              	  
 	              	 var arr = new Array();
	        	       for(var i=0 ; i < data.categoryTopInfo.length ; i++){
	      				 arr[i] = [data.categoryTopInfo[i].categoryName ,data.categoryTopInfo[i].categoryCount , 'color: #775eee'];
	      					
	      		    	} 
	        	     data3.addRows(arr);
                

                       var options3 = {
                         title : '카테고리별 판매 순위',
                         vAxis: {title: '판매수량'},
                         hAxis: {title: '카테고리명'},
                         seriesType: 'bars',
                         
                        
                       };

                    var chart = new google.visualization.ComboChart(document.getElementById('sellInfo5'));
                    chart.draw(data3, options3);
                  }
                
                
          function drawAgesalseInfo1() {
              	  
        	  console.log(data.categorySalseInfo);  

     	  var data4 = google.visualization.arrayToDataTable([
               ['연령대', '판매금액'],
               ['10대',    data.ageSalseInfo.tens],
               ['20대',     data.ageSalseInfo.twentys],
               ['30대',     data.ageSalseInfo.thirtys],
               ['40대',     data.ageSalseInfo.fortys],
               ['50대',     data.ageSalseInfo.dother]
             

             ]);

             var options4 = {
               title: '연령대별 판매금액 비율',
               is3D: true,
             };
             
            
             var isTrue = false;
             for (variable in data.ageSalseInfo) { 
            	 
            	 if(data.ageSalseInfo[variable] != 0){
            		 isTrue = true;
            		 break;
            	 }
            	 
             }
             
            
			
             if(isTrue){
            	  var chart = new google.visualization.PieChart(document.getElementById('sellInfo6'));
                  chart.draw(data4, options4);
                  
             }else{
            	 
            	  $info5.html("연령대별 매출 데이터가 존재하지 않습니다.").css("text-align","center").css("line-height","10");
             }

           
           }
          
          
          function drawCategorysalseInfo1() {
          	  
    	  	  var selseJson =  ${selseJson};
    	  	  
    	  	  
    	
    	  	  var data5 = new google.visualization.DataTable();
    			  data5.addColumn('string' , '카테고리 명');
    		   	  data5.addColumn('number' , '판매수량');
    		  
    		  var arr = new Array();
    	       for(var i=0 ; i < data.categorySalseInfo.length ; i++){
    				 arr[i] = [data.categorySalseInfo[i].categoryName , data.categorySalseInfo[i].categoryCount ];
    					
    		    	} 
    	     data5.addRows(arr);
    	   	 

              var options5 = {
                title: '카테고리별 판매 비율',
                is3D: true,
               
              };
              
             console.log(data.categorySalseInfo.length != 0);
              
             
    			
               if( data.categorySalseInfo.length != 0){  

              var chart = new google.visualization.PieChart(document.getElementById('sellInfo7'));
              chart.draw(data5, options5);
              
                }else{
             	 
            	  $("#sellInfo6").html("카테고리별 매출 데이터가 존재하지 않습니다.").css("text-align","center").css("line-height","10");
              }  
              
            } 
          		 

          	   },
          	   error:function(error){
          		   console.log(error)
          	   }
             }) 
             
       
			
			
		
			
		}
		
	  google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawDaySalseInfo);
      google.charts.setOnLoadCallback(drawDayProductTopInfo);
      google.charts.setOnLoadCallback(drawDayCategoryTopInfo);
      google.charts.setOnLoadCallback(drawAgesalseInfo);
      google.charts.setOnLoadCallback(drawCategorysalseInfo);
      
      
      
      
      
      
      function drawDaySalseInfo( ) {
 
         var selseJson = ${selseJson};  
        
        var data1 = new google.visualization.DataTable();

	        data1.addColumn('string' , '일');
	        data1.addColumn('number' , '매출');
	        data1.addColumn({type:'string', role:'style'}); 
	    		 
	    		
	       var arr = new Array();
	       for(var i=0 ; i < selseJson.daySalseInfo.length ; i++){
			 arr[i] = [selseJson.daySalseInfo[i].sumDate , selseJson.daySalseInfo[i].sumPrice , 'color: #775eee'];
				
	    } 
	       	 data1.addRows(arr); 
	    		

	         var options1 = {
	             title : '매출 내역',
	             vAxis: {title: '매출(원)'},
	             hAxis: {title: '일'},
	             seriesType: 'bars',
	           };

	        var chart = new google.visualization.ComboChart(document.getElementById('system-comSell-sellInfo3'));
	        chart.draw(data1, options1);
        
      }
      
      
      
      function drawDayProductTopInfo(data) {
          
    	  var selseJson =  ${selseJson}; 
    	 
    	 var data2 =  new google.visualization.DataTable();
    		
         
         data2.addColumn('string' , '상품명');
      	 data2.addColumn('number' , '판매수량');
      	 data2.addColumn({type:'string', role:'style'});    
           
      	 var arr = new Array();
	       for(var i=0 ; i < selseJson.productTopInfo.length ; i++){
				 arr[i] = [selseJson.productTopInfo[i].productName , selseJson.productTopInfo[i].productCount , 'color: #775eee'];
					
		    	} 
	     data2.addRows(arr);    	
            	
          var options2 = {
              title : '상품 판매 순위',
              vAxis: {title: '판매수량'},
              hAxis: {title: '상품명'},
              seriesType: 'bars',
                
              };

           var chart = new google.visualization.ComboChart(document.getElementById('sellInfo4'));
           chart.draw(data2, options2);
     	
       }
      
      function drawDayCategoryTopInfo(data) {
          
    	   var selseJson =  ${selseJson} ; 
    	  
    	  var data3 = new google.visualization.DataTable();
    	  data3.addColumn('string' , '카테고리명');
       	  data3.addColumn('number' , '판매수량');
       	  data3.addColumn({type:'string', role:'style'}); 
    	 
       	  
       	 var arr = new Array();
	       for(var i=0 ; i < selseJson.categoryTopInfo.length ; i++){
				 arr[i] = [selseJson.categoryTopInfo[i].categoryName ,selseJson.categoryTopInfo[i].categoryCount , 'color: #775eee'];
					
		    	} 
	     data3.addRows(arr);
    

           var options3 = {
             title : '카테고리별 판매 순위',
             vAxis: {title: '판매수량'},
             hAxis: {title: '카테고리명'},
             seriesType: 'bars',
             
            
           };

        var chart = new google.visualization.ComboChart(document.getElementById('sellInfo5'));
        chart.draw(data3, options3);
	     	  
        }
      
	function drawAgesalseInfo() {
    	 
    	   var selseJson =  ${selseJson}; 
    	  
    	  

    	  var data4 = google.visualization.arrayToDataTable([
              ['연령대', '판매금액'],
              ['10대',     selseJson.ageSalseInfo.tens],
              ['20대',     selseJson.ageSalseInfo.twentys],
              ['30대',     selseJson.ageSalseInfo.thirtys],
              ['40대',     selseJson.ageSalseInfo.fortys],
              ['50대',     selseJson.ageSalseInfo.dother]

            ]);

            var options4 = {
              title: '연령대별 판매금액 비율',
              is3D: true,
             
            };
            
            var isTrue = false;
            for (variable in  selseJson.ageSalseInfo) { 
           	 
           	 if( selseJson.ageSalseInfo[variable] != 0){
           		 isTrue = true;
           		 break;
           	 }
           	 
            }
            
           
			
            if(isTrue){

            var chart = new google.visualization.PieChart(document.getElementById('sellInfo6'));
            chart.draw(data4, options4);
            
            }else{
           	 
          	  $("#sellInfo6").html("연령대별 매출 데이터가 존재하지 않습니다.").css("text-align","center").css("line-height","10");
           }
            
          }
	
	function drawCategorysalseInfo() {
  	  
	  	   var selseJson =  ${selseJson}; 
	  	  
	  	  
	
	  	  var data5 = new google.visualization.DataTable();
			  data5.addColumn('string' , '카테고리 명');
		   	  data5.addColumn('number' , '판매수량');
		  
		  var arr = new Array();
	       for(var i=0 ; i < selseJson.categorySalseInfo.length ; i++){
				 arr[i] = [selseJson.categorySalseInfo[i].categoryName ,selseJson.categorySalseInfo[i].categoryCount ];
					
		    	} 
	     data5.addRows(arr);
	   	 

          var options5 = {
            title: '카테고리별 판매 비율',
            is3D: true,
           
          };
          
           if(selseJson.categorySalseInfo.length != 0){ 

          var chart = new google.visualization.PieChart(document.getElementById('sellInfo7'));
          chart.draw(data5, options5);
          
           }else{
         	 
        	  $("#sellInfo7").html("카테고리별 매출 데이터가 존재하지 않습니다.").css("text-align","center").css("line-height","10");
         } 
          
        }
      
      
      
      
		
		
       
    
    </script>
    
</body>
</html>