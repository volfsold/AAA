<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp"%>

<div class="container" id="zz">


	<div class="row" style="margin-bottom: 30px;">
		<div class="col"></div>
		<div class="col-9"></div>
		<div class="col"></div>
	</div>
	<div class="row">
		<div class="col"></div>
		<div class="col-9"></div>


		<div class="col"></div>
	</div>

	<div class="row">
		<div class="col"></div>

		<c:forEach var="groupInfo" items="${groupInfo }">

			<div class="col-sm-11" style="margin-top: 50px; margin-right: 50px;">
				<strong style="font-size: 150%">${groupInfo.communityGroup.title }</strong>

				<button type="button" class="btn btn-outline-info"
					style="float: right; color: red; border-color: red; margin-left: 30px;"
					data-toggle="modal" data-target="#updateCommunityModal">수정
					하기</button>
				<button type="button" class="btn btn-outline-info"
					style="float: right; color: gray; border-color: gray;">
					<a href="joinedGroup.html">모임 목록</a>

				</button>
				<button type="button" class="btn btn-outline-success"
					style="float: right; margin-right: 30px;">좋아요</button>

				<div style="margin-top: 100px;">

					<div style="margin-left: 50px; margin-right: 50px;">
						<img src="${groupInfo.communityGroup.image }" id="photo">
					</div>

					<div
						style="margin-top: 40px; margin-left: 190px; margin-right: 190px;">
						<div style="margin-bottom: 20px;">
							<strong
								style="font-size: 150%; margin-left: 30px; margin-right: 30px; cursor: pointer;"
								id="communityIntroduce">모임 소개</strong> <strong
								style="font-size: 150%; margin-left: 30px; margin-right: 30px; cursor: pointer;"
								id="communityJoinPeople">참여자 </strong> <strong
								style="font-size: 150%; margin-left: 30px; margin-right: 30px; cursor: pointer;"
								id="communityKeyword">키워드 </strong> <strong
								style="font-size: 150%; margin-left: 30px; margin-right: 30px; cursor: pointer;"
								id="communityAchievement">모임 달성도 </strong>
						</div>
						<div
							style="margin-left: 50px; margin-right: 50px; margin-bottom: 50px; display: none;"
							id="communityIntroduceComment">${groupInfo.communityGroup.content }</div>

						<div
							style="margin-left: 50px; margin-right: 50px; margin-bottom: 50px; display: none;"
							id="communityJoinPeopleComment">
							<span style="font-size: 150%;">n명 </span> <span
								style="font-size: 150%;">/ 최대
								${groupInfo.communityGroup.max }명</span> &nbsp;&nbsp;&nbsp;
							<button type="button" class="btn btn-outline-secondary"
								onclick="joinMemberView(${groupInfo.communityGroup.idx })">참여자
								보기</button>
						</div>

						<div
							style="margin-left: 50px; margin-right: 50px; margin-bottom: 50px; display: none;"
							id="communityKeywordComment">
							<span style="font-size: 150%;"> <c:forEach
									var="keywordList" items="${keywordList }">
									<c:if
										test="${groupInfo.communityGroup.idx eq keywordList.group_idx}">
													#${keywordList.keyword } 
											</c:if>
								</c:forEach></span>
						</div>


						<div
							style="margin-left: 50px; margin-right: 50px; margin-bottom: 50px; display: none;"
							id="communityAchievementComment">

							<button type="button" class="btn btn-outline-danger"
								id="detailView">자세히 보기</button>
							<br> <br>
							<div class="progress">
								<div class="progress-bar" role="progressbar" style="width: 25%;"
									aria-valuenow="" aria-valuemin="0" aria-valuemax="100">25%</div>
							</div>
						</div>



					</div>
					<hr
						style="margin-top: 10px; margin-bottom: 30px; border-color: black;">
					<div style="margin-bottom: 100px;">
						<button type="button" class="btn btn-outline-secondary"
							data-toggle="modal" data-target="#boardWrite"
							style="float: right; margin-right: 30px;">작성하기</button>
					</div>
					<br>




					<!-- 게시글 -->
					<div style="margin-left: 150px; margin-right: 150px;">
						<div id="comment">
							<br> <img src="/resources/image/community/sample.png"
								id="commentPhoto" style="margin-left: 20px;"> <span><strong
								style="margin-left: 30px; font-size: 25px;">닉네임1</strong></span> <br>
							<div style="margin-left: 100px; margin-right: 100px;">

								할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라
								뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의
								천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한
								봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피 <br> <br> <a href="">더
									보기?</a>

							</div>
							<br>
							<div class="row">
								<div class="col"
									style="background-color: gray; margin-left: 15px; text-align: center;">

									<strong>댓글 n개</strong>

								</div>
								<div class="col"
									style="background-color: gray; margin-right: 15px; text-align: center;">
									<strong style="cursor: pointer;"> ♡ 좋아요 n개</strong>
								</div>
							</div>

							<div style="text-align: center; background-color: lightgray;">
								<a data-toggle="collapse" href="#writeCommnet"
									aria-expanded="false" aria-controls="writeCommnet"><strong>댓글
										쓰기</strong></a>
							</div>

							<!-- 댓글 쓰기 -->

							<div id="writeCommnet" class="collapse" role="tabpanel"
								aria-labelledby="headingOne" data-parent="#writeCommnet"
								\ style="border: 1px solid; background-color: white; border-color: lightgray; border-radius: 100px; margin-top: 20px; margin-bottom: 20px;">
								<div class="mx-5">
									<div>
										<img src="/resources/image/community/sample.png"
											class="mx-3 my-3" id="commentPhoto"> <span
											style="font-size: 20px;"><strong>닉네임a</strong></span>

									</div>
									<div class="mx-5">
										<textarea class="form-control col-sm-112" rows="3"
											placeholder="댓글 입력 "></textarea>


										<br>
									</div>

									<div class="mx-5">
										<button type="button" class="btn btn-outline-secondary"
											style="float: right; margin-right: 10px;">취소</button>
										<button type="button" class="btn btn-outline-danger"
											style="float: right; margin-right: 10px;">입력</button>

									</div>
									<br> <br>

								</div>
							</div>



							<!--  -->



							<div style="text-align: center; background-color: gray;">

								<a data-toggle="collapse" href="#commentOpen"
									aria-expanded="false" aria-controls="commentOpen"><strong
									style="color: aliceblue">댓글 더보기</strong></a>
							</div>
							<div>
								<div id="accordion" role="tablist">
									<div class="card">


										<!-- 댓글 -->
										<div id="commentOpen" class="collapse" role="tabpanel"
											aria-labelledby="headingOne" data-parent="#accordion"
											style="background-color: lightgray;">
											<div class="card-body mx-3 my-3">

												<div
													style="border: 1px solid; background-color: white; border-color: lightgray; border-radius: 100px;">
													<div class="mx-5">
														<div>
															<img src="/resources/image/community/sample.png"
																class="mx-3 my-3" id="commentPhoto"> <span
																style="font-size: 20px;"><strong>닉네임a</strong></span>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
																style="color: lightgray; cursor: pointer;"
																data-toggle="collapse" href="#comment2Open"
																aria-expanded="false" aria-controls="comment2Open">
																댓글 달기 </span> <span style="color: lightgray; cursor: pointer;"
																data-toggle="modal" data-target="#reportModal">
																신고 하기 </span> <span style="color: lightgray; cursor: pointer;">
																삭제 하기 </span>
														</div>
														<div class="mx-5">
															世솅〮宗조ᇰ御ᅌᅥᆼ〮製졩〮訓훈〮民민正져ᇰ〮音ᅙᅳᆷ 나랏〮말〯ᄊᆞ미〮 中듀ᇰ國귁〮에〮달아〮
															文문字ᄍᆞᆼ〮와〮로〮서르ᄉᆞᄆᆞᆺ디〮아니〮ᄒᆞᆯᄊᆡ〮
															이〮런젼ᄎᆞ〮로〮어린〮百ᄇᆡᆨ〮姓셔ᇰ〮이〮니르고〮져〮호ᇙ〮배〮이셔〮도〮
															ᄆᆞᄎᆞᆷ〮내〯제ᄠᅳ〮들〮시러〮펴디〮몯〯ᄒᆞᇙ노〮미〮하니〮라〮
															내〮이〮ᄅᆞᆯ〮為윙〮ᄒᆞ〮야〮어〯엿비〮너겨〮 새〮로〮스〮믈〮여듧〮字ᄍᆞᆼ〮ᄅᆞᆯ〮ᄆᆡᇰᄀᆞ〮노니〮
															사〯ᄅᆞᆷ마〯다〮ᄒᆡ〯ᅇᅧ〮수〯ᄫᅵ〮니겨〮날〮로〮ᄡᅮ〮메〮
															便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮 <br> <br> <a href="">더
																보기</a> <br> <br>
														</div>
													</div>
												</div>




												<!-- 대댓글 -->
												<div id="comment2Open" class="collapse" role="tabpanel"
													aria-labelledby="headingOne" data-parent="#comment2Open"
													style="border: 1px solid; background-color: white; border-color: lightgray; border-radius: 100px; margin-left: 100px;">
													<div class="mx-5">
														<div>
															<img src="/resources/image/community/sample.png"
																class="mx-3 my-3" id="commentPhoto"> <span
																style="font-size: 20px;"><strong>닉네임a</strong></span>

														</div>
														<div class="mx-5">
															<textarea class="form-control col-sm-112" rows="3"
																placeholder="댓글 입력 "></textarea>


															<br>
														</div>

														<div class="mx-5">
															<button type="button" class="btn btn-outline-secondary"
																style="float: right; margin-right: 10px;">취소</button>
															<button type="button" class="btn btn-outline-danger"
																style="float: right; margin-right: 10px;">입력</button>

														</div>
														<br> <br>

													</div>
												</div>







												<!-- 댓글 -->
												<div class="my-3"
													style="border: 1px solid; background-color: white; border-color: lightgray; border-radius: 100px;">
													<div class="mx-5">
														<div>
															<img src="/resources/image/community/sample.png"
																class="mx-3 my-3" id="commentPhoto"> <span
																style="font-size: 20px;"><strong>닉네임b</strong></span>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
																style="color: lightgray"> 댓글 달기 </span> <span
																style="color: lightgray"> 신고 하기 </span>
														</div>
														<div class="mx-5">
															世솅〮宗조ᇰ御ᅌᅥᆼ〮製졩〮訓훈〮民민正져ᇰ〮音ᅙᅳᆷ 나랏〮말〯ᄊᆞ미〮 中듀ᇰ國귁〮에〮달아〮
															文문字ᄍᆞᆼ〮와〮로〮서르ᄉᆞᄆᆞᆺ디〮아니〮ᄒᆞᆯᄊᆡ〮
															이〮런젼ᄎᆞ〮로〮어린〮百ᄇᆡᆨ〮姓셔ᇰ〮이〮니르고〮져〮호ᇙ〮배〮이셔〮도〮
															ᄆᆞᄎᆞᆷ〮내〯제ᄠᅳ〮들〮시러〮펴디〮몯〯ᄒᆞᇙ노〮미〮하니〮라〮
															내〮이〮ᄅᆞᆯ〮為윙〮ᄒᆞ〮야〮어〯엿비〮너겨〮 새〮로〮스〮믈〮여듧〮字ᄍᆞᆼ〮ᄅᆞᆯ〮ᄆᆡᇰᄀᆞ〮노니〮
															사〯ᄅᆞᆷ마〯다〮ᄒᆡ〯ᅇᅧ〮수〯ᄫᅵ〮니겨〮날〮로〮ᄡᅮ〮메〮
															便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮 <br> <br> <a href="">더
																보기</a> <br> <br>
														</div>
													</div>
												</div>


												<div
													style="border: 1px solid; background-color: white; border-color: lightgray; border-radius: 100px;">
													<div class="mx-5">
														<div>
															<img src="/resources/image/community/sample.png"
																class="mx-3 my-3" id="commentPhoto"> <span
																style="font-size: 20px;"><strong>닉네임c</strong></span>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
																style="color: lightgray"> 댓글 달기 </span> <span
																style="color: lightgray"> 신고 하기 </span>
														</div>
														<div class="mx-5">
															世솅〮宗조ᇰ御ᅌᅥᆼ〮製졩〮訓훈〮民민正져ᇰ〮音ᅙᅳᆷ 나랏〮말〯ᄊᆞ미〮 中듀ᇰ國귁〮에〮달아〮
															文문字ᄍᆞᆼ〮와〮로〮서르ᄉᆞᄆᆞᆺ디〮아니〮ᄒᆞᆯᄊᆡ〮
															이〮런젼ᄎᆞ〮로〮어린〮百ᄇᆡᆨ〮姓셔ᇰ〮이〮니르고〮져〮호ᇙ〮배〮이셔〮도〮
															ᄆᆞᄎᆞᆷ〮내〯제ᄠᅳ〮들〮시러〮펴디〮몯〯ᄒᆞᇙ노〮미〮하니〮라〮
															내〮이〮ᄅᆞᆯ〮為윙〮ᄒᆞ〮야〮어〯엿비〮너겨〮 새〮로〮스〮믈〮여듧〮字ᄍᆞᆼ〮ᄅᆞᆯ〮ᄆᆡᇰᄀᆞ〮노니〮
															사〯ᄅᆞᆷ마〯다〮ᄒᆡ〯ᅇᅧ〮수〯ᄫᅵ〮니겨〮날〮로〮ᄡᅮ〮메〮
															便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮 <br> <br> <a href="">더
																보기</a> <br> <br>
														</div>
													</div>
												</div>





											</div>

											<!-- 대댓 -->
											<div
												style="border: 1px solid; background-color: white; border-color: lightgray; border-radius: 100px; margin-left: 100px;: ">
												<div class="mx-5">
													<div>
														<img src="/resources/image/community/sample.png"
															class="mx-3 my-3" id="commentPhoto"> <span
															style="font-size: 20px;"><strong>닉네임a</strong></span>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
															style="color: lightgray"> 댓글 달기 </span> <span
															style="color: lightgray"> 신고 하기 </span>
													</div>
													<div class="mx-5">
														世솅〮宗조ᇰ御ᅌᅥᆼ〮製졩〮訓훈〮民민正져ᇰ〮音ᅙᅳᆷ 나랏〮말〯ᄊᆞ미〮 中듀ᇰ國귁〮에〮달아〮
														文문字ᄍᆞᆼ〮와〮로〮서르ᄉᆞᄆᆞᆺ디〮아니〮ᄒᆞᆯᄊᆡ〮
														이〮런젼ᄎᆞ〮로〮어린〮百ᄇᆡᆨ〮姓셔ᇰ〮이〮니르고〮져〮호ᇙ〮배〮이셔〮도〮
														ᄆᆞᄎᆞᆷ〮내〯제ᄠᅳ〮들〮시러〮펴디〮몯〯ᄒᆞᇙ노〮미〮하니〮라〮
														내〮이〮ᄅᆞᆯ〮為윙〮ᄒᆞ〮야〮어〯엿비〮너겨〮 새〮로〮스〮믈〮여듧〮字ᄍᆞᆼ〮ᄅᆞᆯ〮ᄆᆡᇰᄀᆞ〮노니〮
														사〯ᄅᆞᆷ마〯다〮ᄒᆡ〯ᅇᅧ〮수〯ᄫᅵ〮니겨〮날〮로〮ᄡᅮ〮메〮
														便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮 <br> <br> <a href="">더
															보기</a> <br> <br>
													</div>
												</div>
											</div>


											<!-- 댓글 입력-->
											<div class="my-3"
												style="border: 1px solid; background-color: white; border-color: lightgray; border-radius: 100px; margin-left: 100px;">
												<div class="mx-5">
													<div>
														<img src="/resources/image/community/sample.png"
															class="mx-3 my-3" id="commentPhoto"> <span
															style="font-size: 20px;"><strong>닉네임a</strong></span>

													</div>
													<div class="mx-5">
														<textarea class="form-control col-sm-112" rows="3"
															placeholder="댓글 입력 "></textarea>


														<br>
													</div>

													<div class="mx-5">
														<button type="button" class="btn btn-outline-secondary"
															style="float: right;">입력</button>
													</div>
													<br> <br>

												</div>
											</div>


										</div>
									</div>
								</div>
							</div>

						</div>

					</div>
					<br> <br>

					<div style="margin-left: 150px; margin-right: 150px;">
						<div id="comment">
							<br> <img src="/resources/image/community/sample.png"
								id="commentPhoto" style="margin-left: 20px;"> <span><strong
								style="margin-left: 30px; font-size: 25px;">닉네임1</strong></span> <br>
							<div style="margin-left: 100px; margin-right: 100px;">

								할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라
								뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의
								천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한
								봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피 <br> <br> <a href="">더
									보기?</a>

							</div>
						</div>
					</div>


				</div>
			</div>
		</c:forEach>

		<div class="col" style="margin-bottom: 300px;"></div>
	</div>

