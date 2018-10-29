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

<!-- body -->
  <img class="img-fluid d-block mx-auto pt-4" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" width="400" height="200">
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-5 mx-auto py-2 shadow-sm" id="login_form">
          <form>
            <div class="form-group"> <label>ID</label> <input type="email" class="form-control" placeholder="ID"></div>
            <div class="form-group"> <label>비밀번호</label> <input type="password" class="form-control" placeholder="비밀번호"> </div>
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
          <button class="btn btn-naver col">Naver 로그인</button></div>
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
            <button class="btn loginBtnColor col-md-3">ID 찾기</button>
            <button class="btn loginBtnColor col-md-4">비밀번호 찾기</button>
            <button class="btn loginBtnColor col-md-3">회원가입</button>
          </div>
        </div>
      </div>
    </div>
  </div>
 
<%@ include file="../main/footer.jsp" %>