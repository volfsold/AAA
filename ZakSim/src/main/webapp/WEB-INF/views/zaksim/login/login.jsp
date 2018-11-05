<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zaksim</title>
<link rel="stylesheet" type="text/css" 
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/css/login/login.css?ver=1">
</head>

<body>

<!-- 로그인 상태일 경우 메인으로 돌아가게끔 -->
<%-- <% if ( session.getAttribute("login") != null || session.getAttribute("id") != null) { %>
<script type="text/javascript">
	alert("로그인 상태");
	location.href = "/zaksim/main/home";
</script>
<% } %> --%>

	<!-- body -->
	<!-- 로고 이미지 - 메인 페이지로 이동 -->
	<div class="text-center pt-4">
		<a href="/zaksim/main/home"> 
			<img src="/resources/image/main/logo.jpg" width="400">
		</a>
	</div>
	
	<div class="py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-5 mx-auto py-2 shadow-sm" id="login_form">
					<form action="/zaksim/login/login" method="post">
						<div class="form-group">
							<label>ID</label> 
							<input type="text" class="form-control" name="id" placeholder="ID">
						</div>
						<div class="form-group">
							<label>비밀번호</label> 
							<input type="password" class="form-control" name="password" placeholder="비밀번호">
						</div>
						<div class="col-md-5 mx-auto text-center">
							<button type="submit" class="btn loginBtnColor col">로그인</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<br><br>
		<div class="container">
			<div class="row">
				<div class="col-md-3 mx-auto">
					<button class="btn btn-naver col">Naver 로그인</button>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-3 mx-auto">
					<button class="btn btn-secondary col">Google 로그인</button>
				</div>
			</div>
			<br><br><br><br>
			<div class="row">
				<div class="col-md-7 mx-auto">
					<div class="text-center">
						<button class="btn loginBtnColor col-md-3" id="btnFindIdPage">ID 찾기</button>
						<button class="btn loginBtnColor col-md-4" id="btnFindPwPage">비밀번호 찾기</button>
						<button class="btn loginBtnColor col-md-3" id="btnJoinPage">회원가입</button>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@ include file="../main/footer.jsp" %>
<script type="text/javascript">
	$('#btnFindIdPage').click(function() {
		location.href = "/zaksim/login/findId";
	});
	$('#btnFindPwPage').click(function() {
		location.href = "/zaksim/login/findPw";
	});
	$('#btnJoinPage').click(function() {
		location.href = "/zaksim/login/join";
	});
</script>