</div>


<!-- 위로가기 버튼 -->
<div class="top-button">
	<a href=""><img id="upImg" src="/resources/image/community/위로.png"></a>
</div>

<!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp"%>

<!-- 게시글 등록 모달 -->
<div class="modal fade" id="boardWrite" tabindex="-1" role="dialog"
	aria-labelledby="boardWriteLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					<strong>게시판 - 글쓰기</strong>
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="recipient-name" class="form-control-label"><strong>글
								종류</strong></label> <br>
						<div class="form-inline"
							style="margin-left: auto; margin-right: auto;">
							<div class="radio"
								style="margin-left: 100px; margin-right: 100px;">
								<label> <input type="radio" name="optionsRadios"
									id="textKind" value="nomalText" checked> 일반 글
								</label>
							</div>
							<div class="radio">
								<label> <input type="radio" name="optionsRadios"
									id="textKind" value="certificationText"> 인증 글
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="message-text" class="form-control-label"><strong>Content:</strong></label>
						<textarea class="form-control" id="board-text"
							onkeydown="boardCommnet(this)" onkeyup="boardCommnet(this)"></textarea>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger">등록</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>



<!-- 신고 모달 -->
<div class="modal fade" id="reportModal" tabindex="-1" role="dialog"
	aria-labelledby="reportModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					<strong>신고하기</strong>
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="mx-3">
					<div>
						<span><strong>작성자 : </strong></span> <span> 닉네임1</span>
					</div>


					<hr>

					<div>
						<span><strong>사유선택 : </strong></span> <span
							style="color: lightgray; font-size: 12px;">여러 사유에 해당하는 경우,
							대표적인 사유 1개를 선택해주세요</span>
					</div>
					<br>
					<div class="radio" style="margin-left: 80px;">
						<input type="radio" name="report"> 부적절한 홍보 게시글 <br> <input
							type="radio" name="report"> 음란성 또는 청소년에게 부적합한 내용 <br>
						<input type="radio" name="report"> 명예회손 / 사생활 침해 저작권침해 등 <br>
						<input type="radio" name="report"> 기타

					</div>
				</div>
			</div>
			<div class="modal-footer">
				<div>
					<button type="button" class="btn btn-danger">신고하기</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소</button>

				</div>
			</div>
		</div>
	</div>
