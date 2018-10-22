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

import zaksim.admin.service.MemberService;
import zaksim.dto.Report;
import zaksim.dto.ZakSimMember;
import zaksim.util.Paging;

@Controller
@RequestMapping(value="/zaksim/admin")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired MemberService memberService;
	Paging paging;
	
	
	// 화면 연결
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public void memberForm(/*Model model, int page*/) {
		// 페이징 객체 생성
		// memberService.리스트 받아오기();
		// 모델에 값 넣기
	}
	
	// 카테고리 변경
	@RequestMapping(value="/changeCategory", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> changeCategory(int page, String category) {
		
		// 페이징 객체 생성
		// 서비스.리스트 받아오기();
		// 모델에 값 넣기
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}	
	
	// 리스트 출력 갯수 변경
	@RequestMapping(value="/changeListNum", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> changeListNum(int page, int listNum) {
		
		// 페이징 객체 생성
		// 서비스.리스트 받아오기();
		// 모델에 값 넣기
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}
	
	// 신고 상세 보기
	@RequestMapping(value="/viewReport", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> viewReport(ZakSimMember member, Report report) {
		
		// 서비스.신고 리스트 가져오기();
		// 모델에 값 넣기
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}
	
	// 계정 정지하기
	@RequestMapping(value="/suspend", method = RequestMethod.POST, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, String> suspend(ZakSimMember member) {
		
		// 페이징 객체 생성
		// 서비스.계정 정지();
		// 서비스.리스트 정보 받아오기();
		// 모델에 값 넣기
		
		HashMap<String, String> map = new HashMap<>();
		
		return map;
	}
}
