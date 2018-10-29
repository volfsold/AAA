<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Zaksim</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/login/join.css">
</head>

<body>
	<!-- body -->
	<div class="py-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<img class="img-fluid d-block mx-auto"
						src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg"
						width="500" height="300">
				</div>
			</div>
		</div>
	</div>
	<div class="text-center py-4">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-md-7 shadow-sm">
					<h1 class="mt-3 mb-5">회원가입</h1>
					<form class="text-left">
						<div class="form-group">
							<label for="joinId">아이디</label>
							<div class="row mx-auto joinBorder">
								<input type="text" class="form-control" id="joinId" placeholder="6 ~ 12자(영문+숫자)">
							</div>
							<!-- if문 처리하기 -->
							<p class="failColor">이미 사용중인 아이디 입니다.</p>
							<p class="failColor">6 ~ 12자(영문+숫자)로 입력해주세요.</p>
							<p class="successColor">사용 가능한 아이디입니다.</p>
							<!----------------->
						</div>
						<br>
						<div class="form-group">
							<label for="joinPw">비밀번호</label>
							<div class="row mx-auto joinBorder">
								<input type="password" class="form-control col-md-10" id="joinPw" placeholder="8 ~ 16자(영문+숫자+특수문자)">
								<!-- if문 처리하기 -->
								<span class="col-md text-center m-1 failColor">불가</span> 
								<span class="col-md text-center m-1 successColor">가능</span>
								<!----------------->
							</div>
						</div>
						<div class="form-group">
							<label for="joinPwCheck">비밀번호 재확인</label>
							<div class="row mx-auto joinBorder">
								<input type="password" class="form-control col-md-10"
									id="joinPwCheck">
								<!-- if문 처리하기 -->
								<span class="col-md text-center m-1 failColor">X</span> 
								<span class="col-md text-center m-1 successColor">O</span>
								<!----------------->
							</div>
						</div>
						<br>
						<div class="form-group">
							<label for="joinNick">닉네임</label>
							<div class="row mx-auto joinBorder">
								<input type="text" class="form-control" id="joinNick" placeholder="1 ~ 20자(특수문자 제외)">
							</div>
							<p class="failColor">사용 불가능한 닉네임입니다.</p>
							<p class="successColor">사용 가능한 닉네임입니다.</p>
						</div>
						<br>
						<div class="form-group">
							<label for="joinName">이름</label>
							<div class="row mx-auto joinBorder">
								<input type="email" class="form-control" id="joinName" placeholder="ex) 홍길동">
							</div>
						</div>
						<br>
						<div class="form-group">
							<label for="joinEmail">이메일</label>
							<div class="row mx-auto">
								<div class="joinBorder col-md-8 px-0">
									<input type="email" class="form-control" id="joinEmail" placeholder="ex) abcd@gmail.com">
								</div>
								<label class="col-md-1"> </label>
								<button type="button" class="btn col-md-3 joinBtnColorCheck1">인증번호
									받기</button>
							</div>
							<br>
							<div class="row mx-auto">
								<div class="joinBorder col-md-8 px-0">
									<input type="email" class="form-control" id="joinEmail" placeholder="인증번호를 입력하세요.">
								</div>
								<label class="col-md-1"> </label>
								<button type="button" class="btn col-md-3 joinBtnColorCheck2">인증 확인</button>
							</div>
						</div>
						<div class="col-md-6 mx-auto pt-5 pb-3">
							<button type="submit" class="btn joinBtnColor col-md">가입하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
<%@ include file="../main/footer.jsp" %>