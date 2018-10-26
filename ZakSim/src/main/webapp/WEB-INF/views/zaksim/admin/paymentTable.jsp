<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<!-- table -->
			<div class="row" style="margin-top: 15px;">
				<div class="col-1"></div>
				<div class="col-10 table-responsive-xl">
					<table class="table table-hover text-center">
						<thead>
							<tr>
								<th><input type="checkbox"/></th>
								<th>No.</th>
								<th>회원 유형</th>
								<th>아이디</th>
								<th>닉네임</th>
								<th>이름</th>
								<th>도전 타이틀</th>
								<th>결제 방법</th>
								<th>환불 사유</th>
								<th>인증률</th>
								<th>결제 상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${ pList }" var="payment">
							<tr>
								<th scope="row">
									<input type="checkbox"/>
								</th>
								<td style="display: none;">${payment.impUid}</td>
								<td>10</td>
								<td>type</td>
								<td>id</td>
								<td>nick</td>
								<td>name</td>
								<td>도전10</td>
								<td>카드</td>
								<td>중도포기</td>
								<td>5%</td>
								<td>결제 완료</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="col-1"></div>
			</div>
			<!-- table -->
			
			<!-- pagination -->
			<%@include file="./paging/memberPaging.jsp" %>
          <!-- pagination -->

</body>
</html>