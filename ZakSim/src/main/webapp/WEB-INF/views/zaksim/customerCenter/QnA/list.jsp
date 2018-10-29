<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../main/header.jsp" %>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/css/customerCenter/qna_list.css">

	<!-- body -->
	<div class="py-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>Q&amp;A</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<label class="col-md-8"> </label>
			<div class="col-md-3">
				<div class="row justify-content-between">
					<button class="btn col-md-5 qnaBtnColor">문의하기</button>
					<button class="btn col-md-6 qnaBtnColor">내 문의보기</button>
				</div>
			</div>
			<label class="col-md-1"> </label>
		</div>
	</div>
	<div class="py-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead class="qnaColor">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>상태</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>10</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>20:23</td>
								<td>0</td>
							</tr>
							<tr>
								<td>9</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>20:05</td>
								<td>0</td>
							</tr>
							<tr>
								<td>8</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>20:00</td>
								<td>0</td>
							</tr>
							<tr>
								<td>7</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>19:50</td>
								<td>0</td>
							</tr>
							<tr>
								<td>6</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>19:40</td>
								<td>0</td>
							</tr>
							<tr>
								<td>5</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>19:30</td>
								<td>1</td>
							</tr>
							<tr>
								<td>4</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>19:25</td>
								<td>6</td>
							</tr>
							<tr>
								<td>3</td>
								<td>질문합니다.</td>
								<td>접수중</td>
								<td>질문왕</td>
								<td>19:23</td>
								<td>3</td>
							</tr>
							<tr>
								<td>2</td>
								<td>환불받고싶어요</td>
								<td>답변완료</td>
								<td>암요환불맨</td>
								<td>00:10</td>
								<td>1</td>
							</tr>
							<tr>
								<td>1</td>
								<td>중도포기관련</td>
								<td>답변완료</td>
								<td>도포자</td>
								<td>2018.10.22</td>
								<td>2</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md- mx-auto">
			<ul class="pagination">
				<li class="page-item disabled"><a class="page-link" href="#">
						<span>«</span> <span class="sr-only">Previous</span>
				</a></li>
				<li class="page-item active"><a class="page-link" href="#">1</a>
				</li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">6</a></li>
				<li class="page-item"><a class="page-link" href="#">7</a></li>
				<li class="page-item"><a class="page-link" href="#">8</a></li>
				<li class="page-item"><a class="page-link" href="#">9</a></li>
				<li class="page-item"><a class="page-link" href="#">10</a></li>
				<li class="page-item"><a class="page-link" href="#"> <span>»</span>
						<span class="sr-only">Next</span>
				</a></li>
			</ul>
		</div>
	</div>

<%@ include file="../../main/footer.jsp" %>