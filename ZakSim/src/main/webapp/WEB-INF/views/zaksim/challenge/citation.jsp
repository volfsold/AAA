<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp" %>

<!-- body start -->
 
 
  <div class="py-5 " style="background-image:url(/resources/image/main/back.webp); 
   background-color: rgba(44, 62, 80, 0.5); ">
    <div class="container">
      <div class="row">
        <div class="mr-4">
          <h4 class="" contenteditable="true">나의도전 인증</h4>
        </div>
        <div class="px-0 col-md-10">
          <hr class="border border-white">
        </div>
      </div>
      <div class="row my-3 mt-5 rounded text-white"  >
        <div class="col-md-3"> </div>
        <div class="col-md-6 border-white my-3 px-5 py-4 rounded" style="background-color: rgba(33, 33, 33, 0.5); border-right-width: 5px;	border-top-width: 5px;	border-bottom-width: 5px;    border-left-width: 5px;	border-style: solid;">
          <div class="row">
            <div class="col-md-4">
              <img class="img-fluid d-block my-2 rounded-circle float-right" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" style="	height: 140px; width: 140px;	border-right-width: 3px;	border-top-width: 3px;	border-bottom-width: 3px;    border-left-width: 3px;	border-style: solid;	border-color: white;">
            </div>
            <div class="col-md-6 mt-4">
              <img class="img-fluid d-block my-2 mt-4 rounded-circle justify-content-start" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" style="	height: 30px; width: 30px;">
              <h4>홍길동</h4>
              <p> 10월 24일 20:12 </p>
            </div>
          </div>
          <hr>
          <div class="text-left text-center">
            <p class="mx-1 text-left" >이미지 </p>
            <img class="img-fluid d-block rounded" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" style=" border-right-width: 3px;	border-top-width: 3px;	border-bottom-width: 3px;    border-left-width: 3px;	border-style: solid;	border-color: white; ">
          </div>
          <hr>
          <div class="form-group text-center">
            <label for="exampleFormControlTextarea1" class="d-flex mx-1">메세지</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
            <div class="row">
            <div class="col-md-4">
            <a class="btn  mt-5  btn-success " href="#"> 파일 올리기 </a>
            </div>
            <div class="col-md-4"> </div>
            <div class="col-md-4">
            <a class="btn  btn-primary mt-5 " href="/zaksim/challenge/challengeInfo"> 인증 하기 </a>
              </div>
              </div>
          </div>
          
        </div>
        <div class="col-md-3"> </div>
      </div>
    </div>
</div>
    
  
        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>