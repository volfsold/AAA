package zaksim.admin.service;

import java.util.List;

import zaksim.dto.MemberCount;

public interface MStatisticsService {
	
	// 가입 인원 가져오기
	public int viewJoinNum(String period);
	
	// 가입 인원 가져오기
	public int viewJoinNum(String startDate, String endDate);
	
	// 회원수 정보 가져오기
	public List<MemberCount> viewMemberNum(String period);
	
	// 회원수 정보 가져오기
	public List<MemberCount> viewMemberNum(String startDate, String endDate);
	
	// 방문수 정보 가져오기
	public List<Integer> viewVisitsNum(String period);

}
