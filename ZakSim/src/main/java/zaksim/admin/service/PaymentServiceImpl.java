package zaksim.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.AdminPaymentDao;
import zaksim.dao.PaymentDao;
import zaksim.dao.RefundDao;
import zaksim.dto.Payment;
import zaksim.dto.Refund;
import zaksim.util.Paging;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired AdminPaymentDao adminPaymentDao;
	@Autowired RefundDao refundDao;
	
	
	@Override
	public int getAdminTotalCount(String searchId, String category) {
		Map<String, Object> param = new HashMap<>();
		param.put("searchId", searchId);
		param.put("category", category);
		return adminPaymentDao.selectTotalPaymentCount(param);
	}

	@Override
	public List<Refund> viewAdminList(Paging paging, String category, String searchId) {
		Map<String, Object> param = new HashMap<>();
		param.put("paging", paging);
		param.put("category", category);
		param.put("searchId", searchId);
		
		return adminPaymentDao.selectAdminPaymentList(param);
	}

	@Override
	public void refund(List<Payment> pList) {
		System.out.println("service - refund");
		for(Payment payment : pList) {
			System.out.println(payment);
			adminPaymentDao.updateStatusToRefund(payment);
			refundDao.refund(payment);
		}		
	}

	@Override
	public void partialRefund(List<Payment> pList) {
		for(Payment payment : pList) {
			adminPaymentDao.updateStatusToPartialRefund(payment);
			refundDao.refund(payment);
		}	
	}

}
