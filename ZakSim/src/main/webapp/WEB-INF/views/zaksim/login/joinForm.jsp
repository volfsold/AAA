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
		<!-- 로고 이미지 - 메인 페이지로 이동 -->
		<div class="text-center py-3">
			<a href="/zaksim/main/home"> <img
				src="/resources/image/main/logo.jpg" width="500">
			</a>
		</div>
	</div>
	
	<div class="text-center pt-4 pb-5">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-md-7 shadow-sm">
					<h1 class="mt-3 mb-5">회원가입</h1>
					<form class="text-left">
						<div class="form-group">
							<label for="joinId">아이디</label>
							<div class="row mx-auto joinBorder">
								<input type="text" class="form-control" id="joinId" name="joinId" placeholder="6 ~ 12자(영소문자+숫자)">
							</div>
							<!-- if문 처리하기 -->
							<p id="idMessage"></p>
<!-- 							<p class="failColor">이미 사용중인 아이디 입니다.</p> -->
<!-- 							<p class="failColor">6 ~ 12자(영문+숫자)로 입력해주세요.</p> -->
<!-- 							<p class="successColor">사용 가능한 아이디입니다.</p> -->
							<!----------------->
						</div>
						<br>
						<div class="form-group">
							<label for="joinPw">비밀번호 <small class="successColor">특수문자* : ! @ # $ % ^ & * ( )</small></label>
							<div class="row mx-auto joinBorder">
								<input type="password" class="form-control col-md-10" id="joinPw" name="joinPw" placeholder="8 ~ 16자(영문+숫자+특수문자*)">
								<!-- if문 처리하기 -->
								<span id="pwMessage"></span> 
<!-- 								<span class="col-md text-center m-1 failColor">불가</span>  -->
<!-- 								<span class="col-md text-center m-1 successColor">가능</span> -->
								<!----------------->
							</div>
						</div>
						<div class="form-group">
							<label for="joinPwCheck">비밀번호 재확인</label>
							<div class="row mx-auto joinBorder">
								<input type="password" class="form-control col-md-10" id="joinPwCheck">
								<!-- if문 처리하기 -->
								<span id="pwCheckMessage"></span> 
<!-- 								<span class="col-md text-center m-1 failColor">X</span>  -->
<!-- 								<span class="col-md text-center m-1 successColor">O</span> -->
								<!----------------->
							</div>
						</div>
						<br>
						<div class="form-group">
							<label for="joinNick">닉네임</label>
							<div class="row mx-auto joinBorder">
								<input type="text" class="form-control" id="joinNick" name="joinNick" placeholder="4 ~ 12자(특수문자 제외)">
							</div>
							<p id="nickMessage"></p>
<!-- 							<p class="failColor">사용 불가능한 닉네임입니다.</p> -->
<!-- 							<p class="successColor">사용 가능한 닉네임입니다.</p> -->
						</div>
						<br>
						<div class="form-group">
							<label for="joinName">이름</label>
							<div class="row mx-auto joinBorder">
								<input type="text" class="form-control" id="joinName" name="joinName" placeholder="ex) 홍길동">
							</div>
						</div>
						<br>
						<div class="form-group">
							<label for="joinEmail">이메일</label>
							<div class="row mx-auto">
								<div class="joinBorder col-md-8 px-0">
									<input type="email" class="form-control" id="joinEmail" name="joinEmail" placeholder="ex) abcd@gmail.com">
								</div>
								<label class="col-md-1"> </label>
								<button type="button" class="btn col-md-3 joinBtnColorCheck1">인증번호 받기</button>
							</div>
							<br>
							<div class="row mx-auto">
								<div class="joinBorder col-md-8 px-0">
									<input type="email" class="form-control" id="joinNum" placeholder="인증번호를 입력하세요.">
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

