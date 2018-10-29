package zaksim.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.AdminPaymentDao;
import zaksim.dao.PaymentDao;
import zaksim.dto.Payment;
import zaksim.dto.Refund;
import zaksim.util.Paging;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired PaymentDao paymentDao;
	@Autowired AdminPaymentDao adminPaymentDao;
	
	
	@Override
	public int getAdminTotalCount(String searchId, String category) {
		Map<String, Object> param = new HashMap<>();
		param.put("searchId", searchId);
		param.put("category", category);
		return adminPaymentDao.selectTotalPaymentCount(param);
	}

	@Override
	public List<Refund> viewAdminList(Paging paging, String category, String searchId) {
		// TODO Auto-generated method stub
		Map<String, Object> param = new HashMap<>();
		param.put("paging", paging);
		param.put("category", category);
		param.put("searchId", searchId);
		
		return adminPaymentDao.selectAdminPaymentList(param);
	}

	@Override
	public void refund(List<Payment> pList) {
		// TODO Auto-generated method stub
		// forEach(pList)
		Payment payment = new Payment();
		paymentDao.updateStatusToRefund(payment);
		
	}

	@Override
	public void partialRefund(List<Payment> pList) {
		// TODO Auto-generated method stub
		// forEach(pList)
		Payment payment = new Payment();
		paymentDao.updateStatusToPartialRefund(payment);
	}

}
