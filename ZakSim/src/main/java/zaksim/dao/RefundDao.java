package zaksim.dao;

import zaksim.dto.Payment;

public interface RefundDao {
	
	// 환불 날짜 적용
	public void refund(Payment payment);
}
