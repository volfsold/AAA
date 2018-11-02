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
					<c:set var="selectSearch" value="${selectSearch }" />
					<option value="communutyName"
						<c:if test="${selectSearch eq 'communutyName'}"> selected</c:if>>모임
						명</option>
					<option value="communutyCategory"
						<c:if test="${selectSearch eq 'communutyCategory'}"> selected</c:if>>카테고리</option>
					<option value="communutyKeyword"
						<c:if test="${selectSearch eq 'communutyKeyword'}"> selected</c:if>>키워드</option>
				</select> <input type="text" class="form-control mx-3" style="width: 600px;"
					value="${searchContent }">
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
			<strong style="font-size: 150%">검색 결과</strong>
			<c:if
				test="${!empty searchGroup || !empty searchCategoryGroup || !empty searchKeywordGroup  }">
				<button type="button" class="btn btn-outline-info"
					style="float: right; color: red; border-color: red;">모임
					만들기</button>
			</c:if>
			<hr
				style="margin-top: 40px; border-color: gray; margin-top: 40px; margin-bottom: 40px;">


			<c:if
				test="${empty searchGroup && empty searchCategoryGroup && empty searchKeywordGroup  }">
				<div style="margin-left: 22px;">

					<div class="form-inline">

						<div class="col-sm-11"
							style="margin-top: 50px; margin-right: 50px;">
							<div style="margin-bottom: 150px;"></div>

							<div
								style="text-align: center; color: gray; font-size: 40px; font-style: italic;">
								<p>참여하고 있는 모임이 없습니다.</p>
								<p>- 모임을 만드세요. -</p>
								<button type="button" class="btn btn-danger"
									style="width: 200px;" data-toggle="modal"
									data-target=".bd-example-modal-lg">모임 만들기</button>

							</div>
						</div>
					</div>
				</div>

			</c:if>



			<!-- 검색한 그룹이 존재할 시 -->
			<c:if
				test="${empty searchCategoryGroup && !empty searchGroup && empty searchKeywordGroup  }">

				<div class="form-inline">
					<c:forEach var="searchGroup" items="${searchGroup }">

						<div class="card bg-dark text-white">
							<div class="hovereffect">
								<img class="card-img" src="${searchGroup.communityGroup.image }"
									alt="Card image">
								<div class="card-img-overlay">
									<h4 class="card-title">${searchGroup.communityGroup.title }</h4>

									<c:forEach items="${keywordList }" var="keyword">
										<c:if
											test="${searchGroup.communityGroup.idx eq keyword.group_idx}">
											<p class="card-text">#${keyword.keyword }</p>
										</c:if>
									</c:forEach>

									<p class="card-text">♡ ${searchGroup.likeNum }</p>
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
			</c:if>


			<!-- 카테고리 존재할 시 -->
			<c:if
				test="${!empty searchCategoryGroup && empty searchGroup && empty searchKeywordGroup  }">

				<div class="form-inline">
					<c:forEach var="searchCategoryGroup"
						items="${searchCategoryGroup }">

						<div class="card bg-dark text-white">
							<div class="hovereffect">
								<img class="card-img"
									src="${searchCategoryGroup.communityGroup.image }"
									alt="Card image">
								<div class="card-img-overlay">
									<h4 class="card-title">${searchCategoryGroup.communityGroup.title }</h4>

									<c:forEach items="${keywordList }" var="keyword">
										<c:if
											test="${searchCategoryGroup.communityGroup.idx eq keyword.group_idx}">
											<p class="card-text">#${keyword.keyword }</p>
										</c:if>
									</c:forEach>

									<p class="card-text">♡ ${searchCategoryGroup.likeNum }</p>
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
			</c:if>


			<!-- 키워드  존재할 시 -->
			<c:if
				test="${empty searchCategoryGroup && empty searchGroup && !empty searchKeywordGroup  }">

				<div class="form-inline">
					<c:forEach var="searchKeywordGroup" items="${searchKeywordGroup }">

						<div class="card bg-dark text-white">
							<div class="hovereffect">
								<img class="card-img"
									src="${searchKeywordGroup.communityGroup.image }"
									alt="Card image">
								<div class="card-img-overlay">
									<h4 class="card-title">${searchKeywordGroup.communityGroup.title }</h4>

									<c:forEach items="${keywordList }" var="keyword">
										<c:if
											test="${searchKeywordGroup.communityGroup.idx eq keyword.group_idx}">
											<p class="card-text">#${keyword.keyword }</p>
										</c:if>
									</c:forEach>

									<p class="card-text">♡ ${searchKeywordGroup.likeNum }</p>
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
			</c:if>

		</div>
	</div>
</div>




<div class="col" style="margin-bottom: 300px;"></div>




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
				scrollTop : 0
			}, 400);
			return false;
		});
	});
</script>


<!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp"%>