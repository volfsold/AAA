<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />

	<title>Challenge</title>
	
	<style type="text/css">
    	body {
    		text-align: center;
    	}
    	
    	p {
    		font-family: "Helvetica Nene", Helvetica, Arial, 맑은 고딕,"malgun gothic", sans-serif;
    	}

    	.card-img-top {
    		height: 65%;
    	}
    	
	</style>
	
</head>

<body>
	
	<div class="container mt-1">
		 
		 <h3>지난 도전들</h3>	
		 
		 <%
		 	for(int i=0; i<3; i++) {
		 %>
		 
		 <div class="row">
		 
		 	<div class="col-md-4 p-3">
		          <div class="card box-shadow h-100">
		            <img class="card-img-top" src="https://t1.daumcdn.net/cfile/tistory/24283C3858F778CA2E">
		            <div class="card-body">
		              <h4 class="card-text">이미지1</h4>
		              
					<div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <a href="#" class="btn btn-sm btn-outline-danger">상세보기</a>
		                </div>
		                 
		              </div>
		            </div>
		          </div>
		        </div>
		        
		        <div class="col-md-4 p-3">
		          <div class="card box-shadow h-100">
		            <img class="card-img-top" src="https://t1.daumcdn.net/cfile/tistory/24283C3858F778CA2E">
		            <div class="card-body">
		              <h4 class="card-text">이미지2</h4>
		              
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <a href="#" class="btn btn-sm btn-outline-danger">상세보기</a>
		                </div>
		                 
		              </div>
		            </div>
		          </div>
		        </div>
		        
		        <div class="col-md-4 p-3">
		          <div class="card box-shadow h-100">
		            <img class="card-img-top" src="https://i.imgur.com/R5EdVui.jpg">
		            <div class="card-body">
		              <h4 class="card-text">이미지3</h4>
		              
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <a href="#" class="btn btn-sm btn-outline-danger">상세보기</a>
		                </div>
		                 
		              </div>
		            </div>
		          </div>
		        </div>
		 	</div>
		 	
		  <%
		  	}
		  %>	
		  		
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
</body>

</html>