<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp" %>


  <!-- 바디 -->
  <div class="py-5" style="background-image: url(/resources/image/challenge/back.jpg);" >
    <div class="container">
      <div class="row text-white py-3" style="background-color: rgba(94, 94, 94, 0.64);">
        <div class="col-md-1"> </div>
        <div class="col-md-10">
          <div class="row text-center rounded" style="background-color: rgba(33, 33, 33, 0.67);">
            <div class="mt-2 col-md-3">
              <h2 class="text-left ml-4 mt-1"> <b>ZakSim</b> </h2>
            </div>
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 도전 정보입력 </h5>
            </div>
            <div class="col-md-2 mt-3 rounded" style="background-color:rgb(154, 28, 15); padding-top:7px; ">
              <h5 class="mt-1"> 도전금 결제 </h5>
            </div>
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 서약서 작성 </h5>
            </div>
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 도전 안내사 </h5>
            </div>
            <div class="col-md-1 mt-3">
            </div>
            <div style="height:5px; background-color:rgb(154, 28, 15);" class="col rounded">
            </div>
          </div>
        </div>
        <div class="col-md-1"> <img class="img-fluid d-block rounded-circle ml-3" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" style="	height: 30px; width: 30px;"></div>
      </div>
      <!-- 상단 로우 -->
      <div class="row text-dark pb-4 py-2 " style="background-color: rgba(94, 94, 94, 0.64);">
        <div class="col-md-3"></div>
        <div class="col-md-6 rounded" style="height: 220px; background-color: rgba(33, 33, 33, 0.67);">
          <div class="col-md-12 text-center my-4 text-white">
            <a class="my-2 d-flex justify-content-center align-items-end">
            <h3 class="mb-1"> 홍길동 </h3>님의</a> 
         <a class="my-2 d-flex justify-content-center align-items-end">  <h4 class="mb-1"> 10월 26일 ~&nbsp;</h4> <h4 class="mb-1">12월 31일 </h4>까지 </a>
           <a class="my-2 d-flex justify-content-center align-items-end"> 
               <h4 class="mb-1"> 헬스, 운동하기 </h4>도전의</a>
            <h3>도전금 정하기!</h3>
          </div>
        </div>
        <div class="col-md-3"></div>
      </div>
      <!-- 하단 로우 -->
      <div class="row text-dark pb-5 py-2 " style="background-color: rgba(94, 94, 94, 0.64);">
        <div class="col-md-1"></div>
        <div class="col-md-10 rounded" style="height: 330px; background-color: rgba(33, 33, 33, 0.67);">
          <div class="col-md-12  my-1 text-white">
            <p> 결제 정보 입력 </p>
            
            <form class="form-group text-center" method="post">
              <div class="form-group row">
                <label for="price" class="col-md-5 col-form-label">
                  <h3 class="text-right"> 도전 금액 </h3>
                </label>
                <div class="col-md-6">
                  <input type="number" value="1000" min="1000" max="1000000" step="1000" required="required"  class="form-control mt-2 w-50" id="price">
                </div>
              </div>
              <div class="row">
                <legend class="col-form-label col-md-5 pt-0">
                  <h3 class="text-right"> 결제 방법 </h3>
                </legend>
                <div class="col-md-6 text-left mt-1">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked="">
                    <label class="form-check-label" for="gridRadios1"> 카드 결제 </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                    <label class="form-check-label" for="gridRadios2"> 휴대폰 결제 </label>
                  </div>
                  <div class="form-check disabled">
                    <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3">
                    <label class="form-check-label" for="gridRadios3"> 무통장 입금 </label>
                  </div>
                </div>
              </div>
              
              <input type="submit" class="btn text-white my-5 btn-lg w-25"  value="결제 요청" style="background-color: rgb(187, 68, 56);"/>
            </form>
            
          </div>
        </div>
        <div class="col-md-1"></div>
      </div>
    </div>
  </div>
  <!--바디 끝-->


  
        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>