</div>



<!-- 커뮤니티 수정 모달 -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
	id="updateCommunityModal" aria-labelledby="myLargeModalLabel"
	aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form id="form1" action="/zaksim/community/updateCommunity"
				method="post" runat="server" enctype="multipart/form-data">
				<c:forEach var="groupInfo" items="${groupInfo }">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"
							style="font-size: 30px;">
							<strong>모임 만들기</strong>
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
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

											<%-- 										<c:set var="key" value="${keywordList.group_idx }" /> --%>

											<%-- 											<c:forEach var="keywordList" items="${keywordList }"> --%>
											<%-- 												<c:if --%>
											<%-- 													test="${groupInfo.communityGroup.idx eq keywordList.group_idx}"> --%>
											<%-- 													<input type="hidden" name="commCategoryIdx" value="${keywordList.group_idx }" /> --%>
											<%-- 											</c:if> --%>
											<%-- 											</c:forEach> --%>
											<input type="hidden" name="commGroupIdx"
												value="${groupInfo.communityGroup.idx }" />
											<%-- 										<input type="hidden" name="commCategoryIdx" value="${key }" /> --%>



											<img id="image" src="${groupInfo.communityGroup.image }"
												alt="..." class="img-thumbnail"
												style="width: 200px; height: 150px; margin-bottom: 10px;"><br>


											<div class="imgInp btn btn-primary"
												style="position: relative; overflow: hidden; padding-right: 17px; margin-left: 40px;">

												<b>이미지 변경</b> <input type="file" id="imgInp" name="file"
													value="${groupInfo.communityGroup.image }"
													style="align-content: center; margin-left: 40px; position: absolute; font-size: 0px; opacity: 0; right: 0; top: 0; cursor: pointer; height: 36px; width: 100px;">
											</div>




										</div>
										<div style="padding-bottom: 0px; margin-left: 50px;">
											<span style="font-size: 20px;"><strong>모임명 :
											</strong></span> <input class="form-control" type="text"
												style="height: 30px;" name="title" maxlength="20"
												required="required" id="commName"
												value="${groupInfo.communityGroup.title }"> <br>
											<br> <span style="font-size: 20px;"><strong>최대
													모임 인원 : </strong></span> <input class="form-control" type="number"
												style="width: 80px; height: 30px;"
												value="${groupInfo.communityGroup.max }" min="1"
												id="commMax" max="100" name="max" required="required"><strong>명</strong>
											<br> <span
												style="margin-left: 50px; font-size: 15px; color: gray;">※
												최대 100명까지 가능</span>

										</div>

									</div>

									<div style="margin-top: 30px;">
										<span style="margin-left: 50px; margin-right: 102px;"><strong>공개</strong></span>
										<input type="radio" name="secret" id="screctRadio1" value=0
											<c:if test="${groupInfo.communityGroup.secret==0}">checked="checked"</c:if> />

										<label> 공개</label> <input type="radio"
											style="margin-left: 100px;" id="screctRadio2" name="secret"
											value=1
											<c:if test="${groupInfo.communityGroup.secret==1}">checked="checked"</c:if> />
										<label> 비공개</label> <br> <br>

										<!-- 기존 비밀번호가 존재 시 -->
										<c:if test="${groupInfo.communityGroup.secret==1}">
											<div style="margin-left: 30px; margin-right: 30px;">
												<div class="screctRadio" style="vertical-align: top;">
													<div class="card-body">
														<div class="form-inline">
															<span><strong>기존 비밀번호</strong></span> <input
																type="password" class="form-control"
																style="margin-left: 37px;" id="pass">
														</div>

													<span style="margin-left: 140px; display: none;" id="passComment" ></span>
													</div>
												</div>
											</div>
										</c:if>

										<div style="margin-left: 30px; margin-right: 30px;">
											<div class="screctRadio" style="vertical-align: top;">
												<div class="card-body">
													<div class="form-inline">
														<span><strong>새로운 비밀번호</strong></span> <input
															type="password" class="form-control"
															style="margin-left: 22px;" id="password1" name="password">
													</div>
													<span style="margin-left: 140px; display: none;" id="pass1Comment"></span>
												</div>
											</div>
										</div>


										<div style="margin-left: 30px; margin-right: 30px;">
											<div class="screctRadio" style="vertical-align: top;">
												<div class="card-body">
													<div class="form-inline">
														<span><strong>비밀번호 확인</strong></span> <input
															type="password" name="password2" class="form-control"
															id="password2" style="margin-left: 37px;">
													</div>
													<span style="margin-left: 140px; display: none;" id="pass2Comment"></span>
													<br>
												</div>
											</div>
										</div>



										<span style="margin-left: 50px; margin-right: 70px;"><strong>카테고리</strong></span>
										<select name="category"
											class="custom-select mb-2 mr-sm-2 mb-sm-0"
											style="height: 40px; width: 150px;">
											<option value=1>운동</option>
											<option value=2>금연</option>
											<option value=3>다이어트</option>
											<option value=4>스터디</option>
											<option value=5>도서</option>
										</select> <br> <br>
										<div class="form-inline">
											<span style="margin-left: 50px; margin-right: 90px;"><strong>키워드</strong></span>

											<input type="text" class="form-control" style="width: 300px;"
												name="keyword" name="keyword" placeholder="ex) #키워드1#키워드2"
												required="required"
												onkeyup="this.value=this.value.replace(/[^#0-9가-힣a-zA-Z]/g,'')">
										</div>
										<br>
										<div class="form-inline">
											<span style="margin-left: 50px; margin-right: 90px;"><strong>소개글</strong></span>

											<br>
											<textarea class="form-control" name="content"
												onkeydown="boardCommnet(this)"
												style="width: 300px; margin-bottom: 20px;"
												onkeyup="boardCommnet(this)" placeholder="내용을 입력하세요"
												required="required">${groupInfo.communityGroup.content}</textarea>


										</div>


									</div>
									<div class="col-sm-1"></div>
								</div>

							</div>
						</div>

						<div class="modal-footer">
							<input type="submit" class="btn btn-danger" id="update"
								onclick="updateClick(${groupInfo.communityGroup.password})"
								value="수정" />
							<button type="reset" class="btn btn-secondary"
								onclick="updateCancel()">취소</button>
							<button type="button" class="btn btn-success"
								onclick="deleteCommnunity(${groupInfo.communityGroup.idx})">삭제</button>

						</div>
				</c:forEach>
			</form>
		</div>
	</div>
