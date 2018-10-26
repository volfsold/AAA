package zaksim.admin.controller;

import java.util.Date;
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

import zaksim.admin.service.MemberService;
import zaksim.dto.Report;
import zaksim.dto.ZakSimMember;
import zaksim.util.Paging;

@Controller
@RequestMapping(value="/zaksim/admin")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired MemberService memberService;
//	Paging paging;
	
	
	// 화면 연결
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public void memberForm(Model model) {
		
		int totalCount = memberService.getTotalCount("", "전체 회원");
		Paging paging = new Paging(totalCount, 1, 10);
		
		List<ZakSimMember> mList = memberService.viewList(paging, "전체 회원", "");
		
		model.addAttribute("mList", mList);
		model.addAttribute("paging", paging);
	}
	
	// 화면 연결
	@RequestMapping(value = "/memberTable", method = RequestMethod.GET)
	public void changeMemberTable(Model model, @RequestParam(defaultValue="1", required=false)int curPage,
					@RequestParam(defaultValue="10", required=false)String pageCount,
					@RequestParam(defaultValue="", required=false)String searchId,
					@RequestParam(defaultValue="전체 회원", required=false)String category) {
		
		int totalCount = memberService.getTotalCount(searchId, category);
		Paging paging = new Paging(totalCount, curPage, Integer.parseInt(pageCount));
		
		List<ZakSimMember> mList = memberService.viewList(paging, category, searchId);
		
		model.addAttribute("mList", mList);
		model.addAttribute("paging", paging);
	}
	
	// 신고 상세 모달
	@RequestMapping(value="/reportDetail", method = RequestMethod.GET, produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> reportDetail(int idx) {
		
		// 신고 상세 가져오기
		HashMap<String, Object> map = new HashMap<>();
		
		// test data
		Report rList = new Report();
		rList.setBoardIdx(0);
		rList.setCategory("욕설");
		rList.setCommentIdx(12);
		rList.setIdx(1);
		rList.setMemberIdx(idx);
		rList.setReason("갑자기 욕해요ㅠㅠ");
		rList.setReportDate(new Date());
		rList.setReporterIdx(2);
		
		
		map.put("rList", rList);
		
		return map;
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
