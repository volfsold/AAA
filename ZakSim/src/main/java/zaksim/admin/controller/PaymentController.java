package zaksim.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zaksim.admin.service.PaymentService;
import zaksim.dto.Challenge;
import zaksim.dto.Payment;
import zaksim.dto.Refund;
import zaksim.util.Paging;

@Controller
@RequestMapping(value="/zaksim/admin")
public class PaymentController {
	
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Autowired PaymentService paymentService;
	
	
	// 화면 연결
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public void paymentForm(Model model) {
		
		int totalCount = paymentService.getAdminTotalCount("", "전체 결제 내역");
		Paging paging = new Paging(totalCount, 1, 10);
		
		System.out.println(totalCount);
		List<Refund> rList = paymentService.viewAdminList(paging, "전체 결제 내역", "");
		
//		System.out.println(pList);
		
		model.addAttribute("rList", rList);
		model.addAttribute("paging", paging);
	}
	
	// 화면 연결 (아이디 검색, 카테고리 변경, 리스트 갯수 변경, 페이지 변경)
	@RequestMapping(value = "/paymentTable", method = RequestMethod.GET)
	public void changePaymentTable(Model model, @RequestParam(defaultValue="1", required=false)int curPage,
					@RequestParam(defaultValue="10", required=false)String pageCount,
					@RequestParam(defaultValue="", required=false)String searchId,
					@RequestParam(defaultValue="전체 결제 내역", required=false)String category) {
		
		int totalCount = paymentService.getAdminTotalCount(searchId, category);
		Paging paging = new Paging(totalCount, curPage, Integer.parseInt(pageCount));
		
		List<Refund> rList = paymentService.viewAdminList(paging, category, searchId);
		
		model.addAttribute("rList", rList);
		model.addAttribute("paging", paging);
	}
	
	// 전액 환불 처리
	@RequestMapping(value="/payment/refund", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> refund(@RequestParam(value="refundImpUid")List<String> impUid) {
		
		HashMap<String, String> map = new HashMap<>();
		
		List<Payment> pList = new ArrayList<>();
		
		if(impUid.get(0).equals("refund")) {
			
			for(int i=1; i<impUid.size(); i++) {
				Payment p = new Payment();
				p.setImpUid(impUid.get(i));
				pList.add(p);
			}
			
			paymentService.refund(pList);
		
		} else if(impUid.get(0).equals("partial")) {
			
			for(int i=1; i<impUid.size(); i++) {
				Payment p = new Payment();
				p.setImpUid(impUid.get(i));
				pList.add(p);
			}
			
			paymentService.partialRefund(pList);
		}
		
		map.put("result", "true");
		
		return map;
	}

}
