<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp" %>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

	<title>Groups</title>
	
	<style type="text/css">
	
    	body {
    		text-align: center;
    	}
    	
    	p {
    		font-family: "Helvetica Nene", Helvetica, Arial, 맑은 고딕,"malgun gothic", sans-serif;
    	}
    	
    	.card-img-top {
    		height: 50%;
    	}
    	
    	.card, h-100 {
    		background-color: rgb(204, 204, 255);
    	}
    	
    </style>
	
	<div class="py-5" style="background-image: url(/resources/image/main/back.webp); background-color: rgba(197, 155, 60, 0.4); ">
		<div class="container">
				<div class="row">
					<div style="float:left">
						<h3>참여중인 그룹</h3>
					</div>
				</div>
					
				<div class="row">
					<div class="col-md-4 p-3">
			          <div class="card h-100">
			            <img class="card-img-top" src="http://ww2.sjkoreancatholic.org/files/testing_image.jpg">
			           
			            <div class="card-body">
			              
			              <h4 class="card-text">그룹1</h4>
			              <p class="card-text">이름자를 무성할 별 아이들의 책상을 나는 있습니다. 사랑과 벌써 강아지,말 계십니다.</p>
			              <div class="d-flex justify-content-between align-items-center">
			                
			                <div class="mt-1">
			                  <a href="#" class="btn btn-sm btn-outline-danger">상세보기</a>
			                </div>
			                
			              </div>
			            </div>
			          </div>
			        </div>
			        
			        <div class="col-md-4 p-3">
			          <div class="card h-100">
			            <img class="card-img-top" src="https://t1.daumcdn.net/cfile/tistory/24283C3858F778CA2E">
			            
			            <div class="card-body">
			              
			              <h4 class="card-text">그룹2</h4>
			              <p class="card-text">위에 내 어머님, 아름다운 같이 버리었습니다. 이름과, 경, 자랑처럼 프랑시스</p>
			              
			              <div class="d-flex justify-content-between align-items-center">
			                
			                <div class="mt-1">
			                  <a href="#" class="btn btn-sm btn-outline-danger">상세보기</a>
			                </div>
			                 
			              </div>
			            </div>
			          </div>
			        </div>
			        
			        <div class="col-md-4 p-3">
			          <div class="card h-100">
			            <img class="card-img-top" src="https://i.imgur.com/R5EdVui.jpg">
			            
			            <div class="card-body">
	
			              <h4 class="card-text">그룹3</h4>
						  <p>불러 계절이 어머님, 잠, 까닭입니다. 책상을 차 벌레는 부끄러운 별 봅니다.</p>
						  
						  <div class="d-flex justify-content-between align-items-center">
			                
			                <div class="mt-1">
			                  <a href="#" class="btn btn-sm btn-outline-danger">상세보기</a>
			                </div> 
			                
			              </div>
			            </div>
			          </div>
			        </div>
			        
			</div>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
<!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>