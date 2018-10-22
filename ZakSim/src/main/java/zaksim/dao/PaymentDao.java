package zaksim.dao;

import zaksim.dto.Payment;

public interface PaymentDao {

	// 결제 관리 리스트
	void selectAdminPaymentList(String category, int listNum);

	// 전체 환불 처리
	void updateStatusToRefund(Payment payment);

	// 부분 환불 처리
	void updateStatusToPartialRefund(Payment payment);

}
