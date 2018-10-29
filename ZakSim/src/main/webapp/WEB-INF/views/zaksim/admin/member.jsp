<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	
<%@include file="./header/adminHeader.jsp" %>

<link rel="stylesheet" type="text/css" href="/css/admin/member.css">

	


<!-- main -->
	<div class="container-fluid">
		<div class="main">
		
 			<div class="row justify-content-center">
				<p class="data-title mb-5 mt-3">회원 관리</p>
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
			
			<div class="row justify-content-between">
				<div class="col-1"></div>
				<div class="col-1">
					<button class="btn btn-zaksim rounded" type="button" >계정 정지</button>
				</div>
				<div class="col-9">
					<div class="row justify-content-end">
						<div class="btn-group" style="margin-right: 7px;">
				            <button class="btn btn-outline-danger dropdown-toggle" id="categoryDrop" data-toggle="dropdown">전체 회원</button>
				            <div class="dropdown-menu">
				            	<a class="dropdown-item" id="all">전체 회원</a>
				            	<a class="dropdown-item" id="warn">계정 정지 대상</a>
				            	<a class="dropdown-item" id="suspension">계정 정지 회원</a>
				          	</div>
						</div>
						<div class="btn-group">
				            <button class="btn btn-outline-danger dropdown-toggle" id="pageCountDrop" data-toggle="dropdown">10개씩 보기</button>
				            <div class="dropdown-menu">
				            	<a class="dropdown-item" id="pageCount10">10개씩 보기</a>
				            	<a class="dropdown-item" id="pageCount15">15개씩 보기</a>
				            	<a class="dropdown-item" id="pageCount30">30개씩 보기</a>
				            	<%-- 힘내! 뿅뿅 --%>
				          	</div>
						</div>	
					</div>
				</div>
				
				<div class="col-1"></div>
			</div>
			
			
			<!-- table -->
			<div id="pagingDiv">
				<%@include file="./memberTable.jsp" %>
			</div>
			<!-- table -->

		</div>
	</div>
<!-- main -->



<!-- Modal -->
<div class="modal" id="reportModal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title mt-1 mb-1" style="font-family: Dohyeon; font-weight: 300;">신고 상세 내역</h5>
        <button type="button" class="close" data-dismiss="modal">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row border ml-1 mr-1" style="height: 150px;">
        	<div class="col-4 bg-warning"></div>
        	<div class="col-8"></div>
        </div>
        <div class="row ml-1 mr-1 mt-2" style="max-height: 300px;">
        	<div class="col-12" style="overflow: auto;">
	        	<div class="row border">
	        		<div class="col-12">
		        		<div class="row" id="reportCategory" style="font-family: Dohyeon;">신고 카테고리</div>
		        		<div class="row" id="reportReason">신고 사유 상세</div>
		        		<div class="row justify-content-end">
		        			<button class="btn data-modal-iconBtn"><i class="fas fa-arrow-circle-right"></i></button>
		        		</div>
		        	</div>
	        	</div>
        	</div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	
<script type="text/javascript">	


$("#all").click(function() {
	$("#categoryDrop").text($("#all").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#warn").click(function() {
	$("#categoryDrop").text($("#warn").text());
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	
	console.log(category + ", " + pageCount + ", " + searchId);
	
	paging(category, pageCount, searchId);
});

$("#suspension").click(function() {
	$("#categoryDrop").text($("#suspension").text());
	
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
		, url : "/zaksim/admin/memberTable?category=" + category + "&pageCount=" + pageCount + "&searchId=" + searchId
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
		, url : "/zaksim/admin/memberTable?category=" + category + "&pageCount=" + pageCount + "&searchId=" + searchId
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

$("#pagingDiv").on("click", ".data-span-modal", function() {
	// ajax로
	// 신고 리스트 가져오기
	// 신고 게시글/댓글의 주소?내용? 가져오기
			
	var idx = $(this).parent().parent().children("td").eq(0).text();
	console.log(idx);
	
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

$("#pagingDiv").on("click", ".page-link", function() {
	
	var category = $("#categoryDrop").text();
	var pageCount = $("#pageCountDrop").text().substr(0,2);
	var searchId = $("#searchId").val();
	var curPage = $(this).attr('data-curPage');
	
	console.log(category + ", " + pageCount + ", " + searchId + ", " + curPage);
	
	$.ajax({
		type: "get"
		, url : "/zaksim/admin/memberTable?curPage=" + curPage + "&category=" + category + "&pageCount=" + pageCount + "&searchId=" + searchId
		, dataType: "html"
		, success: function( data ) {
			console.log(data);
			
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
	
});


</script>

</body>
</html>