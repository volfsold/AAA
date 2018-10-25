<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp" %>
   
   

    <div class="container" id="zz">
        <div class="row" style="margin-bottom: 30px;">
            <div class="col">
            </div>
            <div class="col-9">
                <strong>
                    <h1 style="vertical-align: 100%">커뮤니티</h1>
                </strong>
            </div>
            <div class="col">
            </div>
        </div>
        <div class="row">
            <div class="col">
            </div>
            <div class="col-9">
                <div class="form-inline">
                    <select class="custom-select d-block my-3" required>
                        <option value="1" selected="selected">모임 명</option>
                        <option value="2">카테고리</option>
                        <option value="3">키워드</option>
                    </select>
                    <input type="text" class="form-control mx-3" style="width: 600px;" placeholder="검색할 내용">
                    <button type="button" class="btn btn-outline-info">검색</button>
                </div>

            </div>


            <div class="col">
            </div>
        </div>

        <div class="row">
            <div class="col"></div>


            <div class="col-sm-11" style="margin-top: 50px; margin-right: 50px;">
                <div style="margin-bottom: 150px;">
                    <strong style="font-size: 150%;">참여하고 있는 모임</strong>
                </div>

                <div style="text-align: center; color: gray; font-size: 40px; font-style: italic;">
                    <p>참여하고 있는 모임이 없습니다.</p>
                    <p> - 모임을 만드세요. - </p>
                    <button type="button" class="btn btn-danger" style="width: 200px;" data-toggle="modal" data-target=".bd-example-modal-lg">모임 만들기</button>





                </div>



            </div>




            <div class="col" style="margin-bottom: 300px;"></div>
        </div>

    </div>




    <!-- 모달 -->
    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel" style="font-size: 30px;"><strong>모임 만들기</strong></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <!-- 모달 바디-->
                <div class="modal-body">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm-2"></div>
                            <div class="">
                                <div class="form-inline">
                                    <div>
                                        <img src="/resources/image/community/sample.png" alt="..." class="img-thumbnail" style="width: 200px; height: 150px; margin-bottom: 10px;"><br>

                                        <button type="file" class="btn btn-primary" style="align-content: center; margin-left: 40px;">

                                            이미지 등록</button>
                                    </div>
                                    <div style="padding-bottom: 0px; margin-left: 50px;">
                                        <span style="font-size: 20px;"><strong>모임명 : </strong></span>
                                        <input class="form-control" type="text" style="height: 30px;">
                                        <br><br>
                                        <span style="font-size: 20px;"><strong>최대 모임 인원 : </strong></span>
                                        <input class="form-control" type="text" style="width: 60px; height: 30px;" placeholder="100"><strong>명</strong>
                                        <br>
                                        <span style="margin-left: 50px; font-size: 15px; color: gray;">※ 최대 100명까지 가능</span>

                                    </div>

                                </div>

                                <div style="margin-top: 30px;">
                                    <span style=" margin-left: 50px; margin-right: 102px;"><strong>공개</strong></span>
                                    <input type="radio" name="screct" id="screctRadio1" >
                                    <label> 공개</label>

                                    <input type="radio" style="margin-left: 100px;"  id="screctRadio2" name="screct" >
                                    <label> 비공개</label>
                                    <br><br>

                                    <div style="margin-left: 30px; margin-right: 30px;">

                                        <div id="screctRadio" style="vertical-align: top;">
                                            <div class="card-body">
                                               <div class="form-inline">
                                                <span><strong>비밀번호</strong></span>
                                                <input type="password" class="form-control" style="margin-left: 73px;">
                                                </div>
                                                <br>
                                                <div class="form-inline">
                                                 <span><strong>비밀번호 확인</strong></span>
                                                 <input type="password" class="form-control" style="margin-left: 37px;">
                                                </div>
                                                <br>
                                            </div>
                                        </div>


                                    </div>
                                    

                                    
                                    <span style="margin-left: 50px; margin-right: 70px;"><strong>카테고리</strong></span>
                                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" style="height: 40px; width: 150px;">
                                        <option value="1">카테고리1</option>
                                        <option value="2">카테고리2</option>
                                        <option value="3">카테고리3</option>
                                    </select>

                                    <br><br>
                                    <div class="form-inline">
                                        <span style="margin-left: 50px; margin-right: 90px;"><strong>키워드</strong></span>

                                        <input type="text" class="form-control" style="width: 300px;" placeholder="ex) #키워드1, #키워드2">
                                    </div>
                                </div>


                            </div>
                            <div class="col-sm-1"></div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer" style="">
                    <button type="button" class="btn btn-danger" id="create"><a href="">만들기</a></button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>


    <!-- 위로가기 버튼 -->
    <div class="top-button"><a href=""><img src="/resources/image/community/위로.png"> </a></div>



</body>

<link rel="stylesheet" type="text/css" href="/css/community/button.css">
<link rel="stylesheet" type="text/css" href="/css/community/noJoin.css">

    <script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            $(window).scroll(function() {
                if ($(this).scrollTop() > 200) {
                    $('.top-button').fadeIn();
                } else {
                    $('.top-button').fadeOut();
                }
            });


            $('.top-button').click(function() {
                $('html,body').animate({
                    scrollTop: 0
                }, 400);
                return false;
            });
            
            
            // 공개 클릭 시 숨기기 / 비공개 클릭 시 보이기
            $("#screctRadio").hide();  
            
             $("#screctRadio1").click(function(){
                $("#screctRadio").hide();  
            });
            
            $("#screctRadio2").click(function(){
                $("#screctRadio").fadeIn();  
            });
            
            
        });

    </script>

        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>