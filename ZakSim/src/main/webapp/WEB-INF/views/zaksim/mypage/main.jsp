<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

	<title>MyPage</title>
	
    <style type="text/css">
    	body {
    		text-align: center;
    	}
    	
    	p {
    		font-family: "Helvetica Nene", Helvetica, Arial, 맑은 고딕,"malgun gothic", sans-serif;
    	}
    		
        #navbar {
            background-color: rgb(154, 28, 15)
        }
        
		.carousel {
			width: 40%;
			height: 30%;
		}
		
		.carousel-inner img {
			width: 100%;
			min-height: 100px;
		}
         
    </style>
    
</head>

<body>

    <div class="container m-1">
    
      <div class="row mt-3 mb-3"> <!-- first row start-->
        
        <div class="col-md-5">
	        <div class="card">
		        <h3>회원 정보</h3>
			        <div>
				        <img style="height:80px; width:100px;" src="https://data.ac-illust.com/data/thumbnails/78/7877e8c81ac0a942265a9b65a049b784_t.jpeg"/>
				    </div>
				    <div>    
				        <p>홍길동</p>
			        </div>
			     <div class="btn-group btn-group-sm mt-2 mb-3"  style="margin:auto;">
				     <a href="/mypage/update" class="btn btn-sm btn-outline-danger">회원 정보수정</a>
				     <button type="button" class="btn btn-sm btn-outline-danger" data-toggle="modal" data-target="#myModal">회원 탈퇴</button>
				     
				     <!-- The Modal -->
					<div class="modal fade" id="myModal">
					  <div class="modal-dialog modal-dialog-centered">
					  
					    <div class="modal-content">
					      <!-- Modal Header -->
					      <div class="modal-header">
					        <h4 class="modal-title">회원 탈퇴</h4>
					        <button type="button" class="close" data-dismiss="modal">&times;</button>
					      </div>
					
					      <!-- Modal body -->
					      <div class="modal-body">
						      <form action="/mypage/delete" method="get">
						      	<div class="form-group">
									<label for="pwd" style="float:left;">비밀번호</label>
								    <input type="password" class="form-control" id="pwd">
								</div>
								
								<div style="float:right;">
									<button type="submit" class="btn btn-danger" data-dismiss="modal">탈퇴</button>
								</div>
							  </form>
					      </div>
					    </div>
					    
					  </div>
					</div><!-- modal end -->
				
		         </div>
	        </div>
        </div>
        
        <div class="col-md-7">
        	
        	<div class="card">
		        <div class="mt-3">
		        	<p>OO/OO 부터 OO/OO 까지</p>
	                 	<p>OOOOO에</p>
	      			<p>10000원을 걸고 도전 중</p>
		        </div>
		        
		     
	       		<div class="progress">
		  			<div class="progress-bar progress-bar-striped progress-bar-animated bg-danger" style="width:80%">80%</div>
				</div>

	          	<div class="mt-3 mb-3">
	          		<a href="#" class="btn btn-sm btn-outline-danger">인증하기</a>
	          	</div>
          	
          	</div>
        </div>
        
      </div><!-- first row end -->
                 
       <div class="row mt-3 mb-3"><!-- second row start -->
		
      	<div class="col-md-11 ml-5">
      		<div>
				<h4>참여중인 그룹</h4>
			</div>
		      	<div id="demo" class="carousel slide" data-ride="carousel" style="margin:auto;">
		      		
					  <!-- The slideshow -->
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img src="http://ww2.sjkoreancatholic.org/files/testing_image.jpg" alt="maple" width="300" height="225">
					      <div class="img-thumbnail" class="carousel-caption d-none d-md-block">
						    <h4>그룹1</h4>
						  </div>
					    </div>
					    <div class="carousel-item">
					      <img src="https://t1.daumcdn.net/cfile/tistory/24283C3858F778CA2E" alt="dog" width="300" height="225">
					      <div class="img-thumbnail" class="carousel-caption d-none d-md-block">
						    <h4>그룹2</h4>
						  </div>
					    </div>
					    <div class="carousel-item">
					      <img src="https://i.imgur.com/R5EdVui.jpg" alt="flower" width="300" height="225">
						  <div class="img-thumbnail" class="carousel-caption d-none d-md-block">
						    <h4>그룹3</h4>
						  </div>				    
					    </div>
					  </div>
					  
<!-- 				  Left and right controls -->
					  <a class="carousel-control-prev" href="#demo" data-slide="prev">
					    <span class="carousel-control-prev-icon"></span>
					  </a>
					  <a class="carousel-control-next" href="#demo" data-slide="next">
					    <span class="carousel-control-next-icon"></span>
					  </a>
				</div>
				
				<div class="mt-2 ml-5" style="float:right;">
		      		<a href="/mypage/groups" class="bslink">더보기</a>
		    	</div>
      	</div>
      	
 	   </div><!-- second row end -->
      
      
       <div class="row mt-5"><!-- third row start -->
       	  
       	  <div class="col-md-7">
       	  	<div style="float:left;">
       	  		<h4>도전 기록</h4>
       	  	</div>
       	  </div>
       	  
       	  <div class="col-md-4 ml-5">
       	  	<div style="float:right;">
		  		<a href="/mypage/challenge">더보기</a>
		  	</div>
		  </div>
       	  
       	  <div class="col-md-3">
       		<div class="card" style="width:100%">
       		  <a href="/mypage/challengedetail">
	              <img class="img-thumbnail" src="https://i.imgur.com/R5EdVui.jpg" alt="Card image cap" style="width:100%; height:100%;"> 
              </a>
              <p class="card-text">이미지1</p>
            </div>
          </div>
            
          <div class="col-md-3">
       		<div class="card" style="width:100%">
       		  <a href="/mypage/challengedetail">
              	<img class="img-thumbnail" src="https://i.imgur.com/R5EdVui.jpg" alt="Card image cap" style="width:100%; height:100%;">
              </a>
              <p class="card-text">이미지2</p>
            </div>
          </div>
          
          <div class="col-md-3">
       		<div class="card" style="width:100%">
       		  <a href="/mypage/challengedetail">
              	 <img class="img-thumbnail" src="https://i.imgur.com/R5EdVui.jpg" alt="Card image cap" style="width:100%; height:100%;">
              </a>
              <p class="card-text">이미지3</p>
            </div>
          </div>
          
          <div class="col-md-3">
       		<div class="card" style="width:100%">
       		  <a href="/mypage/challengedetail">
              	 <img class="img-thumbnail" src="https://i.imgur.com/R5EdVui.jpg" alt="Card image cap" style="width:100%; height:100%;">
              </a>
              <p class="card-text">이미지4</p>
            </div>
          </div>       	
         	
       	</div><!-- third row end -->
       	
      </div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>

</html>
