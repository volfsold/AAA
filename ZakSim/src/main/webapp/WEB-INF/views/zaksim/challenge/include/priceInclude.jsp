<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   
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
            
            <form class="form-group text-center" >
              <div class="form-group row">
                <label for="price" class="col-md-5 col-form-label">
                  <h3 class="text-right"> 도전 금액 </h3>
                </label>
                <div class="col-md-6">
                  <input id="money" type="number" value="1000" min="1000" max="1000000" step="1000" required="required"  class="form-control mt-2 w-50" >
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
              
              <button type="button" id="payBtn" class="btn text-white my-5 btn-lg w-25"   style="background-color: rgb(187, 68, 56);">결제 요청</button>
            </form>
            
          </div>
        </div>
        <div class="col-md-1"></div>
      </div>
      
      