</div>








</body>


<link rel="stylesheet" type="text/css" href="/css/community/button.css">
<link rel="stylesheet" type="text/css"
	href="/css/community/enrollCommunity.css">



<script type="text/javascript">
	$(function() {
		$("#imgInp").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#image').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}

	function content(obj) {
		obj.style.height = "1px";
		obj.style.height = (12 + obj.scrollHeight) + "px";
	}
</script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#detailView").click(function() {
			document.location.href = "/zaksim/community/detailCommunity";
		});

		$("#deleteCommnunity").click(function() {
			document.location.href = "/zaksim/community/communityMain";
		});

		// 공개 클릭 시 숨기기 / 비공개 클릭 시 보이기
		var radioVal = $('input[name="secret"]:checked').val();
		if(radioVal==0){
			$(".screctRadio").hide();
		}
		else {
			$(".screctRadio").show();
		}

		$("#screctRadio1").click(function() {
			$("#pass").val("");
			$("#password1").val("");
			$("#password2").val("");
			$("#pass").attr("disabled", false);
			$("#password1").attr("disabled", false);
			$("#password2").attr("disabled", false);
			$(".screctRadio").hide();
		});

		$("#screctRadio2").click(function() {
			$("#pass").attr("required", true);
			$("#password1").attr("required", true);
			$("#password2").attr("required", true);
			$(".screctRadio").fadeIn();
		});

		$(window).scroll(function() {
			if ($(this).scrollTop() > 200) {
				$('.top-button').fadeIn();
			} else {
				$('.top-button').fadeOut();
			}
		});

		$('.top-button').click(function() {
			$('html,body').animate({
				scrollTop : 0
			}, 400);
			return false;
		});
	});
