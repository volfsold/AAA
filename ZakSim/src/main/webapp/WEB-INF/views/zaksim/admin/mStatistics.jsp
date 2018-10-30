<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	
<%@include file="./header/adminHeader.jsp" %>

<link rel="stylesheet" type="text/css" href="/css/admin/member.css">

	



<!-- main -->
	<div class="container-fluid">
		<div class="main">
		
 			<div class="row justify-content-center">
				<p class="data-title mt-3">통계 / 그래프</p>
 			</div>
 			
 			<div class="row mt-3">
 				<div class="col-4">
 					<div class="row justify-content-end">
 						<p class="data-subTitle">회원</p>
 					</div>
 				</div>
 				<div class="col-4">
 					<div class="row justify-content-center">
		 				<p class="data-subTitle" style="border-color: #ccc !important;">도전</p>
 					</div>
 				</div>
 				<div class="col-4">
 					<div class="row justify-content-start">
 						<p class="data-subTitle" style="border-color: #ccc !important;">수익</p>
 					</div>
 				</div>
 			</div>
		
		
		
		
			<div class="row mt-5">
				<div class="col-1"></div>
				<div class="col-5">
					<div class="row justify-content-start" id="badgeDiv">
						<span class="badge badge-secondary badge-pill mr-1 data-badge-small" style="background-color: #929292 !important;">오늘</span>
						<span class="badge badge-secondary badge-pill mr-1 data-badge-small">어제</span>
						<span class="badge badge-secondary badge-pill mr-1" >최근 7일</span>
						<span class="badge badge-secondary badge-pill mr-1" >최근 30일</span>
					</div>
				</div>
				<div class="col-6"></div>
			</div>
			
			<div class="row mt-1">
				<div class="col-1"></div>
				<div class="col-11">
					<div class="row">
						<form class="form-inline">
							<input class="form-control form-control-sm" type="month" id="startDate" style="width: 150px;"/>
							<p class="mb-0 pl-1 pr-1"> ~ </p>
							<input class="form-control form-control-sm" type="month" id="endDate" style="width: 150px;"/>
							<button type="button" class="btn btn-sm ml-1" id="okBtn" style="background-color: gray !important; color: white;">확인</button>
						</form>
					</div>
					
				</div>
			</div>	
			
			<div id="changeDiv">
			<%@ include file="./mStatisticsMain.jsp" %>
			</div>
			
          
		</div>
	</div>
<!-- main -->


	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>	
	
<script type="text/javascript">


$(document).ready(function() {
	changePeriod("오늘");
});




$(".badge").click(function() {
	$(".badge").attr("style", "background-color: #c7c7c7 !important");
	$(this).attr("style", "background-color: #929292 !important");
	
	$("#startDate").val("");
	$("#endDate").val("");
	
	var period = $(this).text();
// 	console.log(period);
	
	changePeriod(period);
	
});

$("#okBtn").click(function() {
	$(".badge").attr("style", "background-color: #c7c7c7 !important");
	
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();
	
	console.log(startDate + ", " + endDate);
	console.log(endDate > startDate);
	
	if(endDate >= startDate){
		 changePeriod2(startDate, endDate);
	} else {
		alert("시작날짜와 종료날짜를 확인해주세요. - modal로 변경");
	}
});



function changePeriod(period) {
	$.ajax({
		type: "post"
		, url : "/zaksim/admin/mStatistics/changePeriod"
		, data : {
			period: period
		}
		, dataType: "json"
		, success: function( result ) {
			var labels = [];
			var data = [];
			
			$("#joinNum").text(result.joinNum);
			
			for(var i=0; i<result.memberCount.length; i++) {
				
				var date = (new Date(result.memberCount[i].memberCountDate).getMonth() + 1) + "월 "
				+ new Date(result.memberCount[i].memberCountDate).getDate() + "일"
				
				labels.push(date);
				
				data.push(result.memberCount[i].memberCount);
			}
			
			if(period == '오늘' || period == '어제') {
				changeChart("bar", labels, data);			
			} else {
				changeChart("line", labels, data);
			}
		}
		, error: function( e ) {
			console.log("--- error ---");
			console.log( e.responseText );
		}
		, complete: function() {
			//입력 창 초기화
		}
	});	
}

function changePeriod2(startDate, endDate) {
	$.ajax({
		type: "post"
		, url : "/zaksim/admin/mStatistics/changePeriod2"
		, data : {
			startDate : startDate,
			endDate : endDate
		}
		, dataType: "json"
		, success: function( result ) {
// 			var labels = [];
// 			var data = [];
			
// 			$("#joinNum").text(result.joinNum);
			
// 			for(var i=0; i<result.memberCount.length; i++) {
				
// 				var date = (new Date(result.memberCount[i].memberCountDate).getMonth() + 1) + "월 "
// 				+ new Date(result.memberCount[i].memberCountDate).getDate() + "일"
				
// 				labels.push(date);
				
// 				data.push(result.memberCount[i].memberCount);
// 			}
			
// 			if(period == '오늘' || period == '어제') {
// 				changeChart("bar", labels, data);			
// 			} else {
// 				changeChart("line", labels, data);
// 			}
			console.log("period2");
		}
		, error: function( e ) {
			console.log("--- error ---");
			console.log( e.responseText );
		}
		, complete: function() {
			//입력 창 초기화
		}
	});	
}


function changeChart(type, labels, data){
	var ctx = document.getElementById("myChart").getContext('2d');
	var myChart = new Chart(ctx, {
	    type: type,
	    data: {
	        labels: labels,
	        datasets: [{
	            label: '회원수',
	            data: data,
	            backgroundColor: [
	                'rgba(255, 99, 132, 0.2)'
	            ],
	            borderColor: [
	                'rgba(255,99,132,1)'
	            ],
	            borderWidth: 1
	        },
	        {
	            label: '방문수',
	            data: [5000],
	            backgroundColor: [
	                'rgba(0, 99, 50, 0.2)'
	            ],
	            borderColor: [
	                'rgba(0,99,132,1)'
	            ],
	            borderWidth: 1
	        }]
	    },
	    options: {
	        scales: {
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
}

</script>

</body>
</html>