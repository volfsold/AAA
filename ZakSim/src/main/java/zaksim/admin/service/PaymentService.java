package zaksim.admin.service;

import java.util.List;

import zaksim.dto.Payment;
import zaksim.dto.Refund;
import zaksim.util.Paging;

public interface PaymentService {
	
	// 총 결제 내역 갯수 가져오기
	public int getAdminTotalCount(String searchId, String category);
	
	// 리스트 받아오기
	public List<Refund> viewAdminList(Paging paging, String category, String searchId);
	
	// 전액 환불 처리
	public void refund(List<Payment> pList);
	
	// 부분 환불 처리
	public void partialRefund(List<Payment> pList);	

}
