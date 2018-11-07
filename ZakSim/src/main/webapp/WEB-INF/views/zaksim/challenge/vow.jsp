<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>



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
          
             
              
            <div class="col-md-2 mt-3 " >
              <h5 class="mt-1 "> </h5>
            </div>
            <div class="col-md-6 mt-3 rounded" style=" background-color:rgb(154, 28, 15); padding-top:7px; ">
              <h5 class="mt-1 "> ${user.name}님의 도전 서약서 </h5>
            </div>
           
            <div class="col-md-1 mt-3 " >
              <h5 class="mt-1">  </h5>
            </div>
            <div class="col-md-0 mt-3">
            </div>
            
            <div style="height:5px; background-color:rgb(154, 28, 15);" class="col rounded">
            </div>
          </div>
          
        </div>
        <div class="col-md-1"> <img class="img-fluid d-block rounded-circle ml-3" src="/resources/image/challenge/exitBT.png" style="cursor:pointer;	height: 45px; width: 45px;"></div>
      </div>
   


  <div class="row text-dark pb-5 py-2 " style="background-color: rgba(94, 94, 94, 0.64);">
        <div class="col-md-1"></div>
        <div class="col-md-3 rounded text-center" style="height: 650px; background-color: rgba(33, 33, 33, 0.67);">
          <div class="col-md-12 text-center my-4 text-white">
            <h4>드래그 스티커</h4>
          </div>
          <div class="col-md-12 my-4" style="background-color: gray;">
          </div>
          <div class="row my-4 text-white">
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block  mx-4 mr-5" src="/resources/image/challenge/starIcon.png" style="	height: 60px; width: 60px;">
              <h4> Star </h4>
            </div>
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block  mx-4 mr-5" src="/resources/image/challenge/heartIcon.png" style="	height: 60px; width: 60px;">
              <h4> Heart </h4>
            </div>
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block rounded-circle  mx-4 mr-5" src="/resources/image/challenge/memoIcon.png" style="	height: 60px; width: 60px;">
              <h4> Memo </h4>
            </div>
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block  mx-4 mr-5" src="/resources/image/challenge/checkIcon.png" style="	height: 60px; width: 60px;">
              <h4> Check </h4>
            </div>
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block  mx-4 mr-5" src="/resources/image/challenge/signIcon.png" style="	height: 60px; width: 60px;">
              <h4> Sign </h4>
            </div>
          </div>
          <div class="col-md-12 my-4" style="background-color: gray;">
          </div>
          <div class="col-md-12 text-center my-4">
            <a  class="btn text-white btn-md w-100 mt-3" href="#" style="background-color: gray;"> 서약서 다운로드 </a>
          </div>
          <div class="col-md-12 text-center">
            <a  class="btn text-white btn-lg w-100" href="#"  style="background-color: rgb(187, 68, 56);"> 작성 완료 </a>
          </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-6 bg-light rounded border border-dark">
          <div class="col-md-12 text-center my-4 ">
            <h2> 도전 서약서</h2>
          </div>
          <div class="col-md-12 text-center my-5 ">
            <a class="my-2 justify-content-center align-items-baseline d-flex"> 나&nbsp;<h4 class="mb-1">
                <b>${user.name}</b>
              </h4>&nbsp;은&nbsp;도전금&nbsp;<h4 class="mb-1">
                <b> ${user.money}</b>원</h4> &nbsp;을 걸고, </a>
            <a class="my-2 justify-content-center align-items-baseline d-flex">
              <h4 class="mb-1">
                <b>${user.title}</b>
              </h4>&nbsp;도전을&nbsp;하기에&nbsp;앞써,
            </a>
            <a class="my-2 justify-content-center align-items-baseline d-flex"> 아래와 같은 사항을 준수할 것을&nbsp;<h4 class="mb-1">
                <b>서약</b>
              </h4>&nbsp;합니다. </a>
          </div>
          <div class="row my-5 ">
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block rounded-circle ml-5 mr-3" src="/resources/image/challenge/circleIcon.png" style="	height: 40px; width: 40px;">
              <h6> 나는, 양심에 따라 허위로 인증을 하지 않겠습니다. </h6>
            </div>
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block rounded-circle ml-5 mr-3" src="/resources/image/challenge/circleIcon.png" style="	height: 40px; width: 40px;">
              <h6> 나는, 목표달성을 위해 최선을 다해 노력 하겠습니다. </h6>
            </div>
            <div class="col-md-12 d-inline-flex align-items-center my-1">
              <img class="img-fluid d-block rounded-circle ml-5 mr-3" src="/resources/image/challenge/circleIcon.png" style="	height: 40px; width: 40px;">
              <h6> 나는, 도전 실패시 도전 금액에 10%를 기부 하겠습니다. </h6>
            </div>
          </div>
          <div class="row my-1 ">
            <div class="col-md-5 text-right">
              <h5 class="my-2"> 도전 기간 : </h5>
              <h5 class="my-2"> 성 &nbsp;&nbsp;&nbsp;&nbsp;명 : </h5>
            </div>
            <div class="col-md-7 text-left mt-1">
              <h6 class="my-2">
              <b>
              <fmt:formatDate value="${info.startDate}" pattern="yyyy.MM.dd"/> &nbsp; 부터 
              <fmt:formatDate value="${info.endDate}" pattern="yyyy.MM.dd"/> &nbsp; 까지
              </b>
              </h6>
              
              <h5 class="my-2"> <b>${user.name}</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(인)</h5>
            </div>
          </div>
          <div class="col-md-12 text-center mt-4">
           
            <a class="d-inline-flex align-items-baseline">
              <h3> ZakSim Corp. </h3>
              <h5>&nbsp;&nbsp;귀하</h5>
            </a>
          
          </div>
           <p class="text-center pt-3" style="font-size: 5px;">*본 서약서는 이벤트성 서류로 법적 효력은 없습니다.</p>
          
        </div>
        <div class="col-md-1"></div>
      </div>
      
        
    </div>
  </div>
            
<!--바디 끝-->
     
     
     
     
        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %> 
      