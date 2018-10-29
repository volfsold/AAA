<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp" %>


<!-- 바디 -->

   <div class="py-5" style="background-image: url(/resources/image/challenge/back.jpg);">
    <div class="container">
      <div class="row text-white py-3" style="background-color: rgba(94, 94, 94, 0.64);">
        <div class="col-md-1"> </div>
        <div class="col-md-10">
          <div class="row text-center rounded" style="background-color: rgba(33, 33, 33, 0.67);">
            <div class="mt-2 col-md-3">
              <h2 class="text-left ml-4 mt-1"> <b>ZakSim</b> </h2>
            </div>
            <div class="col-md-2 mt-3 rounded" style="background-color:rgb(154, 28, 15); padding-top:7px; ">
              <h5 class="mt-1"> 도전 정보입력 </h5>
            </div>
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 도전금 결제 </h5>
            </div>
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 서약서 작성 </h5>
            </div>
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 도전 안내사항 </h5>
            </div>
            <div class="col-md-1 mt-3">
            </div>
            <div style="height:5px; background-color:rgb(154, 28, 15);" class="col rounded">
            </div>
          </div>
        </div>
        <div class="col-md-1"> <img class="img-fluid d-block rounded-circle ml-3" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" style="	height: 30px; width: 30px;"></div>
      </div>
      <div class="row text-dark pb-5 py-2 " style="background-color: rgba(94, 94, 94, 0.64);">
        <div class="col-md-2"></div>
        <div class="col-md-8 rounded" style="height: 530px; background-color: rgba(33, 33, 33, 0.67);">
          <div class="col-md-12 text-center my-4 text-white">
            <h2> 홍길동의</h2>
            <h3> 새로운 도전 시작 </h3>
          </div>
          <div class="row text-center text-muted" style="height: 50px; background-color: rgba(154, 28, 15, 0.5);"> <div class="col-md-12"><h5 class="mt-3">멋진 도전을 시작해 보세요.</h5></div></div>
          <div class="row mt-5">
            <div class="col-md-4 mt-3 text-white" >
              <p class="text-right mt-3 "> 도전 명 : </p>
              <p class="text-right mt-4"> 도전 시작일 : </p>
              <p class="text-right mt-4"> 도전 종료일 : </p>
            </div>
            <form class="col-md-6" >
              <input class="form-control mt-3" type="text" placeholder="도전할 목표을 입력하세요.">
              <input class="form-control mt-3" type="date">
              <input class="form-control mt-3" type="date">
              <a class="btn text-white btn-lg mt-5 ml-5" href="/zaksim/challenge/priceChallenge" style="background-color: rgb(187, 68, 56);"> 도전금 설정 </a>
            </form>
          </div>
        </div>
        <div class="col-md-2"></div>
      </div>
    </div>
  </div>
            
<!--바디 끝-->

    
    
   
        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>