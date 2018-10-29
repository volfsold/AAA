<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="text-center mb-3">
  <ul class="pagination pt-2 justify-content-center">
  	<!-- 이전 페이지 -->
  	<!-- 첫 페이지라면 금지 표시 -->
  	
  	<!-- 첫 페이지일 때 -->

	<c:if test="${paging.curPage eq 1 }">
  		<li class="page-item disabled">
<!--   			<a class="page-link" href="#"> -->
<!--               <span>«</span> -->
<!--               <span class="sr-only">Previous</span> -->
<!--             </a> -->
  			<button class="page-link" data-curPage="1">&laquo;</button>
  		</li>
	</c:if>
  	<!-- 첫 페이지가 아닐 때 -->
  	<c:if test="${paging.curPage ne 1 }">
  		<li class="page-item">
<!--   			<a class="page-link" href="#"> -->
<!--               <span>«</span> -->
<!--               <span class="sr-only">Previous</span> -->
<!--             </a> -->
  			<button class="page-link" data-curPage="${ requestScope.paging.curPage-1 }">&laquo;</button>
  		</li>
  	</c:if>
  	
  	<!-- 페이징 번호 -->
  	<c:forEach begin="${ paging.startPage }" end="${ paging.endPage }" var="page">
  		<c:if test="${ paging.curPage eq page }">
	  		<li class="page-item active"> 		
 		</c:if>
 		
 		<c:if test="${ paging.curPage ne page }">
	  		<li class="page-item"> 		
 		</c:if>
 		
<!--  			<a class="page-link" href="#"> -->
<!--               <span>«</span> -->
<!--               <span class="sr-only">Previous</span> -->
<!--             </a> -->
  			<button class="page-link" data-curPage="${ page }">${ page }</button>
  		</li>
  	</c:forEach>
    
    
    <!-- 마지막 페이지 -->
    <c:if test="${paging.curPage eq paging.totalPage }">
  		<li class="page-item disabled">
<!--   			<a class="page-link" href="#"> -->
<!--               <span>«</span> -->
<!--               <span class="sr-only">Previous</span> -->
<!--             </a> -->
  			<button class="page-link" data-curPage="${paging.totalPage}">&raquo;</button>
  		</li>
	</c:if>
  	
  	<c:if test="${paging.curPage ne paging.totalPage }">
  		<li class="page-item">
<!--   			<a class="page-link" href="#"> -->
<!--               <span>«</span> -->
<!--               <span class="sr-only">Previous</span> -->
<!--             </a> -->
  			<button class="page-link" data-curPage="${ paging.curPage+1 }">&raquo;</button>
  		</li>
  	</c:if>
  	
  </ul>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.js"></script>

<script type="text/javascript">

$('.page-link').click(function() {
	
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