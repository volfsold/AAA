<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp"%>




<div class="container" id="zz">
	<div class="row" style="margin-bottom: 30px;">
		<div class="col"></div>
		<div class="col-9">
			<strong>
				<h1 style="vertical-align: 100%">커뮤니티</h1>
			</strong>
		</div>
		<div class="col"></div>
	</div>
	<div class="row">
		<div class="col"></div>
		<div class="col-9">
			<div class="form-inline">
				<select class="custom-select d-block my-3" required>
					<option value="1" selected="selected">모임 명</option>
					<option value="2">카테고리</option>
					<option value="3">키워드</option>
				</select> <input type="text" class="form-control mx-3" style="width: 600px;"
					placeholder="검색할 내용">
				<button type="button" class="btn btn-outline-info">
					<span class="glyphicon glyphicon-search"></span> Search
				</button>
			</div>

		</div>


		<div class="col"></div>
	</div>

	<div class="row">
		<div class="col"></div>


		<div class="col-sm-11" style="margin-top: 50px; margin-right: 50px;">
			<strong style="font-size: 150%">인기 모임</strong>
			<button type="button" class="btn btn-outline-info"
				style="float: right; color: red; border-color: red;">모임 만들기</button>
			<hr
				style="margin-top: 40px; border-color: gray; margin-top: 40px; margin-bottom: 40px;">





			<div style="margin-left: 22px;">

				<div class="form-inline">

					<c:forEach var="popularGroupList" items="${popularGroupList }"
						begin="0" end="20" step="1">
						
						<div class="card bg-dark text-white">
							<div class="hovereffect">
								<img class="card-img"
									src="${popularGroupList.communityGroup.image }"
									alt="Card image">
								<div class="card-img-overlay">
									<h4 class="card-title">${popularGroupList.communityGroup.title }</h4>
									
									<c:forEach items="${keywordList }" var="keyword">
										<c:if
											test="${popularGroupList.communityGroup.idx eq keyword.group_idx}">
												<p class="card-text">#${keyword.keyword } </p>
											</c:if>
									</c:forEach>
									
									<p class="card-text">♡ ${popularGroupList.likeNum }</p>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 25%;" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100">50%</div>
									</div>
									<div class="overlay">
										<a class="info" href="#">
											<button type="button" class="btn btn-primary">가입하기</button> <br>
											<br>
											<button type="button" class="btn btn-danger">상세보기</button>
										</a> <br> <br> <br>
									</div>
								</div>
							</div>
						</div>
						
					</c:forEach>

				</div>
			</div>
		</div>




		<div class="col" style="margin-bottom: 300px;"></div>
	</div>

</div>



<!-- 위로가기 버튼 -->
<div class="top-button">
	<a href=""><img id="upImg" src="/resources/image/community/위로.png">
	</a>
</div>




</body>

<link rel="stylesheet" type="text/css" href="/css/community/hover.css">
<link rel="stylesheet" type="text/css" href="/css/community/button.css">
<link rel="stylesheet" type="text/css"
	href="/css/community/popularCommunity.css">


<script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {

            $(window).scroll(function() {
                if ($(this).scrollTop() > 200) {
                    $('.top-button').fadeIn();
                } else {
                    $('.top-button').fadeOut();
                }
            });


            $('.top-button').click(function() {
                $('html,body').animate({
                    scrollTop: 0
                }, 400);
                return false;
            });
        });
    </script>


<!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp"%>
