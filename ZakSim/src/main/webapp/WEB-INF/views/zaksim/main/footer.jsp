<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



    <!-- footer -->

    <div class=" text-white" style="background-color: rgb(33, 33, 33)">
        <div class="container">


            <div class="row justify-content-center">

                <div class="col pt-4 text-center">
                    <a href="#" class="text-secondary" style="margin-bottom: 5px;"> <b>회사소개</b></a>
                </div>
                <div class="col pt-4 text-center">
                    <a href="#" class="text-secondary" style="margin-bottom: 5px;"> <b>이용약관</b></a>
                </div>
                <div class="col pt-4 text-center">
                    <a href="#" class="text-secondary" style="margin-bottom: 5px;"> <b>개인정보처리방침</b></a>
                </div>
                <div class="col pt-4 text-center">
                    <a href="#" class="text-secondary " style="margin-bottom: 5px;"> <b>운영정책</b></a>
                </div>

            </div>

            <hr style="border-style: solid; border-color: dimgray;">

            <div class="row justify-content-center">

                <div class="row text-center">
                    <div class="col-xl-12">
                        <h5>
                            <p class="text-white" style="margin-top: 11px; margin-bottom: 11px;"> Project : ZakSim thirty day</p>
                        </h5>
                    </div>
                </div>

                <div class=" row text-center">
                    <div class="col-xl-12">
                        <h6>
                            <p class="text-white"> Header : 권수정</p>
                        </h6>
                        <h6>
                            <p class="text-white" style="padding-left: 30px;"> Member : 권미현, 김진섭, 김혁수, 배창환 </p>
                        </h6>
                    </div>
                </div>
                
                <div class="row " style="padding-bottom: 0rem!important;">
                    <h6>
                        <p style="margin-bottom: 5px;">
                            <i class="fa d-inline mr-3 text-secondary fa-phone text-white" style="padding-left: 30px;"></i>☎&nbsp; 02 - 1234 - 5678
                        </p>
                    </h6>
                    <h6>
                        <p style="margin-bottom: 5px;">
                            <i class="fa d-inline mr-3 text-secondary fa-envelope-o text-white" style="padding-left: 30px;"></i>✉ info@KHAcademy.com
                        </p>
                    </h6>
                    <h6>
                        <p style="margin-bottom: 5px;">
                            <i class="fa d-inline mr-3 fa-map-marker text-secondary text-white" style="padding-left: 30px;"></i>▼&nbsp;서울특별시 강남구 역삼동123
                        </p>
                    </h6>
                </div>

            </div>

            <div class="row">
                <div class="col-md-12 mt-1">
                    <p class="text-center text-white">© Copyright 2018 ZakSim thirty day - All rights reserved </p>
                </div>
            </div>
        </div>
    </div>

    <!-- ribbon -->
<!--     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<!-- pie chart -->
	<script src="http://rendro.github.io/easy-pie-chart/javascripts/jquery.easy-pie-chart.js"></script> 
	
	<script>
		// 파이 차트
		$(function () {
		    $('.min-chart#chart-sales').easyPieChart({
		        barColor: "#4caf50",
		        onStep: function (from, to, percent) {
		            $(this.el).find('#percent').text(Math.round(percent));
		        }
		    });
		});

	</script>
	
</body>

</html>