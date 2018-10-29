<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../main/header.jsp" %>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/customerCenter/qna_view.css">

	<!-- body -->
	<div class="py-3">
		<div class="container">
			<div class="row">
				<label class="col-md-1"> </label>
				<div class="col-md-11">
					<h1>Q&amp;A</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="py-2">
		<div class="container">
			<div class="row">
				<label class="col-md-1"> </label>
				<div class="col-md-10">
					<div class="table table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<th class="qnaColor">글번호</th>
									<td>1</td>
									<th class="qnaColor">조회수</th>
									<td>2</td>
								</tr>
								<tr>
									<th class="qnaColor">작성자</th>
									<td>도포자</td>
									<th class="qnaColor">작성일</th>
									<td>2018.10.22</td>
								</tr>
								<tr>
									<th class="qnaColor">제목</th>
									<td>중도포기관련</td>
									<th class="qnaColor">상태</th>
									<td>답변완료</td>
								</tr>
								<tr>
									<th class="qnaColor">글 내용</th>
									<td colspan="3" contenteditable="true">중<br>도<br>포<br>기<br>관<br>련
									</td>
								</tr>
								<tr>
									<th class="table-info">파일</th>
									<td colspan="3" contenteditable="true">파일이 없음</td>
								</tr>
								<tr>
									<td colspan="4" class="text-center"><input type="button"
										class="btn btn-secondary" value="답글 쓰기" onclick=""> <input
										type="button" class="btn btn-secondary" value="수정하기"
										onclick=""> <input type="button"
										class="btn btn-danger" value="삭제하기" onclick=""> <input
										type="button" class="btn qnaBtnColor" value="목록보기" onclick="">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<label class="col-md-1"> </label>
			</div>
		</div>
	</div>
	<!-- 댓글 입력 영역  -->
	<div class="container">
		<div class="row">
			<label class="col-md-1"> </label>
			<div class="col-md-10">
				<div class="card">
					<form action="/reply/reply.do" method="post">
						<div class="form-group card-header">
							<label style="font-weight: bold">닉네임</label>
						</div>
						<div class="form-group ">
							<input type="text" class="form-control" id="boardNo"
								name="boardNo" value="${board.boardNo }" readonly=""
								hidden="true">
						</div>
						<div class="card-body">
							<div class="form-group">
								<!-- login 체크하여 댓글 입력창 활성화 및 비활성화 -->
								<c:choose>
									<!-- 로그인 상태 -->
									<c:when test="">
										<textarea rows="3" class="form-control" id="replyContent"
											name="replyContent" placeholder="댓글을 입력해주세요."></textarea>
									</c:when>
									<!-- 비로그인 상태 -->
									<c:when test="">
										<textarea rows="3" class="form-control" id="replyContent"
											name="replyContent" placeholder="로그인 상태여야 입력 가능합니다."
											readonly=""></textarea>
									</c:when>
								</c:choose>
							</div>
							<button type="button" class="btn qnaBtnColor  btn-md mr-1">댓글 입력</button>
						</div>
					</form>
				</div>
			</div>
			<label class="col-md-1"> </label>
		</div>
		<!-- 댓글 목록 영역 -->
		<div class="row mt-3 justify-content-center">
			<label class="col-md-1"> </label>
			<div class="col-md-10">
				<ul class="list-group">
					<c:foreach items="" var="">
						<li class="list-group-item">
							<div class="d-flex w-100 justify-contents-between">
								<p style="font-weight: bold">암욜맨</p>
								<small>&nbsp; 16:22 &nbsp; </small>
								<small> <a href="" style="color: blue">수정</a> </small>
								&nbsp;
								<!-- 모든 댓글은 관리자가 삭제할 수 있게끔 설정 -->
								<small> <a href="" style="color: red">삭제</a> </small>
								&nbsp; 
								<small> <a href="" style="color: green">답댓글쓰기</a> </small>
							</div>
							<div>
								<p class="mb-1">댓글 내용!</p>
							</div>
						</li>
					</c:foreach>
				</ul>
			</div>
			<label class="col-md-1"> </label>
		</div>
	</div>

<%@ include file="../../main/footer.jsp" %>