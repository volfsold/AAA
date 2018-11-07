package zaksim.admin.service;

import java.util.List;

import zaksim.dto.MStatistics;
import zaksim.dto.MemberCount;
import zaksim.dto.Visits;

public interface MStatisticsService {
	
	// 가입 인원 가져오기
	public int viewJoinNum(String startDate, String endDate);
	
	// 회원수 정보 가져오기
	public List<MemberCount> viewMemberNum(String startDate, String endDate);
	
	// 방문수 정보 가져오기
	public List<Visits> viewVisitsNum(String startDate, String endDate);

	// 상세 리스트 가져오기
	public List<MStatistics> viewDetailList(String startDate, String endDate);

}
