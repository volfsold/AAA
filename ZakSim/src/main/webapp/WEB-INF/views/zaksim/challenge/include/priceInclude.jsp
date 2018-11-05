<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
      <!-- 상단 로우 -->
      <div class="row text-dark pb-4 py-2 " style="background-color: rgba(94, 94, 94, 0.64);">
        <div class="col-md-3"></div>
        <div class="col-md-6 rounded" style="height: 220px; background-color: rgba(33, 33, 33, 0.67);">
          <div class="col-md-12 text-center my-4 text-white">
            <a class="my-2 d-flex justify-content-center align-items-end">
            <h3 class="mb-1"> ${sessionScope.login_nick} </h3>님의</a> 
         <a class="my-2 d-flex justify-content-center align-items-end">  
         
        
         <h4 class="mb-0"> <fmt:formatDate value="${info.startDate}" pattern="yyyy.MM.dd"/> </h4>&nbsp;부터&nbsp;
         <h4 class="mb-0"> <fmt:formatDate value="${info.endDate}" pattern="yyyy.MM.dd"/> </h4>&nbsp;까지 </a>
           <a class="my-2 d-flex justify-content-center align-items-end"> 
               <h4 class="mb-1" id="chalTitle"> ${info.title}</h4> &nbsp;도전의</a>
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
            
            <form id="priceChal" class="form-group text-center" >
              <div class="form-group row">
                <label for="price" class="col-md-5 col-form-label">
                  <h3 class="text-right"> 도전 금액 </h3>
                </label>
                <div class="col-md-6">
                  <input id="money" name="money" type="number" value="1000" min="1000" max="1000000" step="1000"   class="form-control mt-2 w-50" >
                </div>
              </div>
              <div class="row">
                <legend class="col-form-label col-md-5 pt-0">
                  <h3 class="text-right"> 결제 방법 </h3>
                </legend>
                <div class="col-md-6 text-left mt-1">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadios" id="payCard" value="payCard" >
                    <label class="form-check-label" for="gridRadios1"> 카드 결제 </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadios" id="payPhone" value="payPhone">
                    <label class="form-check-label" for="gridRadios2"> 휴대폰 결제 </label>
                  </div>
                  <div class="form-check disabled">
                    <input class="form-check-input" type="radio" name="gridRadios" id="payBank" value="payBank">
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
      
      