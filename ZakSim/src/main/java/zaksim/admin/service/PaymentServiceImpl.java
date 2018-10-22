package zaksim.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.PaymentDao;
import zaksim.dto.Payment;
import zaksim.util.Paging;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired PaymentDao paymentDao;

	@Override
	public List<Payment> viewList(Paging paging, String category, int listNum) {
		// TODO Auto-generated method stub
		// 페이징 객체 생성
		paymentDao.selectAdminPaymentList(category, listNum);
		return null;
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
