<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


		<div class="col-sm-11" style="margin-top: 50px; margin-right: 50px;">
			<strong style="font-size: 150%">참여하고 있는 모임</strong>
			<button type="button" class="btn btn-outline-info"
				style="float: right; color: red; border-color: red; margin-left: 30px;"
				data-toggle="modal" data-target="#updateCommunityModal">수정
				하기</button>
			<button type="button" class="btn btn-outline-info"
				style="float: right; color: gray; border-color: gray;">
				<a href="joinedGroup.html">모임 목록</a>
			</button>

			<div style="margin-top: 100px;">

				<div style="margin-left: 50px; margin-right: 50px;">
					<img src="https://picsum.photos/1200/350/?image=60" id="photo">
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
						id="communityIntroduceComment">있는 평화스러운 길지 봄바람이다. 목숨을 거선의
						풍부하게 인생을 이 그들은 끓는 피다. 그것은 가슴에 어디 것이다. 주며, 이상을 길을 풀이 자신과 원질이 그들은
						예수는 모래뿐일 있으랴? 이는 주는 부패를 그들을 이상은 창공에 인간의 이것이야말로 말이다. 할지라도 끓는 싶이 그것은
						구할 구하지 소금이라 피고, 인생에 쓸쓸하랴? 때에, 충분히 가지에 것은 인생에 보배를 온갖 있는가? 오아이스도 것은
						가진 석가는 곳이 아름다우냐? 지혜는 별과 일월과 이상 같이, 찾아 이것이다.</div>

					<div
						style="margin-left: 50px; margin-right: 50px; margin-bottom: 50px; display: none;"
						id="communityJoinPeopleComment">
						<span style="font-size: 150%;">n명 </span> <span
							style="font-size: 150%;">/ 최대 m명</span> &nbsp;&nbsp;&nbsp;
						<button type="button" class="btn btn-outline-secondary">참여자
							보기</button>
					</div>

					<div
						style="margin-left: 50px; margin-right: 50px; margin-bottom: 50px; display: none;"
						id="communityKeywordComment">
						<span style="font-size: 150%;">#키워드1 </span> <span
							style="font-size: 150%;">, #키워드2</span>
					</div>


					<div
						style="margin-left: 50px; margin-right: 50px; margin-bottom: 50px; display: none;"
						id="communityAchievementComment">

						<button type="button" class="btn btn-outline-danger">
							<a href=""></a>자세히 보기
						</button>
						<br>
						<br>
						<div class="progress">
							<div class="progress-bar" role="progressbar" style="width: 25%;"
								aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
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

							할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 뿐이다
							그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는
							얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어
							보내는 것은 청춘의 끓는 피다 청춘의 피 <br>
							<br> <a href="">더 보기?</a>

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
								<br>
								<br>

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
															data-toggle="modal" data-target="#reportModal"> 신고
															하기 </span> <span style="color: lightgray; cursor: pointer;">
															삭제 하기 </span>
													</div>
													<div class="mx-5">
														世솅〮宗조ᇰ御ᅌᅥᆼ〮製졩〮訓훈〮民민正져ᇰ〮音ᅙᅳᆷ 나랏〮말〯ᄊᆞ미〮 中듀ᇰ國귁〮에〮달아〮
														文문字ᄍᆞᆼ〮와〮로〮서르ᄉᆞᄆᆞᆺ디〮아니〮ᄒᆞᆯᄊᆡ〮
														이〮런젼ᄎᆞ〮로〮어린〮百ᄇᆡᆨ〮姓셔ᇰ〮이〮니르고〮져〮호ᇙ〮배〮이셔〮도〮
														ᄆᆞᄎᆞᆷ〮내〯제ᄠᅳ〮들〮시러〮펴디〮몯〯ᄒᆞᇙ노〮미〮하니〮라〮
														내〮이〮ᄅᆞᆯ〮為윙〮ᄒᆞ〮야〮어〯엿비〮너겨〮 새〮로〮스〮믈〮여듧〮字ᄍᆞᆼ〮ᄅᆞᆯ〮ᄆᆡᇰᄀᆞ〮노니〮
														사〯ᄅᆞᆷ마〯다〮ᄒᆡ〯ᅇᅧ〮수〯ᄫᅵ〮니겨〮날〮로〮ᄡᅮ〮메〮
														便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮 <br>
														<br> <a href="">더 보기</a> <br>
														<br>
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
													<br>
													<br>

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
														便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮 <br>
														<br> <a href="">더 보기</a> <br>
														<br>
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
														便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮 <br>
														<br> <a href="">더 보기</a> <br>
														<br>
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
													ᄆᆞᄎᆞᆷ〮내〯제ᄠᅳ〮들〮시러〮펴디〮몯〯ᄒᆞᇙ노〮미〮하니〮라〮 내〮이〮ᄅᆞᆯ〮為윙〮ᄒᆞ〮야〮어〯엿비〮너겨〮
													새〮로〮스〮믈〮여듧〮字ᄍᆞᆼ〮ᄅᆞᆯ〮ᄆᆡᇰᄀᆞ〮노니〮
													사〯ᄅᆞᆷ마〯다〮ᄒᆡ〯ᅇᅧ〮수〯ᄫᅵ〮니겨〮날〮로〮ᄡᅮ〮메〮 便뼌安ᅙᅡᆫ킈〮ᄒᆞ고〮져〮ᄒᆞᇙᄯᆞᄅᆞ미〮니라〮
													<br>
													<br> <a href="">더 보기</a> <br>
													<br>
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
												<br>
												<br>

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

							할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 뿐이다
							그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는
							얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어
							보내는 것은 청춘의 끓는 피다 청춘의 피 <br>
							<br> <a href="">더 보기?</a>

						</div>
					</div>
				</div>


			</div>
		</div>

		<div class="col" style="margin-bottom: 300px;"></div>
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
<div class="modal fade bd-example-modal-lg" id="updateCommunityModal"
	tabindex="-1" role="dialog" aria-labelledby="updateCommunityModalLabel"
	aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
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
									<img src="/resources/image/community/sample.png" alt="..."
										class="img-thumbnail"
										style="width: 200px; height: 150px; margin-bottom: 10px;"><br>

									<button type="file" class="btn btn-primary"
										style="align-content: center; margin-left: 40px;">

										이미지 등록</button>
								</div>
								<div style="padding-bottom: 0px; margin-left: 50px;">
									<span style="font-size: 20px;"><strong>모임명 : </strong></span> <input
										class="form-control" type="text" style="height: 30px;"
										placeholder="모임명 가지오기"> <br>
									<br> <span style="font-size: 20px;"><strong>최대
											모임 인원 : </strong></span> <input class="form-control" type="text"
										style="width: 60px; height: 30px;" placeholder="100"><strong>명</strong>
									<br> <span
										style="margin-left: 50px; font-size: 15px; color: gray;">※
										최대 100명까지 가능</span>

								</div>

							</div>

							<div style="margin-top: 30px;">
								<span style="margin-left: 50px; margin-right: 102px;"><strong>공개</strong></span>
								<input type="radio" name="screct"> <label> 공개</label> <input
									type="radio" style="margin-left: 100px;" name="screct">
								<label> 비공개</label> <br>
								<br> <span style="margin-left: 50px; margin-right: 17px;"><strong>
										커뮤니티장 위임 </strong></span> <select class="custom-select mb-2 mr-sm-2 mb-sm-0"
									style="height: 40px;">
									<option value="1">닉네임1</option>
									<option value="2">닉네임2</option>
									<option value="3">닉네임3</option>
								</select> <br>
								<br> <span style="margin-left: 50px; margin-right: 70px;"><strong>카테고리</strong></span>
								<select class="custom-select mb-2 mr-sm-2 mb-sm-0"
									style="height: 40px;">
									<option value="1">카테고리1</option>
									<option value="2">카테고리2</option>
									<option value="3">카테고리3</option>
								</select> <br>
								<br>
								<div class="form-inline">
									<span style="margin-left: 50px; margin-right: 90px;"><strong>키워드</strong></span>

									<input type="text" class="form-control" style="width: 300px;"
										placeholder="ex) #키워드1, #키워드2">
								</div>
							</div>


						</div>
						<div class="col-sm-1"></div>
					</div>

				</div>
			</div>
			<div class="modal-footer" style="">
				<button type="button" class="btn btn-primary" id="update">
					<a href="">수정하기</a>
				</button>
				<button type="button" class="btn btn-danger" id="exit">삭제</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>




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

<!-- 위로가기 버튼 -->
<div class="top-button">
	<a href=""><img id="upImg" src="/resources/image/community/위로.png"></a>
</div>

</body>


<link rel="stylesheet" type="text/css" href="/css/community/button.css">
<link rel="stylesheet" type="text/css"
	href="/css/community/enrollCommunity.css">

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

<script type="text/javascript">
        $(document).ready(function() {

            // 공개 클릭 시 숨기기 / 비공개 클릭 시 보이기
            $("#screctRadio").hide();  
            
             $("#screctRadio1").click(function(){
                $("#screctRadio").fadeOut();  
            });
            
            $("#screctRadio2").click(function(){
                $("#screctRadio").fadeIn();  
            });
            
            
               	

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
        	  obj.style.height = (12+obj.scrollHeight)+"px";
        	}       
    </script>

<!-- footer include -->
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp"%>
