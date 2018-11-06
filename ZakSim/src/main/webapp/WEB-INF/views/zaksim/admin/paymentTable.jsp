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
								<th><input type="checkbox" name="checkAll"/></th>
								<th style="display: none;">impUid</th>
								<th>No.</th>
								<th>회원 유형</th>
								<th>아이디</th>
								<th>닉네임</th>
								<th>이름</th>
								<th style="display: none;">도전 인덱스</th>
								<th>도전 타이틀</th>
								<th>결제 방법</th>
								<th>결제 금액</th>
								<th>환불 사유</th>
<!-- 								<th>인증률</th> -->
								<th>결제 상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${ rList }" var="refund">
							<tr>
								<th scope="row">
									<input type="checkbox" name="checkOne"/>
								</th>
								<td style="display: none;">${refund.impUid}</td>
								<td>${refund.rRnum}</td>
								<td>${refund.payment.zakSimMember.memberType}</td>
								<td>${refund.payment.zakSimMember.id}</td>
								<td>${refund.payment.zakSimMember.nick}</td>
								<td>${refund.payment.zakSimMember.name}</td>
								<td style="display: none;">${refund.payment.challengeIdx}</td>
								<td>${refund.payment.challenge.title}</td>
								<td>${refund.payment.paymentOption}</td>
								<td>${refund.payment.price}</td>
								<c:if test="${empty refund.refundOption}">
									<td>-</td>
								</c:if>
								<c:if test="${refund.refundOption eq 'success'}">
									<td>도전 성공</td>
								</c:if>
								<c:if test="${refund.refundOption eq 'fail'}">
									<td>도전 실패/도전 중단</td>
								</c:if>
								<c:if test="${refund.refundOption eq 'stop'}">
									<td>도전 철회</td>
								</c:if>
<%-- 								<td>${refund.payment.certificationRate}</td> --%>
								<c:if test="${refund.payment.status eq 'success'}">
									<td>결제 완료</td>
								</c:if>
								<c:if test="${refund.payment.status eq 'partial'}">
									<td>부분 환불 완료</td>
								</c:if>
								<c:if test="${refund.payment.status eq 'refund'}">
									<td>전체 환불 완료</td>
								</c:if>
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
