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
                    <h1>커뮤니티</h1>
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
            <div class="col">
            </div>
            <div class="col-sm-11" style="margin-top: 60px; margin-right: 50px;">

                <!-- 참여하고 있는 모임-->
                <strong style="font-size: 150%">참여하고 있는 그룹</strong>
                <button type="button" class="btn btn-outline-primary" style="float: right; margin-top: 30px;">+ 더보기</button>
                <hr style="margin-top: 40px;  border-color: gray; margin-bottom: 40px;">


                <div class="form-inline" style="margin-bottom: 50px;">
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=9" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">참여하고 있는 모임1</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>1</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=8" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">참여하고 있는 모임2</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>2</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=7"alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">참여하고 있는 모임3</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>3</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                </div>

                <hr style="border-color: gray; margin-bottom: 100px;">


               <div>
                <!-- 인기모임 -->
                <strong style="font-size: 150%">인기모임</strong>
                <button type="button" class="btn btn-outline-primary" style="float: right; margin-top: 30px;">+ 더보기</button>
                <hr style="margin-top: 40px;  border-color: gray; margin-bottom: 40px;">

                <div class="form-inline" style="margin-bottom: 50px;">
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=6" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">인기 모임1</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>1</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=5" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">인기 모임2</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>2</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=4" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">인기 모임3</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>3</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                </div>
                </div>
                

                <!-- 새로 시작하는 모임 -->
                <strong style="font-size: 150%">새로 시작한 모임</strong>
                <button type="button" class="btn btn-outline-primary" style="float: right; margin-top: 30px;">+ 더보기</button>
                <hr style="margin-top: 40px;  border-color: gray; margin-bottom: 40px;">

                <div class="form-inline" style="margin-bottom: 50px;">
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=3" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">새로운 모임1</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>1</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=12" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">새로운 모임2</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>2</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=10"alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">새로운 모임3</h4>
                            </span>
                            <span class="form-inline">
                                <span style="color : red;">
                                    <h5>♥ &nbsp;</h5>
                                </span>
                                <span>
                                    <h4>3</h4>
                                </span>
                            </span>
                            <p class="card-text">키워드 : 키워드1, 키워드2</p>
                        </div>
                    </div>
                </div>

                <hr style="border-color: gray; margin-bottom: 100px;">

                <!-- 카테고리 -->
                <strong style="font-size: 150%">카테고리</strong>
                <button type="button" class="btn btn-outline-primary" style="float: right; margin-top: 30px;">+ 더보기</button>
                <hr style="margin-top: 40px;  border-color: gray; margin-bottom: 40px;">

                <div class="form-inline" style="margin-bottom: 50px;">
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=135" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">생활</h4>
                            </span>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem; margin-right: 20px;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=136" alt="Card image cap">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">건강</h4>
                            </span>
                        </div>
                    </div>
                    <div class="card" style="width: 20rem;">
                        <img class="card-img-top" src="https://picsum.photos/1200/350/?image=137" alt="Card image cap"
                        onerror="">
                        <div class="card-body">
                            <span>
                                <h4 class="card-title">공부</h4>
                            </span>
                        </div>
                    </div>
                </div>

                <hr style="border-color: gray; margin-bottom: 300px;">



                <div class="col">
                </div>
            </div>

        </div>
    </div>

    <!-- 위로가기 버튼 -->
    <div class="top-button"><a href=""><img src="/resources/image/community/위로.png"> </a></div>




</body>


<link rel="stylesheet" type="text/css" href="/css/community/button.css">	
<link rel="stylesheet" type="text/css" href="/css/community/main.css">

    <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            $(window).scroll(function() {
                if ($(this).scrollTop() > 200) {
                    $('.top-button').fadeIn();
                } else {
                    $('.top-button').fadeOut();
                }
            });


            $(".top-button").click(function() {
                $('html').animate({
                    "scrollTop": "0px"
                }, "slow");
                return false;
            });
        });
    </script>

        <!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>