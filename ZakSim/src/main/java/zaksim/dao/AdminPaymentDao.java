package zaksim.dao;

import java.util.List;
import java.util.Map;

import zaksim.dto.Payment;
import zaksim.dto.Refund;

public interface AdminPaymentDao {

	// 관리자 총 결제 내역 갯수 가져오기
	int selectTotalPaymentCount(Map<String, Object> param);

	// 관리자 페이징 적용 결제 리스트
	List<Refund> selectAdminPaymentList(Map<String, Object> param);
	
	// 전체 환불 처리
	void updateStatusToRefund(Payment payment);

	// 부분 환불 처리
	void updateStatusToPartialRefund(Payment payment);

}
