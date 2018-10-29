<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../main/header.jsp" %>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/css/customerCenter/qna_write.css?ver=1">

<!-- body -->
	<div class="py-3">
		<div class="container">
			<div class="row">
				<label class="col-md-1"> </label>
				<div class="col-md-11">
					<h1>Q&amp;A</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="py-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<form id="c_form-h">
						<div class="form-group row">
							<label class="col-md-1"> </label>
							<div class="col-md-8">
								<input type="email" class="form-control" id="qnaTitle"
									placeholder="제목을 입력해주세요.">
							</div>
							<div class="input-group col-md-2 mt-1">
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon fa fa-check"></i></span>비밀글
									</label>
								</div>
							</div>
							<label class="col-md-1"> </label>
						</div>
						<div class="form-group row">
							<label class="col-md-1"> </label>
							<div class="col-md-10">
								<textarea class="form-control" id="qnaContent"
									placeholder="내용을 입력해주세요"
									style="margin-top: 0px; margin-bottom: 0px; height: 176px;"></textarea>
							</div>
							<label class="col-md-1"> </label>
						</div>
						<div class="form-group row pb-4 border-bottom">
							<label class="col-md-1"> </label>
							<div class="form-group col-md-10">
								<input id="fileInput" type="file"
									data-class-button="btn btn-default"
									data-class-input="form-control" data-button-text=""
									data-icon-name="fa fa-upload" class="form-control"
									tabindex="-1"
									style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
								<div class="bootstrap-filestyle input-group">
									<input type="text" id="userfile" class="form-control"
										name="userfile" disabled> <span
										class="group-span-filestyle input-group-btn" tabindex="0">
										<label for="fileInput" class="btn btn-default"> <span
											class="glyphicon fa fa-upload"></span>
									</label>
									</span>
								</div>
							</div>
							<label class="col-md-1"> </label>
						</div>
						<button type="button" class="btn btn-info font-bold">이전으로</button>
						<button type="button" class="btn font-bold qnaBtnColor">등록하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
<%@ include file="../../main/footer.jsp" %>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("#userfile").val('파일 첨부');
				$("#fileInput").on(
						'change',
						function() { // 값이 변경되면
							if (window.FileReader) { // modern browser
								var filename = $(this)[0].files[0].name;
							} else { // old IE
								var filename = $(this).val().split('/').pop()
										.split('\\').pop(); // 파일명만 추출
							}
							// 추출한 파일명 삽입
							$("#userfile").val(filename);
						});
			});
</script>