<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

	<title>Update</title>
	
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
        
        label {
        	float:left;
        }
        
     </style>
     
</head>

<body>

	<div class="container m-1">
	
		<div class="row" style="margin:auto;">
		
			<div class="col-md-6 mr-3 ml-3">
				<h3>회원정보 수정</h3>
				<div>
					<img style="height:80px; width:100px;" src="https://data.ac-illust.com/data/thumbnails/78/7877e8c81ac0a942265a9b65a049b784_t.jpeg"/>
				</div>
				
				<div>    
					<p>홍길동</p>
				</div>
			</div>
		
			<div class="col-md-6 mr-3 ml-3">
				<div class="card">
					<form action="/mypage/update" method="post">
					
					<div class="row">
						  <div class="form-group col-8">
						    <label for="id">아이디</label>
						    <input type="text" class="form-control" id="id">
						  </div>
						  <div class="form-group col-8">
						    <label for="pw">변경할 비밀번호</label>
						    <input type="password" class="form-control" id="pwchange">
						  </div>
						  <div class="form-group col-8">
						    <label for="pw">비밀번호 재확인</label>
						    <input type="password" class="form-control" id="pwcheck">
						  </div>
						  <div class="form-group col-8">
						    <label for="name">이름</label>
						    <input type="text" class="form-control" id="name">
						  </div>
						  <div class="form-group col-8">
						    <label for="nick">닉네임</label>
						    <input type="text" class="form-control" id="nick">
						  </div>
						  <div class="form-group col-8">
						    <label for="phone">연락처</label>
						    <input type="text" class="form-control" id="phone">
						  </div>
						  <div class="form-group col-8">
						    <label for="email">현재 이메일</label>
						    <input type="email" class="form-control" id="email">
						  </div>

							<div class="form-group col-8">
								<label for="email">변경할 이메일</label>
								<input type="email" class="form-control" id="mailchange">
							</div>
						
						  
							<div class="col-4">	  
								<div style="float:right;">  
									<button type="submit" class="btn btn-danger">인증번호 전송</button>
								</div>
							</div>

							<div class="form-group col-8">
								<label for="email">이메일 인증번호</label>
								<input type="email" class="form-control" id="mailnum">
							</div>
						 	
						 	<div class="col-4">
								<div style="float:right;">
									<button type="submit" class="btn btn-danger">확인</button>
								</div>
						    </div>
						  
						  </div>
	
					  <div style="float:left;">
					 	 <button type="submit" class="btn btn-danger">회원정보 수정</button>
					  </div>
					  
					  <div style="float:right;">
					 	<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">서명 생성/수정</button>
					  </div>

					</form>

				</div>
			
			</div>
			
			<div class="modal fade" id="myModal">
				<div class="modal-dialog modal-dialog-centered">
							  
					<div class="modal-content">
					
						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">서명 생성/수정</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
									
						<!-- Modal body -->
						<div class="modal-body">
							<form action="/mypage/sign" method="post">
								<div class="form-group">
									
								</div>
														
								<div style="float:right;">
									<button type="submit" class="btn btn-danger" data-dismiss="modal">생성/수정</button>
								</div>
							</form>
						</div>
						
				    </div>							    
			</div>
		</div>			

		</div>

	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
</body>

</html>