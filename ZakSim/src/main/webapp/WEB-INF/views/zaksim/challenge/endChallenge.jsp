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
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 도전금 결제 </h5>
            </div>
            <div class="col-md-2 mt-3">
              <h5 class="mt-1"> 서약서 작성 </h5>
            </div>
            <div class="col-md-2 mt-3 rounded" style="background-color:rgb(154, 28, 15); padding-top:7px; ">
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
        <div class="col-md-1"></div>
        <div class="col-md-10 rounded" style="height: 660px; background-color: rgba(33, 33, 33, 0.67);">
          <div class="col-md-12 text-center my-4 text-white">
            <h2> 도전 안내 사항</h2>
          </div>
          <div class="row text-center text-muted" style="height: 10px; background-color: rgba(154, 28, 15, 0.8);">
          </div>
          <div class="col-md-12 text-center my-4 text-white">
            <a class="my-2 d-flex justify-content-center align-items-end"> 도전 &nbsp; <h4 class="mb-1"> 중도 포기 </h4>&nbsp; 또는&nbsp; <h4 class="mb-1"> 실패 </h4>&nbsp;시 </a>
            <a class="my-2 d-flex justify-content-center align-items-end"> 결제 금액의 &nbsp; <h4 class="mb-0"> 90% </h4>&nbsp;환불되며, </a>
            <a class="my-2 d-flex justify-content-center align-items-end">
              <h4 class="mb-0"> 10% </h4>&nbsp;는 <h4 class="mb-1">&nbsp;불우이웃 돕기</h4>&nbsp; 기금으로 이용됩니다.
            </a>
            <a class="my-2 mt-5 d-flex justify-content-center align-items-end"> 인증률은 &nbsp; <h4 class="mb-1"> 당일 기준 </h4>&nbsp; 으로 환산 됩니다. </a>
            <a class="my-2 mt-5 d-flex justify-content-center align-items-end"> 도전 시작후 &nbsp; <h4 class="mb-1"> 3일 이내 </h4>&nbsp; 에는 도전 취소가 가능하며, </a>
            <a class="my-2 d-flex justify-content-center align-items-end"> 결제 금액의<h4 class="mb-0">&nbsp;100% </h4>&nbsp;환불이 가능하고, </a>
            <a class="my-2 mb-4 d-flex justify-content-center align-items-end"> 이 후에는<h4 class="mb-1">&nbsp;도전 취소 </h4>&nbsp; 처리 됩니다. </a>
            <div class="row mb-3 justify-content-center">
              <div class="col-mb-12  text-center text-muted w-50" style="height: 3px; background-color: rgba(154, 28, 15, 0.8);">
              </div>
            </div>
            <a class="my-2">"오늘 할 수 있는 일을 내일로 미루지 마라."</a> <br>
            <a >- 벤자민 프랭클린</a>
          </div>
          <div class="row">
            <div class="col-md-6 text-left">
              <a class="btn text-white btn-lg ml-5" style="background-color: gray;"> 도전 취소 </a>
            </div>
            <div class="col-md-6 text-right">
              <a class="btn text-white btn-lg mr-5" href="/zaksim/challenge/challengeInfo" style="background-color: rgb(187, 68, 56);"> 도전 시작 </a>
            </div>
          </div>
        </div>
        <div class="col-md-1"></div>    
      </div>
    </div>
    
  </div>
  <!--바디 끝-->
 

        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>
 