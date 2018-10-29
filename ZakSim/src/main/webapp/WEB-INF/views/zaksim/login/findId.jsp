<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Zaksim</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/login/find.css">
</head>

<body>
	<!-- body -->
	<img class="img-fluid d-block mx-auto pt-4"
		src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg"
		width="400" height="200">
	<div class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-8 mx-auto shadow-sm">
					<ul class="nav nav-tabs">
						<li class="nav-item col-md"><a class="active nav-link" href="/zaksim/login/findId" data-toggle="tab" data-target="#tabone">ID 찾기</a></li>
						<li class="nav-item col-md"><a href="/zaksim/login/findPw" class="nav-link" data-toggle="tab" data-target="#tabtwo">비밀번호 찾기</a></li>
					</ul>
					<!-- 처음 화면에 활성화 되는 컨테이너 -->
					<div class="tab-content mt-2">
						<div class="tab-pane fade show active" id="tabone" role="tabpanel">
							<form class="pi-draggable" action="/zaksim/login/findId">
								<div class="form-group">
									<label>이름</label> <input type="text" class="form-control" placeholder="ex) 홍길동">
								</div>
								<div class="form-group">
									<label>이메일</label> <input type="email" class="form-control" placeholder="ex) abcd@gmail.com">
								</div>
								<div class="col-md-4 mx-auto pt-5 pb-2">
									<button type="submit" class="btn joinBtnColor col-md">ID 찾기</button>
								</div>
							</form>
						</div>
						<div class="tab-pane fade" id="tabtwo" role="tabpanel">
							<form class="pi-draggable" action="/zaksim/login/findPw">
								<div class="form-group">
									<label>아이디</label> <input type="text" class="form-control">
								</div>
								<div class="form-group">
									<label>이름</label> <input type="text" class="form-control" placeholder="ex) 홍길동">
								</div>
								<div class="form-group">
									<label>이메일</label> <input type="email" class="form-control" placeholder="ex) abcd@gmail.com">
								</div>
								<div class="col-md-4 mx-auto pt-5 pb-2">
									<button type="submit" class="btn joinBtnColor col-md">비밀번호 찾기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- body 안  -->
		</div>
	</div>
	
<%@ include file="../main/footer.jsp" %>