</script>

<script type="text/javascript">
	$(document).ready(function() {

		$('#communityIntroduce').click(function() {

			if ($("#communityIntroduceComment").css("display") == "none") {
				$("#communityIntroduceComment").fadeIn();
				$("#communityJoinPeopleComment").hide();
				$("#communityKeywordComment").hide();
				$("#communityAchievementComment").hide();
			} else {
				$('#communityIntroduceComment').css("display", "none");
			}

		});

		$('#communityJoinPeople').click(function() {

			if ($("#communityJoinPeopleComment").css("display") == "none") {
				$("#communityJoinPeopleComment").fadeIn();
				$("#communityIntroduceComment").hide();
				$("#communityKeywordComment").hide();
				$("#communityAchievementComment").hide();
			} else {
				$('#communityJoinPeopleComment').css("display", "none");
			}

		});

		$('#communityKeyword').click(function() {

			if ($("#communityKeywordComment").css("display") == "none") {
				$("#communityKeywordComment").fadeIn();
				$("#communityIntroduceComment").hide();
				$("#communityJoinPeopleComment").hide();
				$("#communityAchievementComment").hide();
			} else {
				$('#communityKeywordComment').css("display", "none");
			}

		});

		$('#communityAchievement').click(function() {

			if ($("#communityAchievementComment").css("display") == "none") {
				$("#communityAchievementComment").fadeIn();
				$("#communityIntroduceComment").hide();
				$("#communityJoinPeopleComment").hide();
				$("#communityKeywordComment").hide();
			} else {
				$('#communityAchievementComment').css("display", "none");
			}

		});

	});
	
	
	function boardCommnet(obj) {
		obj.style.height = "1px";
		obj.style.height = (12 + obj.scrollHeight) + "px";
	}
	
	// 안됌
