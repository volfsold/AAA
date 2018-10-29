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
                    <button type="button" class="btn btn-outline-info">Search</button>
                </div>

            </div>


            <div class="col">
            </div>
        </div>

        <div class="row">
            <div class="col"></div>
            <div class="col-sm-11" style="margin-top: 50px; margin-right: 50px;">
                <strong style="font-size: 150%">검색된 모임</strong>
                <button type="button" class="btn btn-outline-info" style="float: right; color: red; border-color: red;">모임 만들기</button>
                <hr style="margin-top: 40px;  border-color: gray; 
                margin-top: 40px; margin-bottom: 40px;">


                <div style="margin-left: 50px; margin-right: 50px;">
                    <div id="groupBorder" style="margin-bottom: 100px;">
                        <div style="padding-left: 40px; padding-right: 100px; padding-top: 40px;">
                            <div class="form-inline">
                                <img src="/resources/image/community/sample.png" alt="..." class="img-thumbnail" style="margin-right: 100px">
                                <div style="width: 290px;">
                                    <h4 style="margin-bottom: 50px; margin-right: 30px;"><strong>참여하고 있는 모임1<img  id = "lockImg"src="/resources/image/community/자물쇠.png"></strong></h4>
                                    <div>
                                        <p>
                                            <span><strong>참여자 : </strong></span>
                                            <span>10</span>
                                            
                                        </p>
                                        <hr style="margin-right: 100px;">
                                        <p>
                                            <span><strong>키워드 : </strong></span>
                                            <span>#키워드1</span>,
                                            <span>#키워드2</span>
                                        </p>
                                        <hr style="margin-right: 100px;">
                                        <p>
                                            <span style="color: red; margin-left: 20px;"><strong>♡</strong></span>
                                            <span><strong> </strong> </span>
                                            <span>10</span>
                                        </p>
                                        <hr style="margin-right: 100px;">
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-outline-danger" style="margin-top:  20px;">신청하기</button><br>
                                    <button type="button" class="btn btn-outline-info" style="margin-top:  20px;">상세보기</button>
                                </div>
                                <div>
                                    <p style="margin-top: 20px; margin-left: 70px; font-size: 30px;">모임달성</p>
                                    
                                    <p style="text-align: center;"> (그래프 !!)</p>
                                   


                                </div>

                            </div>

                            <br><br>
                        </div>
                    </div>
                </div>

                <div id="groupBorder" style="margin-bottom: 100px;">
                    <div style="padding-left: 100px; padding-right: 100px; padding-top: 40px;">
                        <div class="form-inline">
                            <img src="/resources/image/community/sample.png" alt="..." class="img-thumbnail" style="margin-right: 100px">
                            <div >
                                <h4 style="margin-bottom: 50px; margin-right: 110px; width: 220px;"><strong>참여하고 있는 모임2</strong></h4>
                                <p>
                                    <span>참여자 : </span>
                                    <span>20</span>
                                </p>

                                <p>
                                    <span>키워드 : </span>
                                    <span>#키워드1</span>, &nbsp;
                                    <span>#키워드2</span>
                                </p>

                                <p>
                                    <span>♡</span>
                                    <span>좋아요 : </span>
                                    <span>20</span>
                                </p>

                            </div>
                            <div>
                                <button type="button" class="btn btn-outline-danger" style="margin-top:  40px;">신청하기</button><br>
                                <button type="button" class="btn btn-outline-info" style="margin-top:  20px;">상세보기</button>
                            </div>

                            <p style="margin-left: 70px; font-size: 30px;">모임달성</p>
                            <br>
                            <p style="text-align: center;"> (그래프 !!)</p>
                        
                        </div>

                        <br><br><br><br>
                    </div>
                </div>



                <div id="groupBorder" style="margin-bottom: 100px;">
                    <div style="padding-left: 100px; padding-right: 100px; padding-top: 40px;">
                        <div class="form-inline">
                            <img src="/resources/image/community/sample.png" alt="..." class="img-thumbnail" style="margin-right: 100px">
                            <div>
                                <h4 style="margin-bottom: 50px; margin-right: 110px;"><strong>참여하고 있는 모임3</strong></h4>
                                <p>
                                    <span>참여자 : </span>
                                    <span>20</span>
                                </p>

                                <p>
                                    <span>키워드 : </span>
                                    <span>#키워드1</span>, &nbsp;
                                    <span>#키워드2</span>
                                </p>

                                <p>
                                    <span>♡</span>
                                    <span>좋아요 : </span>
                                    <span>30</span>
                                </p>

                            </div>
                            <div>
                                <button type="button" class="btn btn-outline-danger" style="margin-top:  40px;">신청하기</button><br>
                                <button type="button" class="btn btn-outline-info" style="margin-top:  20px;">상세보기</button>
                            </div>

                            <p style="margin-left: 70px; font-size: 30px;">모임달성</p>
                            <br>
                            <p>(그래프 !!)</p>
                        </div>

                        <br><br><br><br>
                    </div>
                </div>


            </div>




            <div class="col" style="margin-bottom: 300px;"></div>
        </div>

    </div>




    <!-- 위로가기 버튼 -->
    <div class="top-button"><a href=""><img id ="upImg" src="/resources/image/community/위로.png"> </a></div>

</body>

<link rel="stylesheet" type="text/css" href="/css/community/button.css">
<link rel="stylesheet" type="text/css" href="/css/community/searchCommunity.css">

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
        });
    </script>

        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>
