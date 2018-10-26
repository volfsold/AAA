package zaksim.admin.service;

import java.util.List;

import zaksim.dto.Report;
import zaksim.dto.ZakSimMember;
import zaksim.util.Paging;

public interface MemberService {
	
	// 총 회원수 가져오기
	public int getTotalCount(String searchId, String category);

	// 리스트 받아오기
	public List<ZakSimMember> viewList(Paging paging, String category, String searchId);
	
	// 신고 상세 보기
	public List<Report> viewReport(ZakSimMember member);
	
	// 계정 정지하기
	public void suspend(ZakSimMember member);


}