// 	function content(obj) {
// 		obj.style.height = "1px";
// 		obj.style.height = (12 + obj.scrollHeight) + "px";
// 	}
	
	function deleteCommnunity(obj) {
		document.location.href = "/zaksim/community/deleteCommunity?idx="+obj;
	}
	
	function joinMemberView(obj) {
		document.location.href = "/zaksim/community/joinMember?idx="+obj;
	}
	
	// 커뮤니티 정보 모달 창 취소
	function updateCancel() {
		 $("#updateCommunityModal").modal('hide');
	}
	
	
	// 
	function updateClick(password) {
		
		// 라디오 체크 값
		var radioVal = $('input[name="secret"]:checked').val();
        
		// 기존 비밀번호
		var pass = document.getElementById("pass").value;
		// 새로운 비밀번호
		var pw1=  document.getElementById("password1").value;
		// 비밀번호 확인
		var pw2=  document.getElementById("password2").value;
		
		// 공개 클릭 시 비밀번호들 비활성화
		if(radioVal==0 ){
			$("#pass").attr("disabled", false);
			$("#password1").attr("disabled", false);
			$("#password2").attr("disabled", false);
		}
		else{
			if(pass == null || pass== ''){
				$('#passComment').css("display", "inline");
				$('#pass1Comment').css("display", "none");
				$('#pass2Comment').css("display", "none");
				document.getElementById('passComment').innerHTML = "기존비밀번호를 입력하세요.";
				document.getElementById('passComment').style.color = "red";
				$("#passCommnet").val('');
				return;
			}
			
			else if(pass != password){
				$('#passComment').css("display", "inline");
				$('#pass1Comment').css("display", "none");
				$('#pass2Comment').css("display", "none");
				document.getElementById('passComment').innerHTML = "기존비밀번호가 틀립니다.";
				document.getElementById('passComment').style.color = "red";
				$("#passCommnet").val('');
				return;
			}
		
			else if(pw1 == null || pw1=='' ){
				$('#pass1Comment').css("display", "inline");
				$('#passComment').css("display", "none");
				$('#pass2Comment').css("display", "none");
				document.getElementById('pass1Comment').innerHTML = "새로운 비밀번호를 입력하세요.";
				document.getElementById('pass1Comment').style.color = "red";
				$("#pass1Commnet").val('');
				return;
			}
		
			else if(pw2 == null || pw2== '' ){
				$('#passComment2').css("display", "inline");
				$('#pass1Comment').css("display", "none");
				$('#pass2Comment').css("display", "none");
				document.getElementById('pass2Comment').innerHTML = "비밀번호 확인을 입력하세요.";
				document.getElementById('pass2Comment').style.color = "red";
				$("#pass2Commnet").val('');
				return;
			}
		

			else if(pw1 != pw2){
				$('#pass2Comment').css("display", "inline");
				$('#passComment').css("display", "none");
				$('#pass1Comment').css("display", "none");
				document.getElementById('pass2Comment').innerHTML = "비밀번호가 일치하지 않습니다.";
				document.getElementById('pass2Comment').style.color = "red";
				$("#pass1Commnet").val('');
				$("#pass2Commnet").val('');
				return;
			}
		}
	}
	


</script>


