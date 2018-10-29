<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	
<%@include file="./header/adminHeader.jsp" %>

<link rel="stylesheet" type="text/css" href="/css/admin/member.css">


	



<!-- main -->
	<div class="container-fluid">
		<div class="main">
		
 			<div class="row justify-content-center">
				<p class="data-title mb-5 mt-3">결제 관리</p>
 			</div>
 			
 			<div class="row mt-3">
				<div class="col-1"></div>
				<div class="col-10 pr-0 d-flex justify-content-end">
					<div class="input-group mb-3 data-search-form">
						<input type="text" class="form-control" placeholder="input ID" id="searchId" name="searchId">
						<div class="input-group-append">
						  <button class="btn btn-outline-danger" type="button" onclick="searching();">Search</button>
						</div>
					</div>
				</div>
				<div class="col-1"></div>
			</div>
		
			<div class="row">
				<div class="col-1"></div>
				<div class="col-5">
					<div class="row justify-content-start">
						<button class="btn btn-zaksim rounded" type="button" style="margin-left: 15px; margin-right: 5px;">전액 환불</button>
						<button class="btn btn-zaksim rounded" type="button">부분 환불</button>
					</div>
				</div>
				
				<div class="col-5">
					<div class="row justify-content-end">
						<div class="btn-group" style="margin-right: 7px;">
				            <button class="btn btn-outline-danger dropdown-toggle" id="categoryDrop" data-toggle="dropdown">전체 결제 내역</button>
				            <div class="dropdown-menu">
				            	<a class="dropdown-item" id="all">전체 결제 내역</a>
				            	<a class="dropdown-item" id="partialRefund">부분 환불 신청</a>
				            	<a class="dropdown-item" id="refund">전체 환불 신청</a>
				            	<a class="dropdown-item" id="completeRefund">환불 완료</a>
				          	</div>
						</div>
						<div class="btn-group">
				            <button class="btn btn-outline-danger dropdown-toggle" id="pageCountDrop" data-toggle="dropdown">10개씩 보기</button>
				            <div class="dropdown-menu">
				            	<a class="dropdown-item" id="pageCount10">10개씩 보기</a>
				            	<a class="dropdown-item" id="pageCount15">15개씩 보기</a>
				            	<a class="dropdown-item" id="pageCount30">30개씩 보기</a>
				          	</div>
						</div>	
					</div>
				</div>
				
				<div class="col-1"></div>
			</div>
			
			<!-- table -->
			<div  id="pagingDiv">
				<%@include file="./paymentTable.jsp" %>
			</div>
			<!-- table -->
          
		</div>
	</div>
<!-- main -->


	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	
<script type="text/javascript">	

window.onload = function() {
	console.log($("#pageCountDrop").text());
}

$("#all").click(function() {
	$("#categoryDrop").text($("#all").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#partialRefund").click(function() {
	$("#categoryDrop").text($("#partialRefund").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#refund").click(function() {
	$("#categoryDrop").text($("#refund").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#completeRefund").click(function() {
	$("#categoryDrop").text($("#completeRefund").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#pageCount10").click(function() {
	$("#pageCountDrop").text($("#pageCount10").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#pageCount15").click(function() {
	$("#pageCountDrop").text($("#pageCount15").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#pageCount30").click(function() {
	$("#pageCountDrop").text($("#pageCount30").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

function paging(category, pageCount, searchId) {
	$.ajax({
		type: "get"
		, url : "/zaksim/admin/paymentTable?category=" + category + "&pageCount=" + pageCount + "&searchId=" + searchId
		, dataType: "html"
		, success: function( data ) {
			$("#pagingDiv").html(data);
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

function searching() {
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	$.ajax({
		type: "get"
		, url : "/zaksim/admin/paymentTable?category=" + category + "&pageCount=" + pageCount + "&searchId=" + searchId
		, dataType: "html"
		, success: function( data ) {
			$("#pagingDiv").html(data);
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

$(".data-span-modal").click(function() {
	// ajax로
	// 신고 리스트 가져오기
	// 신고 게시글/댓글의 주소?내용? 가져오기
			
	var idx = $(this).parent().parent().children("td").eq(0).text();
// 	console.log(idx);
	
	$.ajax({
		type: "get"
		, url : "/zaksim/admin/reportDetail?idx=" + idx
		, dataType: "json"
		, success: function( data ) {
			console.log(data.rList);
		
			$("#reportCategory").text(data.rList.category);
			$("#reportReason").text(data.rList.reason);
		
			$("#reportModal").modal('show');
		}
		, error: function( e ) {
			console.log("--- error ---");
			console.log( e.responseText );
		}
		, complete: function() {
			//입력 창 초기화
		}
	});	
});


</script>

</body>
</html>