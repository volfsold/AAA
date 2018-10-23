package zaksim.admin.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zaksim.admin.service.PaymentService;
import zaksim.dto.Challenge;
import zaksim.dto.Report;
import zaksim.dto.ZakSimMember;
import zaksim.util.Paging;

@Controller
@RequestMapping(value="/zaksim/admin")
public class PaymentController {
	
private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Autowired PaymentService paymentService;
	Paging paging;
	
	
	// 화면 연결
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public void paymentForm() {
		// 페이징 객체 생성
		// 서비스.리스트 받아오기();
		// 모델에 값 넣기
	}
	
	// 카테고리 변경
	@RequestMapping(value="/payment/changeCategory", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> changeCategory(int page, String category) {
		
		// 페이징 객체 생성
		// 서비스.리스트 받아오기();
		// 모델에 값 넣기
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}	
	
	// 리스트 출력 갯수 변경
	@RequestMapping(value="/payment/changeListNum", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> changeListNum(int page, int listNum) {
		
		// 페이징 객체 생성
		// 서비스.리스트 받아오기();
		// 모델에 값 넣기
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}
	
	// 전액 환불 처리
	@RequestMapping(value="/payment/refund", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> refund(Challenge challenge) {
		
		// 페이징 객체 생성
		// 서비스.전액 환불 처리();
		// 서비스.리스트 받아오기();
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}
	
	// 부분 환불 처리
	@RequestMapping(value="/payment/partialRefund", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> partialRefund(Challenge challenge) {
		
		// 페이징 객체 생성
		// 서비스.부분 환불 처리();
		// 서비스.리스트 정보 받아오기();
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}

}
