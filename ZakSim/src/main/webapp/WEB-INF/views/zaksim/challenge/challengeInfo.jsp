<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp" %>

  
  <!--바디-->
   
   <div class=" pt-5" style="background-image: url(/resources/image/main/back.webp); 
   background-color: rgba(240, 200, 240, 0.3);">
    <div class="container">
      <div class="row  py-4">
        <div class="col-md-4" style="">
          <img class="img-fluid d-block my-2 rounded-circle float-right" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" style="	height: 140px; width: 140px;	border-right-width: 3px;	border-top-width: 3px;	border-bottom-width: 3px;    border-left-width: 3px;	border-style: solid;	border-color: white;">
        </div>
        <div class="col-md-6 row" style="">
          <div class="col-md-12 my-3 mx-3">
            <h4>홍길동님의 <b class="text-danger">도전 24일차</b></h4>
          </div>
          <div class="border border-dark mx-3 col-md-12" style="height:50px;"> 막대 그래프 위치 </div>
        </div>
        <div class="col-md-2" style="">
        </div>
      
       </div>
    
    </div>
    
  </div>
  <div class="py-1" style="background-image: url(/resources/image/main/back.webp); 
   background-color: rgba(240, 200, 240, 0.3);">
    <div class="container " >
      <hr class="my-5">
      <div class="row  py-3">
        <div class="col-md-2">
        </div>
        <div class="col-md-8 col-lg-8 rounded  text-center" style="background-color: blanchedalmond;    border-right-width: 5px;	border-top-width: 5px;	border-bottom-width: 5px;    border-left-width: 5px;	border-style: solid;	border-color: white;">
         
         
          <h4 class="text-center my-2 mb-4">도전 정보</h4>
          
          
            
         <a class="my-2 d-flex justify-content-center align-items-end">  <h5 class="mb-1"> 10월 26일</h5>&nbsp;부터&nbsp; <h5 class="mb-1">12월 31일</h5>&nbsp;까지 </a>
         
          <a class="my-2 d-flex justify-content-center align-items-end"> 도전금&nbsp;<h4 class="mb-0"> 30,000</h4>원을 걸고</a>
          
         <a class="my-2 d-flex justify-content-center align-items-end"><h5 class="mb-1"><b>헬스,운동하기</b></h5>&nbsp;도전중 </a>  
          
          <a class="btn btn-sm w-25 my-4 btn-primary text-white" href="/zaksim/challenge/citation"> 도전 인증 </a>
        
        
        
        
        
        </div>
        <div class="col-md-2">
  
        </div>
      </div>
      <hr class="my-5">
    </div>
  </div>
  <div class="py-3 pb-5" style="background-image: url(/resources/image/main/back.webp); 
   background-color: rgba(240, 200, 240, 0.3);">
    <div class="container mb-5 ">
      <div class="row mb-5">
        <div class="col-md-5 border border-dark"> 달력 API </div>
        <div class="col-md-1">
        </div>
        <div class="col-md-6 h-50 p-0" style="border-right-width: 5px;	border-top-width: 5px;	border-bottom-width: 5px;    border-left-width: 5px;	border-style: solid;	border-color: white; ">
          <div id="myCarousel" class="carousel slide rounded border" data-ride="carousel" style="height: 337px;">
            <!-- Indicators -->
            <ul class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1" class=""></li>
              <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ul>
            <!-- The slideshow -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="https://picsum.photos/500/300/?random" alt="Los Angeles" style="width: 100%; height: 100%;">
              </div>
              <div class="carousel-item">
                <img src="https://picsum.photos/500/300/?random" alt="Chicago" style="width: 100%; height: 100%;">
              </div>
              <div class="carousel-item">
                <img src="https://picsum.photos/500/300/?random" alt="New York" style="width: 100%; height: 100%;">
              </div>
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

   
 <!--바디 끝-->
    




        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>