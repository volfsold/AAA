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
								<th style="display: none;">impUid</th>
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
						<c:forEach items="${ rList }" var="refund">
							<tr>
								<th scope="row">
									<input type="checkbox"/>
								</th>
								<td style="display: none;">${refund.impUid}</td>
								<td>${refund.rRnum}</td>
								<td>${refund.payment.zakSimMember.memberType}</td>
								<td>${refund.payment.zakSimMember.id}</td>
								<td>${refund.payment.zakSimMember.nick}</td>
								<td>${refund.payment.zakSimMember.name}</td>
								<td>${refund.payment.challenge.title}</td>
								<td>${refund.payment.paymentOption}</td>
								<td>${refund.refundOption}</td>
								<td>${refund.payment.certificationRate}</td>
								<td>${refund.payment.status}</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="col-1"></div>
			</div>
			<!-- table -->
			
			<!-- pagination -->
			<%@include file="./paging/paymentPaging.jsp" %>
          <!-- pagination -->

</body>
</html>