<script type="text/javascript">
	var flagId = false; // ID 중복 체크
	var flagPw = false; // 비밀번호
	var flagPwCheck = false; // 비밀번호 재확인
	var flagNick = false; // 닉네임 중복 체크
	var flagName = false; // 닉네임 중복 체크
	
	// ID 중복 체크/유효성 검사 (포커스 잃을 때 실행)
	$('#joinId').blur(function(){
		var joinId = $('#joinId').val(); // input 에 있는 값 담기.
		console.log("입력한 ID : " + joinId);
		
		var formId = /^[a-z](?=.*\d)[a-z0-9]{4,10}$/; // 유효성 검사 설정
		// \d : 숫자( 0~9 )
		// 첫 문자는 무조건 영소문자, 그 뒤에 영소문자+숫자(적어도 한 개 이상)조합으로 4 ~ 10자
		// (첫 문자와 최소 숫자를 합쳐서 6 ~ 12자가 됨)
		
		// ID 검사하는 if-else문
		if(joinId == "" || !formId.test(joinId)) {
			// 공백이거나 유효하지 않을 시
			console.log("if문 안이오이다.")
			$('#idMessage').attr('class', 'failColor');
			$('#idMessage').text('6 ~ 12자(영소문자+숫자)로 입력해주세요.');
			
			flagId = false;
			
			console.log("Flag ID : " + flagId);
			
		} else {
			joinId = "joinId=" + joinId;
			console.log("넘어갈 ID 중복 체크할 데이터 : " + joinId);
			
			$.ajax({
				type: "post",
				url: "/zaksim/login/joinId",
				data: joinId,
				dataType: "json",
				success: function(data) {
					var uniqueId = data.uniqueId;
					console.log("ajax 실행");
					
					if (uniqueId) {	
						$('#idMessage').attr('class', 'successColor');
						$('#idMessage').text('사용 가능한 아이디입니다.');
						
						flagId = true;
						
					} else {		
						$('#idMessage').attr('class', 'failColor');
						$('#idMessage').text('이미 사용 중인 아이디 입니다.');
						
						flagId = false;
					}
					
					console.log("Flag ID : " + flagId);
				},
				error: function(request,status,error) {
					alert('무슨 오류인지 모르겠는데 오류났음 :)...');
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		} // ID 검사하는 if-else문 끝
	});
	
	// 비밀번호 유효성 검사 (키를 누르고 땠을 때 실행)
	var joinPw;
	$('#joinPw').keyup(function(){
		console.log("Pw 키 입력 중");
		joinPw = $('#joinPw').val(); // input에 있는 값 담기.
		
		console.log("입력한 비밀번호 : " + joinPw);
		
		var formPw = /^(?=.*[!@#$%^&*()])(?=.*[a-z])(?=.*\d).{8,16}$/; // 유효성 검사 설정
		// 특수문자 + 영소문자 + 숫자 조합으로 8 ~ 16자
		// 특수문자 : !@#$%^&*() 키보드 숫자키의 특수문자만 가능
		
		if ( joinPw == "" || !formPw.test(joinPw) ) {
			// 유효하지 않을 시
			$('#pwMessage').attr('class', 'col-md text-center m-1 failColor');
			$('#pwMessage').text('불가');
			
			flagPw = false;
			
		} else {
			$('#pwMessage').attr('class', 'col-md text-center m-1 successColor');
			$('#pwMessage').text('가능');
			
			flagPw = true;
			
		}
		
		console.log("Flag password : " + flagPw);
	});
	
	// 비밀번호 재확인 (키를 누르고 땠을 때 실행)
	$('#joinPwCheck').keyup(function(){
		console.log("Pw 키 입력 중");
	    var joinPwCheck = $('#joinPwCheck').val(); // input에 있는 값 담기.
		
		console.log("비밀번호 : " + joinPw);
		console.log("입력한 비밀번호 : " + joinPwCheck);
		
		if ( joinPwCheck == "" || joinPwCheck != joinPw ) {
			// 유효하지 않을 시
			$('#pwCheckMessage').attr('class', 'col-md text-center m-1 failColor');
			$('#pwCheckMessage').text('X');
			
			flagPwCheck = false;
			
		} else {
			$('#pwCheckMessage').attr('class', 'col-md text-center m-1 successColor');
			$('#pwCheckMessage').text('O');

			flagPwCheck = true;
			
		}
		
		console.log("Flag password check : " + flagPwCheck);
	});
	
	// 닉네임 중복 체크/유효성 검사 (포커스 잃을 때 실행)
	$('#joinNick').blur(function(){
		var joinNick = $('#joinNick').val(); // input 에 있는 값 담기.
		console.log("입력한 닉네임 : " + joinNick);
		
		var formNick = /^[a-zA-Z가-힣0-9]{4,12}$/; // 유효성 검사 설정
		// 특수 문자 제외, 4 ~ 12자
		
		if(joinNick == "" || !formNick.test(joinNick)) {
			// 공백이거나 유효하지 않을 시
			$('#nickMessage').attr('class', 'failColor');
			$('#nickMessage').text('사용 불가능한 닉네임입니다.');
			
			flagNick = false;
			
			console.log("Flag nick : " + flagNick);
			
		} else {
			joinNick = "joinNick=" + joinNick;
			console.log("넘어갈 닉네임 중복 체크할 데이터 : " + joinNick);
			
			$.ajax({
				type: "post",
				url: "/zaksim/login/joinNick",
				data: joinNick,
				dataType: "json",
				success: function(data) {
					var uniqueNick = data.uniqueNick;
					console.log("ajax 실행");
					
					if (uniqueNick) {	
						$('#nickMessage').attr('class', 'successColor');
						$('#nickMessage').text('사용 가능한 닉네임입니다.');
						
						flagNick = true;
						
					} else {		
						$('#nickMessage').attr('class', 'failColor');
						$('#nickMessage').text('이미 사용 중인 닉네임입니다.');
						
						flagNick = false;
					}
					
					console.log("Flag nick : " + flagNick);
				},
				error: function(request,status,error) {
					alert('캬항~ 오류 파티다!');
					alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		} // 닉네임 검사하는 if-else문 끝
	});

	// 이름 유효성 검사 (포커스 잃을 때 실행)
	$('#joinName').blur(function(){
		var joinName = $('#joinName').val(); // input 에 있는 값 담기.
		console.log("입력한 이름 : " + joinName);
		
		var formName = /^[가-힣]{2,6}$/; // 유효성 검사 설정
		// 한글, 2 ~ 6자
		
		if(joinName == "" || !formName.test(joinName)) {
			// 공백이거나 유효하지 않을 시
			flagName = false;
			
			console.log("Flag name : " + flagName);
			
		} else {
			flagName = true;
			
			console.log("Flag name : " + flagName);
			
		}
	});
</script>