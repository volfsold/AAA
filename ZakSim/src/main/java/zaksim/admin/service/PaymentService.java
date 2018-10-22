package zaksim.admin.service;

import java.util.List;

import zaksim.dto.Payment;
import zaksim.util.Paging;

public interface PaymentService {
	
	// 리스트 받아오기
	public List<Payment> viewList(Paging paging, String category, int listNum);
	
	// 전액 환불 처리
	public void refund(List<Payment> pList);
	
	// 부분 환불 처리
	public void partialRefund(List<Payment> pList);	

}
